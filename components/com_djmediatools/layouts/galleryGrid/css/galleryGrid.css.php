<?php 
/**
 * @version $Id: galleryGrid.css.php 5 2013-01-04 13:37:11Z szymon $
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

// Get slideshow parameters
$mid = $_GET['mid'];
$image_width = $_GET['w'];
$image_height = $_GET['h'];
$desc_position = $_GET['dp'];
$desc_width = $_GET['dw'];
$loader_position = $_GET['lip'];
if($desc_position == 'over') {
	$desc_bottom = $_GET['db'];
	$desc_left = $_GET['dl'];
}
$spacing = $_GET['s'];
$resizing = $_GET['r'];

/* DON'T CHANGE ANYTHING UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING */

/* General grid gallery settings */ ?>
#dj-galleryGrid<?php echo $mid; ?> {
	margin: 10px 0;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-galleryGrid-in {
	position: relative;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slides {
	position: relative;
	z-index: 5;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide {
	position: relative;
	float: left;
	height: <?php echo $image_height; ?>px;
	overflow: hidden;
	text-align: center;
	margin: 0 <?php echo $spacing; ?>px <?php echo $spacing; ?>px 0;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-in {
	
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-in > a {
	background: none;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide img.dj-image, 
#dj-galleryGrid<?php echo $mid; ?> .dj-slide a:hover img.dj-image {
	border: 0 !important;
	<?php if($desc_position=='left') { ?>
		margin: 0 0 0 <?php echo $desc_width; ?>%;
		max-width: <?php echo 100 - $desc_width; ?>%;
	<?php } else if($desc_position=='right') { ?>
		margin: 0 <?php echo $desc_width; ?>% 0 0;
		max-width: <?php echo 100 - $desc_width; ?>%;
	<?php } else { ?>
		max-width: 100%;
	<?php } ?>
}

<?php /* Slide description area settings */ ?>
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-desc {
	position: absolute;
	width: <?php echo $desc_width; ?>%;
	max-height: <?php echo $image_height; ?>px;
	<?php if($desc_position=='over') { ?>
		bottom: <?php echo $desc_bottom; ?>%;
		left: <?php echo $desc_left; ?>%;
	<?php } else if($desc_position=='left') { ?>
		left: 0;
		bottom: 0;
	<?php } else if($desc_position=='right') { ?>
		right: 0;
		bottom: 0;
	<?php } ?>
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-desc-in {
	position: relative;
	<?php if($desc_position!='over') { ?>
		height: <?php echo $image_height; ?>px;
	<?php } ?>
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-desc-bg {
	position:absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	<?php //if($desc_position=='over') { ?>
		opacity: 0.5;
		filter: alpha(opacity = 50);
	<?php //} ?>
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-desc-text {
	position: relative;
	font-size: 10px;
	color: #ccc;
	padding: 10px;
	text-align: left;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-desc-text p {
	display: block;
	padding: 0;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-desc-text a {
	color: #f5f5f5;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-title {
	font-size: 1.3em;
	font-weight: bold;
	line-height: 1.1;
	color: #f5f5f5;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-slide-title a {
	background: none;
}
#dj-galleryGrid<?php echo $mid; ?> .dj-readmore-wrapper {
	padding: 5px 0 0;
	text-align: right;
}
#dj-galleryGrid<?php echo $mid; ?> a.dj-readmore {
	font-size: 1.1em;
}

<?php /* Loader icon styling */ ?>
#dj-galleryGrid<?php echo $mid; ?> .dj-loader {
	position: absolute;
	<?php if($loader_position=='tl') { ?>
		top: 10px;
		left: 10px;
	<?php } else if($loader_position=='tr') { ?>
		top: 10px;
		right: 10px;
	<?php } else if($loader_position=='bl') { ?>
		bottom: 10px;
		left: 10px;
	<?php } else if($loader_position=='br') { ?>
		bottom: 10px;
		right: 10px;
	<?php } ?>
	z-index: 20;
	width: 16px;
	height: 16px;
	display: block;
	background: #222 url(<?php echo $ipath ?>/images/ajax-loader.gif) left top no-repeat;
	border: 1px solid #aaa;
	margin: 2px;
	border-radius: 8px;
	-moz-border-radius: 8px;
	opacity: 0.8;
	filter: alpha(opacity = 80);
}

<?php /* Description in tooltip */ ?>
.tip-wrap { 
	z-index: 50;
}
.tip-wrap .tip {
	font-size:10px;
	text-align:left;
	padding:10px;
	max-width:400px;
	color: #ccc;
	background: #222;
	border: 3px solid #eee;
	border-radius: 5px;
	box-shadow: 0 0 10px #000;
	opacity: 0.8;
}
.tip-wrap .tip-title {
	font-size: 1.3em;
	font-weight: bold;
	line-height: 1.1;
	color: #f5f5f5;
	margin-bottom: 5px;
}
