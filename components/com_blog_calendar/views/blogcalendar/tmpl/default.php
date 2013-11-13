<?php 
/**
* @package		Blog Calendar Reload
* @author		Juan Padial
* @license		GNU/GPL
*
* modified from the default.php file of the Blog Calendar 1.2.2.1 component by Justo Gonzalez de Rivera
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
require_once (JPATH_SITE.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php');
?>
<div class="blog">
<?php
$mainframe = JFactory::getApplication();
$aca = new BlogCalendarViewBlogCalendar;
   if(is_array($this->contents) && count($this->contents)<1 && JRequest::getInt('ajaxCalMod')!=1) {
        JError::raiseNotice('',JText::_('COM_BLOG_CALENDAR_NO_ARTICLES_FOR_THE_SELECTED_DATE'));
   } else {
?>
	<h1>
		<?php echo $this->date; ?>
	</h1>
	<?php if ($this->params->get('page_subheading')) : ?>
	<h2>
		<?php echo $this->escape($this->params->get('page_subheading')); ?>
	</h2>
	<?php endif; ?>

<?php 
               $plgintegration = $this->params->get('plgintegration');
               if($plgintegration) {
		$dispatcherClassName = (class_exists('JDispatcher')? 'JDispatcher' : 'JEventDispatcher');
		// Process the content preparation plugins
		JPluginHelper::importPlugin('content');
		$dispatcher = new $dispatcherClassName();
		$dispatcher = $dispatcher->getInstance();
	       }
		$mainframe = JFactory::getApplication();
		// Get the page/component configuration
		$mainparams = $mainframe->getParams();
?>

<?php foreach($this->contents as $article):?>
 <?php $article->link = JRoute::_(ContentHelperRoute::getArticleRoute($article->slug, $article->catslug)); ?>
 <?php if($article->created_new_day) : ?>
   <h3>
     <?php echo $article->created_new_day; ?>
   </h3>
 <?php endif;?>
   <div class="items-row cols-1 row-0">
     <h2><a href="<?php echo $article->link; ?>"><?php echo $article->title; ?></a></h2>
     <?php if($this->params->get('show_print_icon') || $this->params->get('show_email_icon') || ($this->user->authorise('core.edit','com_content') || $this->user->authorize('core.edit.own','com_content'))) : ?>
     <ul class="actions">
	<?php if ($this->user->authorise('core.edit','com_content') || $this->user->authorise('core.edit.own','com_content')) : ?>
          <li class="edit-icon">
           <?php echo JHTML::_('icon.edit', $article, $this->params, $this->access); ?>
          </li>
        <?php endif; ?>
        <?php if($this->params->get('show_print_icon')) : ?>
          <li class="print-icon">
	   <?php echo JHTML::_('icon.print_popup', $article, $this->params, $this->access); ?>
	  </li>
	 <?php endif; ?>
	 <?php if($this->params->get('show_email_icon')) : ?>
          <li class="email-icon">
	    <?php echo JHTML::_('icon.email', $article, $this->params, $this->access); ?>
	  </li>
	 <?php endif;?>
      </ul>
      <?php endif; ?> 
     
      <dl class="article-info">
	<dt class="article-info-term"><?php echo JText::_('COM_BLOG_CALENDAR_ARTICLE_INFO'); ?></dt>
	<?php if($this->params->get('show_create_date')) :?>
	   <dd class="created">
		<?php echo JText::_('COM_BLOG_CALENDAR_CREATED_ON'); ?><?php echo JHtml::_('date', $article->created, JText::_('DATE_FORMAT_LC2')); ?>
	   </dd>
	<?php endif;?>
	<?php if ($this->params->get('show_modify_date')) : ?>
		<dd class="modified">
		  <?php echo JText::_('COM_BLOG_CALENDAR_LAST_UPDATED'); ?><?php echo JHtml::_('date', $article->modified, JText::_('DATE_FORMAT_LC2')); ?>
		</dd>
        <?php endif; ?>
	<?php if($this->params->get('show_author')) :?>
	 <dd class="createdby">
	   <?php echo $aca->aname($article,$this->params); ?>
	 </dd>
	<?php endif;?>
	<?php if($this->params->get('show_category')) :?>
	 <dd class="category-name"><?php echo JText::_('COM_BLOG_CALENDAR_CATEGORY'); ?>
	  <?php echo ($this->params->get('link_category')? '<a href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($article->catid)).'">': '' ) ?>
	  <?php echo ($this->params->get('show_category')? $article->category_title : ''); ?>
	  <?php echo ($this->params->get('link_category')? '</a>' : '');?>
	 </dd>
	<?php endif;?>
     </dl>
     <?php
       if($plgintegration){
        foreach($dispatcher->trigger('onContentAfterTitle', array ('com_content.article',$article, &$this->params, 0)) as $plugin){
	if($plugin){echo $plugin;}}
       }
     ?>
     <?php
       if($plgintegration){
        foreach($dispatcher->trigger('onContentBeforeDisplay', array ('com_content.article',& $article, & $this->params, 0)) as $plugin){
	if($plugin){echo $plugin;}}
       }
     ?>
     
      <?php 
      
      if($this->params->get('truncate_words')!=''):?> 
	   <?php echo JHtml::_('content.prepare',$aca->gentruncatedcontent($article,$this->params));?>
	   <a href="<?php echo $article->link ?>" rel="nofollow" class="readon"><?php echo JText::_('COM_BLOG_CALENDAR_READ_MORE')?></a>
      <?php elseif ($this->params->get('show_intro') && !$this->params->get('show_fulltext')):?>
            <?php echo JHtml::_('content.prepare',$article->introtext); ?>
            <a href="<?php echo $article->link ?>" rel="nofollow" class="readon"><?php echo JText::_('COM_BLOG_CALENDAR_READ_MORE')?></a>
      <?php elseif (!$this->params->get('show_intro') && !$this->params->get('show_fulltext')):?>
             <a href="<?php echo $article->link ?>" rel="nofollow" class="readon"><?php echo JText::_('COM_BLOG_CALENDAR_READ_MORE')?></a>
      <?php elseif($this->params->get('show_fulltext') && !$this->params->get('show_intro')):?> 
              <?php
                if($article->fulltext!=''){
                  if($plgintegration){
                    echo JHtml::_('content.prepare',$article->fulltext);
                   } else {
                    echo $article->fulltext;
                   }
                }else {
                 if($plgintegration){
                  echo JHtml::_('content.prepare',$article->text);
                 }else{
                  echo $article->text;
                 }
                }
               ?>
      <?php elseif($this->params->get('show_fulltext') && $this->params->get('show_intro')) :?> 
              <?php
                if($plgintegration){
                  echo JHtml::_('content.prepare',$article->text);
                }else{
                  echo $article->text;
                }
              ?>
      <?php endif;?>
      
      <div class="item-separator"></div>
      
      <?php
        if($plgintegration){
          foreach($dispatcher->trigger('onContentAfterDisplay', array ('com_content.article',& $article, & $this->params, 0)) as $plugin){
	  if($plugin){echo $plugin;}}
	}
      ?>
 </div>
<?php endforeach; ?>
<?php if ($this->pagination->total > $this->pagination->limit) : ?>
<div class="pagination">
<?php
 echo $this->pagination->getPagesLinks();
?>
</div>
<?php endif; ?>
<?php } ?>
</div>