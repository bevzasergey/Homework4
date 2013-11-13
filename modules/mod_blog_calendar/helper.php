<?php
/**
* @package		Blog Calendar
* @license		GNU/GPL
*/


// no direct access
defined('_JEXEC') or die('Restricted access');
jimport('joomla.application.component.model');

$com_path = JPATH_SITE.'/components/com_content/';
require_once $com_path.'router.php';
require_once $com_path.'helpers/route.php';
require_once dirname(__FILE__).'/calendarClass.php';

JModel::addIncludePath($com_path . '/models', 'ContentModel');

class modBlogCalendarHelper
{
	
function showCal(&$params,$year,$month,$day='',$ajax=0,$modid) 
	{
	$mainframe = JFactory::getApplication();
	
	$language= JFactory::getLanguage(); //get the current language
	$language->load( 'mod_blog_calendar', JPATH_SITE.DS.'modules'.DS.'mod_blog_calendar' );
	$article= $language->_('MOD_BLOG_CALENDAR_VALUEARTICLE');
	$articles= $language->_('MOD_BLOG_CALENDAR_VALUEARTICLES'); //this strings are used for the titles of the links
	$article2= $language->_('MOD_BLOG_CALENDAR_VALUEARTICLE2');
	
		
	$cal = new MyCalendar; //this object creates the html for the calendar
	$dayNamLen= $params->get('cal_length_days');
	
	$cal->dayNames = array(JString::substr(JText::_( 'SUN' ),0,$dayNamLen), JString::substr(JText::_( 'MON' ),0,$dayNamLen),
	JString::substr(JText::_( 'TUE' ),0,$dayNamLen), JString::substr(JText::_( 'WED' ),0,$dayNamLen),
	JString::substr(JText::_( 'THU' ),0,$dayNamLen),	JString::substr(JText::_( 'FRI' ),0,$dayNamLen),
	JString::substr(JText::_( 'SAT' ),0,$dayNamLen));
	
       $cal->monthNames = array(JText::_( 'JANUARY' ), JText::_( 'FEBRUARY' ), JText::_( 'MARCH' ), 
							JText::_( 'APRIL' ), JText::_( 'MAY' ), JText::_( 'JUNE' ),
                            JText::_( 'JULY' ), JText::_( 'AUGUST' ), JText::_( 'SEPTEMBER' ), 
							JText::_( 'OCTOBER' ), JText::_( 'NOVEMBER' ), JText::_( 'DECEMBER' ) );
							
	$cal->startDay = $params->get('cal_start_day'); //set the startday (this is the day that appears in the first column). Sunday = 0
							//it is loaded from the language ini because it may vary from one country to another, in Spain
							//for example, the startday is Monday (1)
	
	$ComBlogItemID = $params->get('associatedItemid');
	$menu = JSite::getMenu();
        $menuparams = $menu->getParams( $ComBlogItemID );
        $theparams = clone($menuparams);
        $theparams->merge( $params );
        $params = $theparams;
	$rows= $this->setTheQuery($params,$year,$month,$day,$ajax,0);
	
	//set the link for the month, this will be the link for the calendar header (ex. December 2007)
	if(is_array($rows) and count($rows)>0) {
	
	   $cal->monthLink=JRoute::_('index.php?option=com_blog_calendar' . '&year=' . $year .
					'&month=' . $month .'&Itemid='.$ComBlogItemID);
	} else {
	   $cal->monthLink="";
	} 
	$cal->modid= $modid;
	$cal->itemid = $ComBlogItemID;
	
		if(!isset($counter)) {
		  $counter = array();
	        }
	
		foreach ( $rows as $row )
		{
		 
		 $created= JFactory::getDate($row->created);
		 $createdYear=JHtml::_('date',$row->created,'Y');
		 $createdMonth=JHtml::_('date',$row->created,'m');;
		 $createdDay=JHtml::_('date',$row->created,'d');
		 $createdDate=$createdYear . $createdMonth . $createdDay; //this makes an unique variable for every day
		 if(!isset($counter[$createdDay]['total'])) {
		  $counter[$createdDay]['total'] = 0;
		 }
                 $counter[$createdDay]['total']++;
		 //linklist is the array that stores the link strings for each day
		 $cal->linklist[$createdDate]=	JRoute::_('index.php?option=com_blog_calendar&'.
								'&year=' . $createdYear . '&month=' . $createdMonth . '&day=' . 
								$createdDay . '&Itemid=' . $ComBlogItemID);
		 $cal->linklist[$createdDate].="\" title=\""; //the calendar class sets the links this way: <a href=" . THE LINK STRING . ">
											 //so, the easiest way to add a title to that link is by setting THE LINK STRING = the link" title="the title
											 //the result link would be <a href="the link" title="the title">
		 $cal->linklist[$createdDate].=$counter[$createdDay]['total'] . ' ';
		 $cal->linklist[$createdDate].= ($counter[$createdDay]['total'] > 1)? $articles : $article;
		 $cal->linklist[$createdDate].= ' ' . $article2;
		 //the above 3 lines output something like: 3 articles on this day. Or: 1 article on this day
		
		}
	return $cal->getMonthView($month,$year,$day,$params->get('dateformat_my','%B %Y'));

	}
	
function getDate_byId($id){
		
		$mainframe = JFactory::getApplication();
		
		$query=	' SELECT created' .
			' FROM #__content'.
			' WHERE id=\'' . $id . '\'';
		$db = JFactory::getDBO();
		$db->setQuery($query);
		$row= $db->loadObject();
		
		 $created= JFactory::getDate($row->created);
		 $createdYear=JHtml::_('date',$row->created,'Y');
		 $createdMonth=JHtml::_('date',$row->created,'m');;
		 $createdDay=JHtml::_('date',$row->created,'d');
		
		$createdDate = array($createdYear,$createdMonth,$createdDay);
		
		return $createdDate;
	}
	
