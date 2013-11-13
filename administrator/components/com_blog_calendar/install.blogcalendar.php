<?php

defined( '_JEXEC' ) or die( 'Restricted access' );

// Get a new installer
$installer = new JInstaller();
$installer->install($this->parent->getPath('source').DS.'module');
?>