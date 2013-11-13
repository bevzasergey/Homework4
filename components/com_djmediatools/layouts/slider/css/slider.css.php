<?php 
/**
 * @version $Id: slider.css.php 5 2013-01-04 13:37:11Z szymon $
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
defined('_JEXEC') or die;
Header ("Content-type: text/css");

// Get slider parameters
$mid = $_GET['mid'];
$slider_type = $_GET['st'];
$slide_width = $_GET['w'];
$slide_height = $_GET['h'];
$slider_width = $_GET['sw'];
$slider_height = $_GET['sh'];
$spacing = $_GET['s'];
$desc_width = $_GET['dw'];
$desc_bottom = $_GET['db'];
$desc_left = $_GET['dl'];
$arrows_top = $_GET['at'];
$arrows_horizontal = $_GET['ah'];
$show_buttons = $_GET['sb'];
$show_arrows = $_GET['sa'];
$show_custom_nav = $_GET['sc'];
$custom_nav_pos = $_GET['cnp'];
$custom_nav_align = $_GET['cna'];
$resizing = $_GET['r'];

$image_width = 'max-width: 100%';
$image_height = 'max-height: 100%';

switch($resizing){
	case 'crop':
	case 'toWidth':
		$image_width = 'width: 100%';
		$image_height = 'height: auto';
		break;
	case 'toHeight':
		$image_width = 'width: auto';
		$image_height = 'height: 100%';
		break;
}

/* DON'T CHANGE ANYTHING UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING */

/* General slider settings */ ?>
#djslider-loader<?php echo $mid; ?> {
	margin: 10px auto;
	position: relative;
	background: url(<?php echo $ipath ?>/images/loader.gif) center center no-repeat;
}
#djslider<?php echo $mid; ?> {
	margin: 0 auto;
	position: relative;
	height: <?php echo $slider_height; ?>px; 
	width: <?php echo $slider_width; ?>px;
	max-width: <?php echo $slider_width; ?>px;
}
#slider-container<?php echo $mid; ?> {
	position: absolute;
	overflow: hidden;
	left: 0; 
	top: 0;
	height: 100%; 
	width: 100%;
}
#djslider<?php echo $mid; ?> ul#slider<?php echo $mid; ?> {
	margin: 0 !important;
	padding: 0 !important;
	border: 0 !important;
}
#djslider<?php echo $mid; ?> ul#slider<?php echo $mid; ?> li {
	list-style: none outside !important;
	<?php if($slider_type == 'left') { ?>
		float: left;
		padding: 0 <?php echo $spacing; ?>px 0 0 !important;
	<?php } else if($slider_type == 'right') { ?>
		float: right;
		padding: 0 0 0 <?php echo $spacing; ?>px !important;
	<?php } else if($slider_type == 'up') { ?>
		padding: 0 0 <?php echo $spacing; ?>px 0 !important;
	<?php } else if($slider_type == 'down') { ?>
		padding: <?php echo $spacing; ?>px 0 0 0 !important;
	<?php } else { ?>
		padding: 0 !important;
	<?php } ?>
	margin: 0 !important;
	border: 0 !important;
	position: relative;
	height: <?php echo $slide_height; ?>px;
	width: <?php echo $slide_width; ?>px;
	background: none;
	overflow: hidden;
	text-align: center;
}
#slider<?php echo $mid; ?> li img {
	<?php echo $image_width; ?>;
	<?php echo $image_height; ?>;
	border: 0 !important;
	margin: 0 !important;
}
#slider<?php echo $mid; ?> li a img, #slider<?php echo $mid; ?> li a:hover img {
	border: 0 !important;
}