	function showDropDown($params,$year,$month,$day,$ajax=0){
	    $ComBlogItemID = $params->get('associatedItemid');
	    $menu = JSite::getMenu();
            $menuparams = $menu->getParams( $ComBlogItemID );
            $theparams = clone($menuparams);
            $theparams->merge( $params );
            $params = $theparams;
	    $results= modBlogCalendarHelper::setTheQuery($params,$year,$month,$day,$ajax,1);
	    	
	    if(count($results)>0){
	    
	        if(!isset($articleCounter)){
		    	$articleCounter = array();
		}
		
		foreach($results as $key => $result){
		  $created=JFactory::getDate($results[$key]->created);
		  $createdYear= JHtml::_('date',$results[$key]->created,'Y');
		  $createdMonth= JHtml::_('date',$results[$key]->created,'m');

		  if(!isset($articleCounter[$createdYear]['total'])) {
		   $articleCounter[$createdYear]['total'] = 0;
		  }
		  if(!isset($articleCounter[$createdYear][$createdMonth]['total'])) {
		   $articleCounter[$createdYear][$createdMonth]['total'] = 0;
		  }
		  if($params->get('show_list_articles')){
		    $results[$key]->link=JRoute::_(ContentHelperRoute::getArticleRoute($results[$key]->slug, $results[$key]->catslug));
		  }
		
		  $results[$key]->year = $createdYear; $results[$key]->month = $createdMonth;
		
		  $createdYear==$year ? $articleCounter[$createdYear]['now']= true : $articleCounter[$createdYear]['now']= false;
		  $createdMonth==$month ? $articleCounter[$createdYear][$createdMonth]['now']= true : $articleCounter[$createdYear][$createdMonth]['now']= false;
		
		  $articleCounter[$createdYear][$createdMonth]['total']++;
		  $articleCounter[$createdYear]['total']++;
		}
	     }
	
	  return array($results,$articleCounter);
	}
	
