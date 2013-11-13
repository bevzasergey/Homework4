<?php
/**
* @package		BlogCalendar Reload
* @author		Juan Padial
* @license		GNU/GPL
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
jimport( 'joomla.application.component.controller' );	
class BlogCalendarController extends JController
{		
	public function display($cachable = false, $urlparams = false)
	{
	        $cachable = true;
		JRequest::setVar('layout','blog');
		$safeurlparams = array('day'=>'STRING','month'=>'STRING','year'=>'STRING','limitstart'=>'INT','order'=>'STRING');
                parent::display($cachable, $safeurlparams);
		return $this;
	}
}
?>