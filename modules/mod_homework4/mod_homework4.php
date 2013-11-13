<?php


defined('_JEXEC') or die('(@)|(@)');

require_once dirname(__FILE__).'/helper.php';

$list = modhomework4Helper::getList($params);

require JModuleHelper::getLayoutPath('mod_homework4', $params->get('layout', 'default'));
