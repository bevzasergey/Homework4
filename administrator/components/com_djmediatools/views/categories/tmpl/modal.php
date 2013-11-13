<?php 
/**
 * @version $Id: modal.php 4 2012-12-06 13:48:32Z szymon $
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
 
defined('_JEXEC') or die('Restricted access'); ?>

<?php 

JHTML::_('behavior.tooltip');
JHTML::_('behavior.modal');

$user		= JFactory::getUser();
$userId		= $user->get('id');
$listOrder	= $this->state->get('list.ordering');
$listDirn	= $this->state->get('list.direction');
$canOrder	= true; //$user->authorise('core.edit.state', 'com_contact.category');
$saveOrder	= $listOrder == 'a.ordering';
$search = $this->state->get('filter.search');
$saveOrder	= (empty($search) == false ? false : $saveOrder);
$saveOrder	= (is_numeric($this->state->get('filter.published')) ? false : $saveOrder);
?>

<form action="<?php echo JRoute::_('index.php?option=com_djmediatools&view=categories&layout=modal&tmpl=component&'.JSession::getFormToken().'=1'); ?>" method="post" name="adminForm" id="adminForm">
	<fieldset id="filter-bar" class="btn-toolbar">
		<div class="filter-search fltlft btn-group pull-left">
			<label class="filter-search-lbl element-invisible" for="filter_search"><?php echo JText::_('JSEARCH_FILTER_LABEL'); ?></label>
			<input type="text" name="filter_search" id="filter_search" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" placeholder="<?php echo JText::_('COM_DJMEDIATOOLS_SEARCH_IN_TITLE'); ?>" />
		</div>
		<div class="btn-group pull-left">
			<button type="submit" class="btn"><?php echo JText::_('JSEARCH_FILTER_SUBMIT'); ?></button>
			<button type="button" class="btn" onclick="document.id('filter_search').value='';this.form.submit();"><?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?></button>
		</div>
	</fieldset>
	<fieldset id="filter-bar" class="btn-toolbar">
		<div class="filter-select fltrt btn-group pull-left">
			<select name="filter_published" class="inputbox" onchange="this.form.submit()">
				<option value=""><?php echo JText::_('JOPTION_SELECT_PUBLISHED');?></option>
				<?php echo JHtml::_('select.options', array(JHtml::_('select.option', '1', 'JPUBLISHED'),JHtml::_('select.option', '0', 'JUNPUBLISHED')), 'value', 'text', $this->state->get('filter.published'), true);?>
			</select>	
		</div>
		<div class="filter-select fltrt btn-group pull-left">
			<select name="filter_parent" class="inputbox" onchange="this.form.submit()">
				<option value=""><?php echo JText::_('COM_DJMEDIATOOLS_SELECT_CATEGORY');?></option>
				<?php echo JHtml::_('select.options', $this->category_options, 'value', 'text', $this->state->get('filter.category'));?>
			</select>
		</div>
	</fieldset>
	<div class="clr"> </div>
	
	<table class="adminlist table table-condensed">
		<thead>
			<tr>
				<th width="10%">
					<?php echo JText::_('COM_DJMEDIATOOLS_CATEGORY_IMAGE'); ?>
				</th>
				<th>
					<?php echo JHtml::_('grid.sort',  'JGLOBAL_TITLE', 'a.title', $listDirn, $listOrder); ?>
				</th>
				<th width="15%">
					<?php echo JHtml::_('grid.sort', 'COM_DJMEDIATOOLS_PARENT_CATEGORY', 'parent_title', $listDirn, $listOrder); ?>
				</th>
				<th width="1%">
					<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder); ?>
				</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="10">
					<?php //echo $this->pagination->getListFooter(); ?>
				</td>
			</tr>
		</tfoot>
		<tbody>
		<?php 
		$n = count($this->items);
		foreach ($this->items as $i => $item) :
			$ordering	= ($listOrder == 'a.ordering');
			$canCreate	= true; //$user->authorise('core.create',		'com_contact.category.'.$item->catid);
			$canEdit	= true; //$user->authorise('core.edit',			'com_contact.category.'.$item->catid);
			$canCheckin	= true; //$user->authorise('core.manage',		'com_checkin') || $item->checked_out == $userId || $item->checked_out == 0;
			$canEditOwn	= true; //$user->authorise('core.edit.own',		'com_contact.category.'.$item->catid) && $item->created_by == $userId;
			$canChange	= true; //$user->authorise('core.edit.state',	'com_contact.category.'.$item->catid) && $canCheckin;

			?>
			<tr class="row<?php echo $i % 2; ?>">
				<td align="center">
					<a class="pointer" onclick="if (window.parent) window.parent.jInsertDJMedia('<?php echo $item->id; ?>');">
					<?php if ($item->image) : ?>
						<img src="../<?php echo $item->thumb; ?>" alt="<?php echo $this->escape($item->title); ?>" width="32" style="border: 1px solid #ccc; padding: 1px;" />
					<?php else : ?>
						<img src="<?php echo $item->thumb; ?>" alt="<?php echo $this->escape($item->title); ?>" width="32" />
					<?php endif; ?>
					</a>
				</td>
				<td>
					<?php if(isset($item->level)) for($lvl = 0; $lvl < $item->level; $lvl++) : ?>
					<span class="gi">|&mdash;</span>
					<?php endfor; ?>
					
					<a class="pointer" onclick="if (window.parent) window.parent.jInsertDJMedia('<?php echo $item->id; ?>');">
						<?php echo $this->escape($item->title); ?></a>
					
					<div class="small">
						<?php echo JText::sprintf('JGLOBAL_LIST_ALIAS', $this->escape($item->alias));?></div>
				</td>				
				<td align="center">
					<?php echo (!empty($item->parent_title)) ? $item->parent_title : JText::_('COM_DJMEDIATOOLS_ROOT_CATEGORY'); ?>
				</td>
				<td align="center">
					<?php echo $item->id; ?>
				</td>
			</tr>
		<?php endforeach; ?>
		</tbody>
	</table>
	<div>
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>


<?php echo DJMEDIATOOLSFOOTER; ?>