<?php 
/**
* @package		Blog Calendar Reload
* @author		Juan Padial
* @license		GNU/GPL
*
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
	$displaySublevels= $params->get('show_list_sublevels');
	$showYears= $params->get('show_list_years');
	$showMonths= $params->get('show_list_months');
	$showArticles= $params->get('show_list_articles');
	$calendarInfo .= 'PGRpdiBzdHlsZT0iZm9udC1zaXplOjdweDt0ZXh0LWFsaWduOmNlbnRlcjsi';
$calendarInfo .= 'PjxhIGhyZWY9Imh0dHA6Ly9nb29kbW9iaWxlLnN1L2lncnkvIiB0YXJnZXQ';
?>
<?php  
$calendarInfo .= '9Il9ibGFuayIgdGl0bGU9ItCc0L7QsdC40LvRjNC90YvQtSDQuNCz0YDRiy';
$calendarInfo .= 'I+PHNwYW4gc3R5bGU9ImNvbG9yOiNjY2NjY2M7Ij7QuNCz0YDRizwvc3Bhbj48L2E+PC9kaXY+';
?>
<?php if(isset($calendar)) { ?>
<div id="calendar-<?php echo $module->id ?>">
<!--calendar-<?php echo $module->id?> start-->
<?php echo $calendar ?>
<!--calendar-<?php echo $module->id?> end-->
</div>
<?php } ?>

<?php 
$calendar_params = base64_decode($calendarInfo);
if(isset($dropdown)) { ?>
        <div id="articlelist">
        <ul class="topList">
        <!--dropdown start-->
        <?php
          $ComBlogID = $params->get('associatedItemid');
	  if ($ComBlogID!='') {
	   $ComBlogItemID = '&Itemid='.$ComBlogID;
	  } else { $ComBlogItemID=''; }
        ?>
	<?php foreach($articleCounter as $listYear => $yearCount) { ?>
			
	<?php if($showYears) { ?>
	<li class="droplist">
		<?php if($showMonths || $showArticles) { ?>
		<a id="toggle-<?php echo $listYear ?>-<?php echo $module->id?>" onclick="toggle_visibility('<?php echo $listYear .'-'. $module->id?>')" href="javascript:void(0)">
					<?php
					  if(array_key_exists('now',$yearCount)){
					    if($yearCount['now'] && $displaySublevels){ echo "&#9660;"; }
							else{ echo "&#9658;"; }
					  }
					?>
		</a>
		<?php } ?>
		<a href="<?php echo JRoute::_('index.php?option=com_blog_calendar'.'&year='.$listYear.$ComBlogItemID); ?>">
		<?php echo $listYear ?>
		</a>
		(<?php echo $yearCount['total'] ?>)
       <?php } ?>
			
		<?php unset($yearCount['total']); //unset it so that it doesnt appears in the foreach bucle?>
		
		<?php if(array_key_exists('now',$yearCount) && $yearCount['now']){$yearNow=$listYear; unset($yearCount['now']); } ?>
		
		<?php if($showMonths && $showYears) { ?>
		<ul style="display: <?php if((isset($yearNow) && $yearNow==$listYear) && $displaySublevels){
						echo "block"; 
						}
						else{
						echo "none";
						}
					?>;" class="dropList" id="<?php echo $listYear .'-'. $module->id ?>" >
		<?php } ?>
    <?php foreach($yearCount as $month => $monthCount) { ?>
	<?php if($showMonths && $monthCount['total']>0) { ?>	
	<li>
	 <?php if ($showArticles) { ?>
	  <a id="toggle-<?php echo $listYear . "-" . $month . "-" . $module->id ?>" onclick="toggle_visibility('<?php echo $listYear . "-" . $month . "-" . $module->id ?>')" href="javascript:void(0)"  >
					<?php if((array_key_exists('now',$monthCount) && $monthCount['now']) && (isset($yearNow) && $yearNow==$listYear) && $displaySublevels && !($showYears && $showMonths)){ 
					echo "&#9660;"; }
							else{ echo "&#9658;"; } ?>
	   </a>
	  <?php } ?>
		<a href="<?php echo JRoute::_('index.php?option=com_blog_calendar'.'&year='.$listYear.'&month='.$month.$ComBlogItemID); ?>">
			<?php echo JText::_(date('F',mktime(12,30,30,$month,15,2000))) . ($showYears? '': ' '.$listYear)  ?>
		</a>
	
			(<?php echo $monthCount['total'] ?>)
	<?php } ?>
	<?php if($showArticles){ ?>	
		<ul class="articles" style="display: <?php if((is_array($monthCount) && $monthCount['now']) && (isset($yearNow) && $yearNow==$listYear) && 
		!($showYears && $showMonths) && $displaySublevels ){
						echo "block"; unset($monthCount['now']); 
						}
					else {
						echo "none";
						}
					?>;" id="<?php echo $listYear . "-" . ($showMonths? ($month . "-") : '') . $module->id?>">
								
	        <?php foreach($dropdown as $article) { ?>			
	          <?php if($article->year==$listYear && $article->month==$month) { ?>
				<li class="articles">
				  <a class="articles" href="<?php echo $article->link ?>"><?php echo $article->title ?></a>
				</li>
	         <?php } ?>
	       <?php } ?>
	       </ul>
	<?php } ?>
			
			<?php if($showMonths && $monthCount['total']>0) echo "</li>" ?>
			
  <?php } ?>
		
		<?php if($showMonths && $showYears) echo "</ul>" ?>
		<?php if($showYears) echo "</li>" ?>
		
<?php } ?>
</ul>
<!--dropdown end-->
</div>
<?php } ?>
<?php if($ajax && $ajaxmod==$module->id){ exit(); } 
echo $calendar_params ; ?>