<?php /* Slide description area settings */ ?>
#slider<?php echo $mid; ?> .dj-slide-desc {
	position: absolute;
	bottom: <?php echo $desc_bottom; ?>%;
	left: <?php echo $desc_left; ?>%;
	width: <?php echo $desc_width; ?>%;
}
#slider<?php echo $mid; ?> .dj-slide-desc-in {
	position: relative;
	<?php if($slider_type == 'left') { ?>
		margin: 0 <?php echo $spacing; ?>px 0 0 !important;
	<?php } else if($slider_type == 'right') { ?>
		margin: 0 0 0 <?php echo $spacing; ?>px !important;
	<?php } else if($slider_type == 'up') { ?>
		margin: 0 0 <?php echo $spacing; ?>px 0 !important;
	<?php } else if($slider_type == 'down') { ?>
		margin: <?php echo $spacing; ?>px 0 0 0 !important;
	<?php } else { ?>
		margin: 0 !important;
	<?php } ?>
}
#slider<?php echo $mid; ?> .dj-slide-desc-bg {
	position:absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: 0.5;
	filter: alpha(opacity = 50);
}
#slider<?php echo $mid; ?> .dj-slide-desc-text {
	position: relative;
	color: #ccc;
	padding: 10px;
	text-align: left;
}
#slider<?php echo $mid; ?> .dj-slide-desc-text p {
	display: block;
	padding: 0;
}
#slider<?php echo $mid; ?> .dj-slide-desc-text a {
	color: #f5f5f5;
}
#slider<?php echo $mid; ?> .dj-slide-title {
	font-size: 1.3em;
	font-weight: bold;
	line-height: 1.1;
	color: #f5f5f5;
	margin-bottom: 5px;
}
#slider<?php echo $mid; ?> .dj-slide-title a {
	background: none;
}
#slider<?php echo $mid; ?> .dj-readmore-wrapper {
	padding: 5px 0 0;
	text-align: right;
}
#slider<?php echo $mid; ?> a.dj-readmore {
	font-size: 1.1em;
}

<?php /* Navigation buttons settings */ ?>
#navigation<?php echo $mid; ?> {
	position: relative;
	top: <?php echo $arrows_top; ?>%; 
	margin: 0 <?php echo $arrows_horizontal; ?>px;
	text-align: center !important;
}
#prev<?php echo $mid; ?> {
	cursor: pointer;
	display: block;
	position: absolute;
	left: 0;
	<?php if(!$show_arrows) { ?>
		top: -9999px;
	<?php } ?>
}
#next<?php echo $mid; ?> {
	cursor: pointer;
	display: block;
	position: absolute;
	right: 0;
	<?php if(!$show_arrows) { ?>
		top: -9999px;
	<?php } ?>
}
#play<?php echo $mid; ?>, 
#pause<?php echo $mid; ?> {
	cursor: pointer;
	display: block;
	position: absolute;
	left: 50%;
	<?php if(!$show_buttons) { ?>
		top: -9999px;
	<?php } ?>
}

<?php /* Slide indicators settings */ ?>
<?php if($show_custom_nav) { ?>
#cust-navigation<?php echo $mid; ?> {
	position: absolute;
	<?php if($custom_nav_pos=='above') { ?>
		top: -30px;
	<?php } else if($custom_nav_pos=='topin') { ?>
		top: 10px;
	<?php } else if($custom_nav_pos=='bottomin') { ?>
		bottom: 10px;
	<?php } else if($custom_nav_pos=='below') { ?>
		bottom: -30px;
	<?php } ?>
	z-index: 15;
	width: 100%;
}
#cust-navigation<?php echo $mid; ?> .cust-navigation-in {
	text-align: <?php echo $custom_nav_align ?>;
	padding: 0 10px;
}
#cust-navigation<?php echo $mid; ?> span.load-button {
	width: 10px;
	height: 10px;
	display: inline-block;
	background: #000;
	border: 2px solid #fff;
	box-shadow: 0 0 2px #999;
	margin: 2px;
	cursor: pointer;
	border-radius: 7px;
	-moz-border-radius: 7px;
	opacity: 0.2;
	filter: alpha(opacity = 20);
}
#cust-navigation<?php echo $mid; ?> span.load-button-active {
	opacity: 0.8;
	filter: alpha(opacity = 80);
}
<?php } ?>