<?php
/**
 * @version $Id: djclassifieds.php 4 2012-12-06 13:48:32Z szymon $
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

class plgDJMediatoolsDJClassifieds extends JPlugin
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
		$menus = JSite::getMenu();
		$menu_item = $menus->getItems('link','index.php?option=com_djclassifieds&view=items&cid=0',1);
		$menu_item_blog = $menus->getItems('link','index.php?option=com_djclassifieds&view=items&layout=blog&cid=0',1);				
		$itemid = '';
		if($menu_item){
			$itemid='&Itemid='.$menu_item->id;
		} else if($menu_item_blog){
			$itemid='&Itemid='.$menu_item_blog->id;
		}
		
		$items = $this->_getItems($params);
		
		if($items) foreach($items as $item){
			$slide = (object) array();
			
			$images = explode(';',$item->image_url);
			if(count($images)){
				$slide->image = 'components/com_djclassifieds/images/'.$images[0];
			} else {
				continue;
			}
			
			$slide->title = $item->name;
			$slide->description = $item->intro_desc;
			
			$slide->link = JRoute::_('index.php?option=com_djclassifieds&view=item&cid='.$item->cat_id.'&id='.$item->id.$itemid);
			
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
		
		if(!JFile::exists(JPATH_ROOT.'/components/com_djclassifieds/djclassifieds.php')) return JText::_('PLG_DJMEDIATOOLS_DJCLASSIFIEDS_COMPONENT_DISABLED');
		jimport('joomla.application.component.helper');
		$com = JComponentHelper::getComponent('com_djclassifieds', true);
		if(!$com->enabled) return JText::_('PLG_DJMEDIATOOLS_DJCLASSIFIEDS_COMPONENT_DISABLED');
		
		return true;		
	}

	private function _getItems(&$params)
	{
		$date_time = JFactory::getDate();
		$date_exp = $date_time->toMySQL();
		$ord = "i.date_start DESC";
	
		if($params->get('plg_classifieds_items_ord')==1){
			$ord = "i.display DESC"; 
		}else if($params->get('plg_classifieds_items_ord')==2){
			$ord = "rand()";
		}	
		
		$promoted='';
		$prom_list = $params->get('plg_classifieds_only_promoted',array());
		if(count($prom_list)>0) {
			$promoted = " AND i.promotions REGEXP '(".implode('|', $prom_list).")' ";
		}
		
		$item_ids = $params->get('plg_classifieds_items_ids','');
		if($item_ids){
			$item_ids = ' AND i.id IN ('.$item_ids.')';
		}else{
			$item_ids = '';
		}
		
		$cid = $params->get('plg_classifieds_catid');
		
		if($cid) {
			require_once(JPATH_ADMINISTRATOR.DS.'components'.DS.'com_djclassifieds'.DS.'lib'.DS.'djcategory.php');
			$djcfcatlib = new DJClassifiedsCategory();
			$cats= $djcfcatlib->getSubCat($cid,1);				
			$catlist= $cid;			
			foreach($cats as $c){
				$catlist .= ','. $c->id;
			}
			$fallow_cat = ' AND i.cat_id IN ('.$catlist.') ';	
			
		}
		
		$limit = $params->get('max_images');
		
		$db= JFactory::getDBO();	
		$query = "SELECT i.*, c.name as c_name FROM #__djcf_items i , #__djcf_categories c "
				."WHERE i.date_exp > '".$date_exp."' AND i.published = 1 AND i.cat_id=c.id ".$promoted.$item_ids.$fallow_cat 
				."ORDER BY ".$ord." limit ".$limit;
		$db->setQuery($query);
		$items = $db->loadObjectList();
		
		return $items;
	}
}
