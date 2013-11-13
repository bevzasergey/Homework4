<?php
/**
 * @version $Id: djmediatools.php 4 2012-12-06 13:48:32Z szymon $
 * @package DJ-MediaTools
 * @copyright Copyright (C) 2012 DJ-Extensions.com LTD, All rights reserved.
 * @license http://www.gnu.org/licenses GNU/GPL
 * @author url: http://dj-extensions.com
 * @author email contact@dj-extensions.com
 * @developer Szymon Woronowski - szymon.woronowski@design-joomla.eu
 *
 * DJ-MediaTools is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * DJ-MediaTools is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with DJ-MediaTools. If not, see <http://www.gnu.org/licenses/>.
 *
 */
 
defined('_JEXEC') or die('Restricted access');
defined('DS') or define('DS', DIRECTORY_SEPARATOR);

require_once(JPATH_COMPONENT.DS.'controller.php');
require_once(JPATH_COMPONENT.DS.'helpers'.DS.'route.php');
require_once(JPATH_COMPONENT_ADMINISTRATOR.DS.'lib'.DS.'image.php');

$controller = new DJMediatoolsController();
$controller->execute( JRequest::getCmd('task'));
$controller->redirect();


function djdebug($array, $type = 'message'){
	
	$app = JFactory::getApplication();	
	$app->enqueueMessage("<pre>".print_r($array,true)."</pre>", $type);
	
}

?>

