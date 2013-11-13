<?php
/**
 * @package     Joomla.Tutorials
 * @subpackage  Module
 * @copyright   (C) 2012 http://jomla-code.ru
 * @license     License GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die('(@)|(@)');
?>
<ul>
<?php
foreach ($list as $item) {
	echo '<li>'.$item->title.'</li>';
}
?>
</ul>
