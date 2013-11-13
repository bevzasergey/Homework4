<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
		$db 		= JFactory::getDBO();
		$installer	= new JInstaller();

		$db->setQuery("SELECT extension_id FROM #__extensions WHERE `element`='mod_blog_calendar' AND `type`='module' LIMIT 1");
		$modid = $db->loadResult();
		if ($modid) $installer->uninstall('module', $modid);	
?>