	function setTheQuery($params,$year,$month,$day='',$ajax=0,$type=0){
	
		$mainframe = JFactory::getApplication();
                $config = JFactory::getConfig();
                $offset = $config->get('offset');
                $cal = new MyCalendar;
                
		// Access filter
                $juser = JFactory::getUser();
		$groups = implode(',', $juser->authorisedLevels());
                $access = !JComponentHelper::getParams('com_content')->get('show_noauth');
                
		$catids = $params->get('category_ids');
		$catCondition = '';
		//if there are specific categories selected, the variable $catCondition will be added to the query, to get only the articles of this categories
		if (count($catids)>0 && $catids[0]!='')
		{
		  $catCondition = ' AND (cc.id=' . implode( ' OR cc.id=', $catids ) . ')';
		}
		$db = JFactory::getDbo();
		$nullDate = $db->getNullDate();
		$now = JFactory::getDate("now",$offset)->toMySQL();
		$languagefilter = '';
		if(JFactory::getApplication()->getLanguageFilter()){
		   $languagefilter = ' AND a.language IN (\''.JFactory::getLanguage()->getTag().'\',\'*\')';
		}

		if($type == 0) {
                   $a = $cal->adjustDate($month, $year);
                   $month = $a[0];
                   $year = $a[1];
                   $date[0] = $year."-".$month."-01 00:00:00";
		   $month1 = $month + 1;
		   $a = $cal->adjustDate($month1, $year);
                   $month1 = $a[0];
                   $year = $a[1];
	           $date[1] = $year."-".$month1."-01 00:00:00";
                   
                   $date[0] = JFactory::getDate($date[0],$offset)->toMySQL();
		   $date[1] = JFactory::getDate($date[1],$offset)->toMySQL();
		   
                   $where = 'a.state = 1'
			. ' AND  a.created >= '. $db->Quote($date[0]) .' AND a.created < '. $db->Quote($date[1])
			. ' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )'
			. ' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )';
                   $query ='SELECT a.id,a.created'.
				' FROM #__content AS a'.
				' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
				' WHERE '. $where .
				$languagefilter.
				($access ? ' AND a.access IN ('.$groups.')' : ''). //select only the content that the current user is allowed to see
				' AND cc.published = 1' .
				($catCondition != '' ? $catCondition : '' ); //add the $catCondition if $catid exists	
		} else {
		   $where = 'a.state = 1'
			. ' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )'
			. ' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )';
		   $selecttitle = '';
		   if($params->get('show_list_articles')){
		     $selecttitle = ',a.title,';
		     $selecttitle .= ' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
				     ' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug';
		   }
		   $query ='SELECT a.id,a.created'.
		                $selecttitle.
				' FROM #__content AS a'.
				' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
				' WHERE '. $where .
				$languagefilter.
				($access ? ' AND a.access IN ('.$groups.')' : '').
				' AND cc.published = 1' .
				($catCondition != '' ? $catCondition : '' ). //add the $catCondition if $catid exists
				' ORDER BY created DESC'; //order by date created descending
		}
	    //set the query and load the results
	    $db->setQuery($query);
	    $results = $db->loadObjectList();
	    return $results;
	}
}


class MyCalendar extends Calendar
{

var $linklist; //this variable will be an array that contains all the links of the month

    function getDateLink($day, $month, $year) //this function is called from getMonthView(month,year) to get the link of the given day
    {										  //if this function returns nothing (""), then getMonthView wont put a link on that day
        
        $link = "";
		if(strlen($month)<2)
		$month = '0'.$month;
		if(strlen($day)<2)
		$day = '0'.$day;
	
		$date= $year . $month . $day;
		if(isset($this->linklist[$date])){
        $link=$this->linklist[$date];  //$this->linklist[$date] was set for every date in the foreach bucle at lines 50-83
		}
		
	 return $link;
    }

  

  //Return the URL to link to in order to display a calendar for a given month/year.
  //this function is called to get the links of the two arrows in the header.
    function getCalendarLink($month, $year)
    {
         $option = JRequest::getVar('option');
         $calendarLink = JRoute::_('index.php?option=com_blog_calendar&Itemid='.$this->itemid.'&month='.$month.'&year='.$year);

	return $calendarLink;
    }
}
?>