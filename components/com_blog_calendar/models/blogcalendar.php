<?php
/**
* @package		Blog Calendar Reload
* @author		Juan Padial
* @license		GNU/GPL
*
*/

// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die();

jimport('joomla.application.component.model');

$com_path = JPATH_SITE.'/components/com_content/';
require_once $com_path.'router.php';
require_once $com_path.'helpers/route.php';
require_once JPATH_SITE.'/modules/mod_blog_calendar/calendarClass.php';
jimport('joomla.application.component.model');

JModel::addIncludePath($com_path . '/models', 'ContentModel');

class BlogCalendarModelBlogCalendar extends JModel
{
        //this functions gets the articles on a given date
         var $daysInMonth = array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
function getContent($params,$year,$month,$day)
	{
		$mainframe = JFactory::getApplication();
                $config = JFactory::getConfig();
                $offset = $config->get('offset');
		$fullmonth = false;
                $fullyear = false;
                $full = false;
                
		if(!$day)
		$fullmonth=true;
		
		
		if($fullmonth && !$month)
		$fullyear=true;
		
		if($fullyear && !$year)
		$full=true;
		
		//ugly way to store date for $results['date']
		$themonth = $month;
		$theyear = $year;
		$theday = $day;
		
		$a = Calendar::adjustDate($month, $year);
                $month = $a[0];
                $year = $a[1];

		if($fullmonth){
		 $date[0] = $year."-".$month."-01 00:00:00";
		 $month1 = $month + 1;
		 $a = Calendar::adjustDate($month1, $year);
                 $month1 = $a[0];
                 $year = $a[1];
		 $date[1] = $year."-".$month1."-01 00:00:00";
		}
		else{
		 $date[0] = $year."-".$month."-".$day." 00:00:00";
                 $month = $a[0];
                 $year = $a[1];
                 $daysinMonth = Calendar::getDaysInMonth($month, $year);

                if($day>$daysinMonth){
                  $day = $daysinMonth;
                 }
		 $day1 = $day + 1;

		 if($day1>$daysinMonth && $month == 12){
		  $month = 01;
		  $year = $year + 1;
		  $day1 = 01;
		 }
		 if($day1>$daysinMonth && $month != 12) {
		   $day1 = 01;
		   $month = $month + 1;
		 }
		 $date[1] = $year."-".$month."-".$day1." 00:00:00";
		}
		
		if($fullyear){
		 $date[0] = $year."-01-01 00:00:00";
		 $year1 = $year + 1;
		 $a = Calendar::adjustDate($month, $year1);
                 $year1 = $a[1];
		 $date[1] = $year1."-01-01 00:00:00";
		}
		if($full){
		  $db = JFactory::getDbo();
		  $date[0] = $db->getNullDate();
		  $date[1] = JFactory::getDate("now",$offset)->toMySQL();
		} else {
                  $date[0] = JFactory::getDate($date[0],$offset)->toMySQL();
		  $date[1] = JFactory::getDate($date[1],$offset)->toMySQL();
		}

		$articles = JModel::getInstance('Articles', 'ContentModel', array('ignore_request' => true));
		// Set application parameters in model
		$app = JFactory::getApplication();
		$appParams = $app->getParams();
		$articles->setState('params', $appParams);
		$dateformat_dmy = $params->get('dateformat_dmy','%d %B %Y');
		$dateformat_my = $params->get('dateformat_my','%B %Y');
		$catids = $params->get('category_ids');

		$articles->setState('filter.date_filtering', 'range');
		$articles->setState('filter.start_date_range', $date[0]);
		$articles->setState('filter.end_date_range', $date[1]);
		$articles->setState('filter.published', 1);
		$articles->setState('filter.language',$app->getLanguageFilter());
		
		// Access filter
		$access = !JComponentHelper::getParams('com_content')->get('show_noauth');
		$authorised = JAccess::getAuthorisedViewLevels(JFactory::getUser()->get('id'));
		$articles->setState('filter.access', $access);

                 if (count($catids)>0 && $catids[0]!='')
		  {
		    $articles->setState('filter.category_id.include', true);
		    $articles->setState('filter.category_id', $catids);
		  }

		$articles->setState('list.start', (int) JRequest::getInt('limitstart',0));
		$articles->setState('list.limit', (int) $params->get('count', 10));
		$articles->setState('list.ordering', 'a.created');
		$articles->setState('list.direction', 'DESC');
		
		$results = $articles->getItems();
                $this->_pagination = $articles->getPagination();
    
		$daycount= $day; $monthcount= $month; $yearcount= $year;
		$i=1; $j=1;
		//this foreach adds a specific link to each result
		foreach($results as $key=>$result){
		  $createdDate= JFactory::getDate($results[$key]->created);		
		  $results[$key]->created_new_day=""; //empty if it's not a new day in the list
		  //this checks if the created day is a new day in the list	  
		  if(JHtml::_('date',$results[$key]->created,'d')!=$daycount || JHtml::_('date',$results[$key]->created,'m')!= $monthcount){
		    $results[$key]->created_new_day = JHtml::_('date',$results[$key]->created,JText::_('DATE_FORMAT_LC3'));
		   }
		  $daycount  = $createdDate->toFormat('%d');
		  $monthcount= $createdDate->toFormat('%m');
		  $yearcount = $createdDate->toFormat('%Y');

		  $results[$key]->slug = $results[$key]->id.":".$results[$key]->alias;
		  $results[$key]->catslug = $results[$key]->catid.":".$results[$key]->category_alias;
		  $results[$key]->text = $results[$key]->introtext;

		  $j++;
		  $i++;
		}
		
		$dateFormat=$dateformat_dmy;
		
		if($fullmonth){
		 $theday='15';
		 $dateFormat=$dateformat_my;
	        }
		if($fullyear){
		 $themonth='06';
		 $dateFormat='%Y';
		}
		
		if($full){
		 $theyear='1971';
		 $dateFormat="";
		}
		
		/*$results['date'] = JText::_($i>1? 'ARTICLES' : 'NOARTICLES') . ' '; //Articles published on OR No articles published on*/
		$results['date'] = JFactory::getDate($theyear."-".$themonth."-".$theday)->toFormat($dateFormat); //the date
		
		$full? $results['date']=JText::_('COM_BLOG_CALENDAR_ALLARTICLES') : ''; //if it's displaying all the articles */
		
		return $results;
}
        public function getPagination()
	{
		if (empty($this->_pagination)) {
			return null;
		}
		return $this->_pagination;
	}
}
?>