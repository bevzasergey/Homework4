<?php

defined('_JEXEC') or die('(@)|(@)');
?>
<ul>
<?php
foreach ($list as $item) {
	echo '<li>'.$item->title.'</li>';
}
?>
</ul>
