<?php
/**
* @version		1.5.8
* @package		BlogCalendar Reload
* @author		Juan Padial
* @license		GNU/GPL
*/


require_once (JPATH_COMPONENT.DS.'controller.php');
		
JToolBarHelper::title( JText::_( 'Blog Calendar' ) );
		
$task = JRequest::getCmd('task');


switch ($task)
{
	case 'edit_css' :
		BlogCalendarController::editCSS();
		break;

	case 'save_css'  :
		BlogCalendarController::saveCSS();
		break;
		
	case 'preview' :
		BlogCalendarController::previewCalendar();
		break;

	default :
		BlogCalendarController::viewGuide();
		break;
}


?>