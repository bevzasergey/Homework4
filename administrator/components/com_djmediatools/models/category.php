<?php
/**
 * @version $Id: category.php 4 2012-12-06 13:48:32Z szymon $
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

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.modeladmin');

class DJMediatoolsModelCategory extends JModelAdmin
{
	public function getTable($type = 'Categories', $prefix = 'DJMediatoolsTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}
	
	public function getForm($data = array(), $loadData = true)
	{
		jimport('joomla.form.form');
		//JForm::addFieldPath('JPATH_ADMINISTRATOR/components/com_djcatalog2/models/fields');

		// Get the form.
		$form = $this->loadForm('com_djmediatools.category', 'category', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form)) {
			return false;
		}
		//echo "<pre style=\"float: left;\">".print_r($form, true)."</pre>";
		/* not implemented yet
		// Modify the form based on access controls.
		if (!$this->canEditState((object) $data)) {
			// Disable fields for display.
			$form->setFieldAttribute('ordering', 'disabled', 'true');
			$form->setFieldAttribute('published', 'disabled', 'true');

			// Disable fields while saving.
			// The controller has already verified this is a record you can edit.
			$form->setFieldAttribute('ordering', 'filter', 'unset');
			$form->setFieldAttribute('published', 'filter', 'unset');
		}*/

		return $form;
	}
	
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_djmediatools.edit.category.data', array());

		if (empty($data)) {
			$data = $this->getItem();

			// Prime some default values.
			if ($this->getState('category.id') == 0) {
				$app = JFactory::getApplication();
				$data->set('parent_id', JRequest::getInt('parent_id', $app->getUserState('com_djmediatools.categories.filter.category')));
			}
		}

		return $data;
	}
	
	protected function prepareTable($table)
	{
		jimport('joomla.filter.output');
		$date = JFactory::getDate();
		$user = JFactory::getUser();

		$table->title		= htmlspecialchars_decode($table->title, ENT_QUOTES);
		$table->alias		= JApplication::stringURLSafe($table->alias);

		if (empty($table->alias)) {
			$table->alias = JApplication::stringURLSafe($table->title);
		}

		if (empty($table->id)) {

			// Set ordering to the last item if not set
			if (empty($table->ordering)) {
				$db = JFactory::getDbo();
				$query = 'SELECT MAX(ordering) FROM #__djmediatools_categories';
				if($table->parent_id) $query.= ' WHERE parent_id='. (int) $table->parent_id;
				$db->setQuery($query);
				$max = $db->loadResult();
				
				$table->ordering = $max+1;
			}
		}
	}
	
	protected function getReorderConditions($table)
	{
		$condition = array();
		$condition[] = 'parent_id = '.(int) $table->parent_id;

		return $condition;
	}
	
	public function getPlgParams() {
		
		// Initialize variables.
		$config = array();
		
		$path = JPATH_SITE . DS . 'plugins' . DS . 'djmediatools';
		$folders = JFolder::folders($path);
		
		$data = $this->loadFormData();
		
		if (is_array($folders))
		{
			$lang = JFactory::getLanguage();
			foreach ($folders as $folder)
			{				
				$file = JPATH_SITE . DS . 'plugins' . DS . 'djmediatools' . DS . $folder . DS . $folder . '.xml';
				$form = JForm::getInstance('plgParams_'.$folder, $file, array('control' => 'jform'), true, 'config');
				
				$form->bind($data);
				
				$config[] = $form;
			}
		}
		
		return $config;
	}

	public function validate($form, $data, $group = null)
	{
		// Filter and validate the form data.
		//$data = $form->filter($data);
		$return = $form->validate($data, $group);

		// Check for an error.
		if ($return instanceof Exception)
		{
			$this->setError($return->getMessage());
			return false;
		}

		// Check the validation results.
		if ($return === false)
		{
			// Get the validation messages from the form.
			foreach ($form->getErrors() as $message)
			{
				$this->setError(JText::_($message));
			}

			return false;
		}

		return $data;
	}
}
