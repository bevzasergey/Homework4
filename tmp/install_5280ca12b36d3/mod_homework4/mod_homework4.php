<?php

defined('_JEXEC') or die('(@)|(@)');

require_once dirname(__FILE__).'/helper.php';

$list = modHomework4Helper::getList($params);

require JModuleHelper::getLayoutPath('mod_Homework4', $params->get('layout', 'default'));
