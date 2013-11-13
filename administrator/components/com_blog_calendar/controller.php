<?php
/**
* @version		1.05
* @package		BlogCalendar Reload
* @author		Juan Padial
* @license		GNU/GPL
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
jimport( 'joomla.application.component.controller' );	
class BlogCalendarController extends JController
{		
		function editCSS(){
		jimport('joomla.filesystem.path');
		$cname = JPATH_ROOT.DS.'modules'.DS.'mod_blog_calendar'.DS.'tmpl'.DS.'style.css';
                $c = fopen($cname,"r");
	        $content = fread($c, filesize($cname));
	        $content = htmlspecialchars($content);


		echo '
		<form action="index.php" method="post" name="adminForm">
					<table class="adminform">
		<tr>
			<th>
				Editing '.JPATH_ROOT.DS.'modules'.DS.'mod_blog_calendar'.DS.'tmpl'.DS.'style.css'.'
			</th>
		</tr>
		<tr>
			<td>
				<textarea style="width:80%;height:500px" cols="110" rows="25" name="filecontent" class="inputbox">'.
				$content.
				'</textarea>
			</td>
		</tr>
		</table>
		<input type=\'hidden\' name=\'task\' value=\'save_css\'>
		<input type=\'hidden\' name=\'option\' value=\'com_blog_calendar\'>
		<input type=\'submit\' value=\'Save\'>
		';
		}
		
		function saveCSS(){
		
		// Initialize some variables
		$filename		= JPATH_ROOT;
		$filename	   .= '\modules\mod_blog_calendar\tmpl\style.css';
		$filecontent	= JRequest::getVar('filecontent', '', 'post', 'string', JREQUEST_ALLOWRAW);
		$file = $filename;
		jimport('joomla.filesystem.file');
		$return = JFile::write($file, $filecontent);
		if($return) echo 'Success saving the file';		
		}
		
		function viewGuide(){
                echo '<div style="text-align:center;"><img src="/administrator/components/com_blog_calendar/blogcalendar.gif"></img></div>';
		echo '<ul><li><h2><a href=\'?option=com_blog_calendar&task=edit_css\'>Редактировать CSS</a></h2><br>';
		echo '</li><li>Поддержка <a href=\'http://joomlacalendar.ru//\'>joomlacalendar.ru</a></li>';
		echo '<br><br><br><br><center>Календарь для сайта Joomla, который отображает события сайта по датам.</center>';
		}

}
?>