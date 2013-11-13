<?php
/**
 * @version $Id: edit.php 6 2013-01-29 14:27:36Z szymon $
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

// No direct access.
defined('_JEXEC') or die;

JHtml::_('behavior.framework');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
if(version_compare(JVERSION, '3.0', '>=')) JHtml::_('formbehavior.chosen', 'select');
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'category.cancel' || document.formvalidator.isValid(document.id('item-form'))) {
			<?php echo $this->form->getField('description')->save(); ?>
			Joomla.submitform(task, document.getElementById('item-form'));
		}
		else {
			alert('<?php echo $this->escape(JText::_('COM_DJMEDIATOOLS_VALIDATION_FORM_FAILED'));?>');
		}
	}	
	
	function showPlgParams(source) {
		
		if(typeOf(source)=='element') source = source.value;
		$$('.plgParams').fade('hide');
		$$('.plgParams').setStyle('display','none');
		var plgParams = document.id('plgParams_' + source);
		if(plgParams) {
			plgParams.setStyle('display','block');
			plgParams.fade('in');
		}
		
	}	
	window.addEvent('domready', function(){		
		showPlgParams('<?php echo $this->item->source ?>');		
	});
</script>

<form action="<?php echo JRoute::_('index.php?option=com_djmediatools&layout=edit&id='.(int) $this->item->id); ?>" method="post" name="adminForm" id="item-form" class="form-validate form-horizontal">
	<div class="row-fluid">
		
		<div class="width-80 fltlft span10">
		<fieldset class="adminform">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#details" data-toggle="tab"><?php echo empty($this->item->id) ? JText::_('COM_DJMEDIATOOLS_NEW_ALBUM') : JText::sprintf('COM_DJMEDIATOOLS_EDIT_ALBUM', $this->item->id); ?></a></li>
			<?php
			$fieldSets = $this->form->getFieldsets('params');
			foreach ($fieldSets as $name => $fieldSet) :
			?>
			<li><a href="#params-<?php echo $name;?>" data-toggle="tab"><?php echo JText::_($fieldSet->label);?></a></li>
			<?php endforeach; ?>
		</ul>
		<div class="tab-content">
			<div class="adminformlist tab-pane active" id="details">
				
				<div class="control-group">
					<div class="control-label"><?php echo $this->form->getLabel('title'); ?></div>
					<div class="controls"><?php echo $this->form->getInput('title'); ?></div>
				</div>
				<div class="control-group">
					<div class="control-label"><?php echo $this->form->getLabel('alias'); ?></div>
					<div class="controls"><?php echo $this->form->getInput('alias'); ?></div>
				</div>
				<div class="control-group">
					<div class="control-label"><?php echo $this->form->getLabel('parent_id'); ?></div>
					<div class="controls"><?php echo $this->form->getInput('parent_id'); ?></div>
				</div>
				<div class="control-group">
					<div class="control-label"><?php echo $this->form->getLabel('source'); ?></div>
					<div class="controls"><?php echo $this->form->getInput('source'); ?></div>
				</div>
				
				<?php echo $this->loadTemplate('plgparams'); ?>
				
				<div class="control-group">
					<div class="control-label"><?php echo $this->form->getLabel('published'); ?></div>
					<div class="controls"><?php echo $this->form->getInput('published'); ?></div>
				</div>
				<div class="control-group">
					<div class="control-label"><?php echo $this->form->getLabel('image'); ?></div>
					<div class="controls"><?php echo $this->form->getInput('image'); ?></div>
				</div>
				<div class="control-group">
					<div class="control-label"><?php echo $this->form->getLabel('id'); ?></div>
					<div class="controls"><?php echo $this->form->getInput('id'); ?></div>
				</div>
				<div class="control-group">
					<div class="control-label"><?php echo $this->form->getLabel('description'); ?></div>
					<div class="controls"><?php echo $this->form->getInput('description'); ?></div>
				</div>				
			</div>
			
			<?php echo $this->loadTemplate('params'); ?>
			
		</div>
		</fieldset>
		</div>
				
		<input type="hidden" name="task" value="" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>
<div class="clr"></div>
