<?php
/**
 * @version $Id: djmediatools.php 5 2013-01-04 13:37:11Z szymon $
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

class plgButtonDJMediatools extends JPlugin
{
	
	public function __construct(& $subject, $config)
	{
		parent::__construct($subject, $config);
		$this->loadLanguage();
	}

	/**
	 * Display the button
	 *
	 * @return array A two element array of (imageName, textToInsert)
	 */
	public function onDisplay($name)
	{
		$app = JFactory::getApplication();
		if($app->isSite()) return;
		
		$doc = JFactory::getDocument();
		$template = $app->getTemplate();
		
		$js = "
		function jInsertDJMedia(catid) {			
			var tag = '<div>{djmedia ' + catid + '}</div>';
			jInsertEditorText(tag, '".$name."');
			SqueezeBox.close();
		}";
		$doc->addScriptDeclaration($js);
		$doc->addStyleDeclaration('.button2-left .djmedia a {background: url("'.JURI::base().'/components/com_djmediatools/assets/icon-16-djmediatools.png") 100% 50% no-repeat; margin: 0 4px 0 0}');
		
		$link = 'index.php?option=com_djmediatools&amp;view=categories&amp;layout=modal&amp;tmpl=component&amp;e_name='.$name;
		
		JHtml::_('behavior.modal');
		
		$button = new JObject;
		$button->set('modal', true);
		$button->set('link', $link);
		$button->set('text', JText::_('PLG_EDITORSXTD_DJMEDIATOOLS_BUTTON'));
		$button->set('name', 'pictures');
		$button->set('options', "{handler: 'iframe', size: {x: 650, y: 450}}");

		return $button;
	}
}
