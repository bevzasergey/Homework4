<?php
/**
* @package		Blog Calendar Reload
* @author		Juan Padial
* @license		GNU/GPL
*
* modified from the view.html file of the Blog Calendar 1.2.2.1 component by Justo Gonzalez de Rivera
*/

jimport( 'joomla.application.component.view');

require_once (JPATH_SITE.DS.'components'.DS.'com_blog_calendar'.DS.'helpers'.DS.'icon.php');
JLoader::register('JHtmlString', JPATH_LIBRARIES.'/joomla/html/html/string.php');

class BlogCalendarViewBlogCalendar extends JView
{

	function display($tpl = null)
	{
		$mainframe = JFactory::getApplication('site');
		$model = $this->getModel();
		$year= JRequest::getVar('year', '');
		$month= JRequest::getVar('month', '');  //get the date requested
		$day= JRequest::getVar('day', '');
		
		
		$user = JFactory::getUser();
		
		$params = JComponentHelper::getParams('com_content');
		
		$db = JFactory::getDBO();
 
                 $menuitemid = JRequest::getInt( 'Itemid' );
                 if ($menuitemid)
                 {
                               $menu = JSite::getMenu();
                               $menuparams = $menu->getParams( $menuitemid );
                               $params->merge( $menuparams );
                 }

		if($params->get('date')) {//if there is a date set in the parameters, use that date for the list
		  list($year,$month,$day) = explode('-',$params->get('date'));
		}

		//call the function that returns the arrays of articles
		$this->assignRef('contents', $model->getContent($params,$year,$month,$day));
				
		$access   	        = new stdClass();
		$access->canEdit	= $user->authorise('core.edit', 'com_content');
		$access->canEditOwn	= $user->authorise('core.edit.own', 'com_content');
		$this->assignRef('params', $params);
		$this->assignRef('user', $user);
		$this->assignRef('access', $access);
		
		$this->pagination = $model->getPagination();
		$this->date= $this->contents['date'];
		
		unset($this->contents['date']); //unset this variable so that the numbers of elements in the array $this->contents
										//is exactly the number of articles found. This is needed because tmpl/default.php
										//works with a foreach bucle to output the article data
		parent::display($tpl);
	} 
	
	function aname($article,$params){
	
	         $user= JFactory::getUser($article->created_by);
	         $s = '';
	         if ($params->get('show_author_username')==1){
	              $s=$user->name;
	              }
	
	         if ($params->get('show_author_username')==2) {
	             $user= JFactory::getUser($article->created_by); 
	             $s=$user->username;
	             }
	             
                if ($params->get('cbintegration')) {
                    $database = JFactory::getDBO();
	            $query = "SELECT id FROM #__menu WHERE link='index.php?option=com_comprofiler' AND published='1'";
                    $database->SetQuery($query);
                    $menid = $database->loadResult();
	            $cburi='index.php?option=com_comprofiler&task=userProfile&user=';
	            $cburi.=$user->id;
	            $cburi.='&Itemid=';
	            $cburi.=$menid;
	            $s=JHtml::_('link',$cburi,$s,null);
	            }
	            
	            return JText::_('COM_BLOG_CALENDAR_WRITTEN_BY').' '.$s;
	}
       function gentruncatedcontent($article,$params){
		  $str=$article->text;
		  if($params->get('clean_xhtml')){
		    $str=strip_tags($article->text);
		    $str = str_replace('<p>', ' ', $str);
		    $str = str_replace('</p>', ' ', $str);
		    $str = strip_tags($str, '<a><em><strong>');
		   }

		  $str = trim($str);
                  $str = JHtmlString::truncate($str, $params->get('truncate_words'));
                  return $str;
      } 
   //this function, Not used at the moment!!!, gets the date (month) of last article published and return a link to com_blog_calendar to that month
   function getLastmontwithcontents($params)
	{
	 $mainframe = JFactory::getApplication();
	 $offset= $mainframe->getCfg('offset');	
	 
	 $menu = $mainframe->getMenu()->getActive();
	 $menuparams = $menu->params;
	 $catid = $menuparams->get('category_ids');
	 $catCondition = '';
         if(is_array($catid) && $catid[0] != '') {
	   JArrayHelper::toInteger( $catid );
	   $catCondition = 'AND (catid=' . implode( ' OR catid=', $catid ) . ')';
	 }
	 $db = JFactory::getDBO();
	 $query = "SELECT created FROM #__content WHERE state = 1 ".( $catCondition!='' ? $catCondition : '' )." AND language IN ('".JFactory::getLanguage()->getTag()."','*')"." ORDER BY created DESC LIMIT 1";
	 $db -> setQuery($query);
         $lastarticledate = $db->loadResult();
	 jimport('joomla.utilities.date');
	 $lastarticledate = JFactory::getDate($lastarticledate);
	 $lastmonth = $lastarticledate ->toFormat('%m');
	 $lastyear = $lastarticledate ->toFormat('%Y');

	 return JRoute::_('index.php?option=com_blog_calendar&year='.$lastyear.'&month='.$lastmonth.$modid.'&Itemid='.JRequest::getInt('Itemid'),false);
    }
}
?>