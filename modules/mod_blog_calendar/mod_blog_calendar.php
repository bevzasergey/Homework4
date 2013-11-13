<?php
/**
* @package		Blog Calendar
* @author		Juan Padial, based on previous version of Justo Gonzalez
* @license		GNU/GPL
*/


	// no direct access

	// Include the syndicate functions only once
	require_once (dirname(__FILE__).DS.'helper.php');

	$ajax= JRequest::getInt('ajaxCalMod',0);
	$ajaxmod= JRequest::getInt('ajaxmodid',0);	
	$config = JFactory::getConfig();
	$offset = $config->get('offset');
	if(!$params->get('cal_start_date')){
	        $date = JFactory::getDate("now",$offset);
		$year	= JRequest::getInt('year',$date->toFormat('%Y'));    /*if there is no date requested, use the current month*/
		$month	= JRequest::getInt('month',$date->toFormat('%m'));
		$day	= $ajax? '' : JRequest::getInt('day',$date->toFormat('%d'));
	}
	else{
		
		$startDate= JFactory::getDate($params->get('cal_start_date'));		
		$year	= JRequest::getInt('year', $startDate->toFormat('%Y'));
		$month	= JRequest::getInt('month', $startDate->toFormat('%m'));
		$day	= $ajax? '' : JRequest::getInt('day', $startDate->toFormat('%d'));		
	}

	$helper = new modBlogCalendarHelper;
	$doc = JFactory::getDocument();
	$Itemid = (int)$params->get('associatedItemid',0);
	if($ajax) {
		$calendar = $helper->showCal($params,$year,$month,$day,$ajax,$module->id); 
	} else {
	       if($params->get('use_article_date','no') == 'yes') {
		if(JRequest::getVar('option')=='com_content' && JRequest::getVar('view')=='article') {
			list($year,$month,$day)=modBlogCalendarHelper::getDate_byId(JRequest::getInt('id'));
		 }
		}
                $livesite = JURI::base();
		if($params->get('show_what') == '1') {/*a list*/
		        $doc->addScript( $livesite.'modules/mod_blog_calendar/js/blog_list.js' );
			list($dropdown,$articleCounter) = $helper->showDropDown($params,$year,$month,$day,$ajax);	
		} else {
		        $doc->addScript( $livesite.'modules/mod_blog_calendar/js/blog_calendar.js' );
			$calendar = $helper->showCal($params,$year,$month,$day,$ajax,$module->id);
		}
		JHTML::_('behavior.framework');
		$doc->addScriptDeclaration('var month=' . $month . '; var year=' . $year . '; var calendar_baseurl=\''. JURI::base() . '\';');
                JHTML::stylesheet('style.css', JUri::base().'modules/mod_blog_calendar/tmpl/');
	}
	
require(JModuleHelper::getLayoutPath('mod_blog_calendar'));

?>