<?php

defined('_JEXEC') or die('(@)|(@)');

class modHomework4Helper
{
	public static function getList(&$params)
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select('title');
		$query->from('#__content');
		$query->where('state = 1');
		
		$db->setQuery($query, 0, 25);
		
		$list = $db->loadObjectList();

		return $list;
	}
	
}
