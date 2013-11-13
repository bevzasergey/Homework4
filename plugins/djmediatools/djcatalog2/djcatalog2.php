<?php
/**
 * @version 1.0
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

// no direct access
defined('_JEXEC') or die;

class plgDJMediatoolsDJCatalog2 extends JPlugin
{
	/**
	 * Plugin that returns the object list for DJ-Mediatools album
	 * 
	 * Each object must contain following properties (mandatory): title, description, image
	 * Optional properties: link, target (_blank or _self), alt (alt attribute for image)
	 * 
	 * @param	object	The album params
	 */
	public function onAlbumPrepare(&$source, &$params)
	{
		// Lets check the requirements
		$check = $this->onCheckRequirements($source);
		if (is_null($check) || is_string($check)) {
			return null;
		}
						
		$app = JFactory::getApplication();
		require_once(JPATH_BASE.DS.'components'.DS.'com_djcatalog2'.DS.'helpers'.DS.'route.php');
		
		$db = JFactory::getDBO();
		$db->setQuery($this->_buildQuery($params));
		$items = $db->loadObjectList();
		
		//$app->enqueueMessage("<pre>".print_r($items)."</pre>");
		
		foreach($items as $item){
			$slide = (object) array();
			
			$slide->image = 'media/djcatalog2/images/'.$item->item_image;
			
			$slide->title = $item->name;
			$slide->description = $item->intro_desc;
			
			$slide->link = JRoute::_(DJCatalogHelperRoute::getItemRoute($item->slug, $item->catslug));
			
			$slide->alt = $item->image_caption;
			
			$slides[] = $slide;
		}
		
		return $slides;		
	}
	
	/*
	 * Define any requirements here (such as specific extensions installed etc.)
	 * 
	 * Returns true if requirements are met or text message about not met requirement
	 */
	public function onCheckRequirements(&$source) {
		
		// Don't run this plugin when the source is different
		if ($source != $this->_name) {
			return null;
		}
		
		if(!JFile::exists(JPATH_ROOT.'/components/com_djcatalog2/djcatalog2.php')) return JText::_('PLG_DJMEDIATOOLS_DJCATALOG2_COMPONENT_DISABLED');
		jimport('joomla.application.component.helper');
		$com = JComponentHelper::getComponent('com_djcatalog2', true);
		if(!$com->enabled) return JText::_('PLG_DJMEDIATOOLS_DJCATALOG2_COMPONENT_DISABLED');
		
		return true;		
	}

	function _buildQuery(&$params)
	{
		$where		= $this->_buildContentWhere($params);
		$orderby	= $this->_buildContentOrderBy($params);

		$query = ' SELECT i.*, c.id AS ccategory_id, p.id AS pproducer_id, c.name AS category, p.name AS producer, p.published as publish_producer, img.fullname AS item_image, img.caption AS image_caption, '
			. ' CASE WHEN CHAR_LENGTH(i.alias) THEN CONCAT_WS(":", i.id, i.alias) ELSE i.id END as slug, '
			. ' CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(":", c.id, c.alias) ELSE c.id END as catslug, '
			. ' CASE WHEN CHAR_LENGTH(p.alias) THEN CONCAT_WS(":", p.id, p.alias) ELSE p.id END as prodslug '
			. ' FROM #__djc2_items AS i '
			. ' LEFT JOIN #__djc2_categories AS c ON c.id = i.cat_id '
			. ' LEFT JOIN #__djc2_producers AS p ON p.id = i.producer_id '
			. ' LEFT JOIN (select im1.fullname, im1.caption, im1.type, im1.item_id from #__djc2_images as im1, (select item_id, type, min(ordering) as lowest_order from #__djc2_images group by item_id, type) as im2 where im1.item_id = im2.item_id and im1.type=im2.type and im1.ordering = im2.lowest_order) AS img ON img.item_id = i.id AND img.type=\'item\' '
			. $where
			. $orderby
		;
		//echo str_replace('#_', 'jos', $query);
		return $query;
	}

	function _buildContentOrderBy(&$params)
	{
		$filter_order		= $params->get('plg_catalog2_orderby','i.ordering');
		$filter_order_Dir	= $params->get('plg_catalog2_orderdir','asc');
		$filter_featured	= $params->get('plg_catalog2_featured_first', 0);
		$limit = ($params->get('max_images'));
		if ($filter_order != 'i.ordering' && $filter_order != 'category' && $filter_order != 'producer' && $filter_order != 'i.price' && $filter_order != 'i.name' && $filter_order != 'rand()') {
			$filter_order = 'i.ordering';
		}
		if ($filter_order_Dir != 'asc' && $filter_order_Dir != 'desc') {
			$filter_order_Dir = 'asc';
		}
		
		if ($filter_featured) {
			$orderby 	= ' ORDER BY i.featured DESC, '.$filter_order.' '.$filter_order_Dir.' , i.ordering, c.ordering ';
		}
		else if ($filter_order == 'i.ordering'){
			$orderby 	= ' ORDER BY i.ordering '.$filter_order_Dir.', c.ordering '.$filter_order_Dir;
		} 
		else {
			$orderby 	= ' ORDER BY '.$filter_order.' '.$filter_order_Dir.' , i.ordering, c.ordering ';
		}
		if ($limit > 0) {
			$orderby .= ' LIMIT '.$limit;
		}
		return $orderby;
	}

	function _buildContentWhere(&$params)
	{
		$db					= JFactory::getDBO();
		
		$filter_catid		= $params->get('plg_catalog2_catid', array());
		$filter_featured	= $params->get('plg_catalog2_featured_only', 0);
		$where = array();
		if ($filter_featured > 0) {
			$where[] = 'i.featured = 1';
		}
		if (count($filter_catid)) {
			$db->setQuery('SELECT item_id 
						   FROM #__djc2_items_categories AS ic
						   INNER JOIN #__djc2_categories AS c ON c.id=ic.category_id 
						   WHERE category_id IN ('.implode(',',$filter_catid).') AND c.published = 1');
			$items = $db->loadResultArray();
			if (count ($items)) {
				$items = array_unique($items);
				$where[] = 'i.id IN ('.implode(',',$items).')';
			}
		}
		$where[] = 'i.published = 1';
		$where[] = 'c.published = 1';
		$where 		= ( count( $where ) ? ' WHERE '. implode( ' AND ', $where ) : '' );
		return $where;
	}
}
