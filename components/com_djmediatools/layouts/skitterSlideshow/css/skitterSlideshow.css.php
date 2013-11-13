<?php
/**
 * @version $Id: skitterSlideshow.css.php 5 2013-01-04 13:37:11Z szymon $
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
$thumb_width = $_GET['tw'];
$thumb_height = $_GET['th'];
$desc_position = $_GET['dp'];
$desc_width = $_GET['dw'];
$arrows_top = $_GET['at'];
$arrows_horizontal = $_GET['ah'];
$loader_position = $_GET['lip'];
if($desc_position == 'over') {
	$desc_bottom = $_GET['db'];
	$desc_left = $_GET['dl'];
}

/* =Skitter styles
 ----------------------------------------------- */
?>
#box_skitter<?php echo $mid ?> {
	position:relative;
	width: <?php echo $image_width; ?>px;
	height: <?php echo $image_height; ?>px;
	background:#000;
	border: 1px solid #ccc;
	box-shadow: 0 0 5px #666;
}
#box_skitter<?php echo $mid ?> ul {
	display:none;
}
#box_skitter<?php echo $mid ?> .container_skitter {
	overflow:hidden;
	position:relative;
}
#box_skitter<?php echo $mid ?> .image {
	overflow:hidden;
}
#box_skitter<?php echo $mid ?> .image img {
	display:none;
}
#box_skitter<?php echo $mid ?> .box_clone {
	position:absolute;
	top:0;
	left:0;
	width:100px;
	overflow:hidden;
	display:none;
	z-index:20;
}
#box_skitter<?php echo $mid ?> .box_clone img {
	position:absolute;
	top:0;
	left:0;
	z-index:20;
}
#box_skitter<?php echo $mid ?> .prev_button {
	position:absolute;
	top:50%;
	left:15px;
	z-index:100;
	width:42px;
	height:42px;
	overflow:hidden;
	text-indent:-9999em;
	margin-top:-25px;
	background:url(<?php echo $ipath ?>/images/prev.png) no-repeat left top !important;
}
#box_skitter<?php echo $mid ?> .next_button {
	position:absolute;
	top:50%;
	right:15px;
	z-index:100;
	width:42px;
	height:42px;
	overflow:hidden;
	text-indent:-9999em;
	margin-top:-25px;
	background:url(<?php echo $ipath ?>/images/next.png) no-repeat left top !important;
}
#box_skitter<?php echo $mid ?> .info_slide {
	position:absolute;
	top:15px;
	left:15px;
	z-index:100;
	background:#000;
	color:#fff;
	font:bold 11px arial;
	padding:5px 0 5px 5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	border-radius:5px;
	opacity:0.75;
}
#box_skitter<?php echo $mid ?> .info_slide .image_number {
	background:#333;
	float:left;
	padding:2px 10px;
	margin:0 5px 0 0;
	cursor:pointer;
	-moz-border-radius:2px;
	-webkit-border-radius:2px;
	border-radius:2px;
}
#box_skitter<?php echo $mid ?> .info_slide .image_number_select {
	background:#cc0000;
	float:left;
	padding:2px 10px;
	margin:0 5px 0 0;
}
#box_skitter<?php echo $mid ?> .container_thumbs {
	position:relative;
	overflow:hidden;
	height:50px;
}
#box_skitter<?php echo $mid ?> .info_slide_thumb {
	-moz-border-radius:0;
	-webkit-border-radius:0;
	border-radius:0;
	overflow:hidden;
	height:45px;
	top:auto;
	bottom:-5px;
	left:-5px;
	padding:5px;
	opacity:1.0;
}
#box_skitter<?php echo $mid ?> .info_slide_thumb .image_number {
	overflow:hidden;
	width:70px;
	height:40px;
	position:relative;
}
#box_skitter<?php echo $mid ?> .info_slide_thumb .image_number img {
	position:absolute;
	top:-50px;
	left:-50px
}
#box_skitter<?php echo $mid ?> .box_scroll_thumbs {
	padding:0 10px;
}
#box_skitter<?php echo $mid ?> .box_scroll_thumbs .scroll_thumbs {
	position:absolute;
	bottom:60px;
	left:50px;
	background:#ccc;
	background:-moz-linear-gradient(-90deg, #555, #fff);
	background:-webkit-gradient(linear, left top, left bottom, from(#555), to(#fff));
	width:200px;
	height:10px;
	overflow:hidden;
	text-indent:-9999em;
	z-index:101;
	-moz-border-radius:20px;
	-webkit-border-radius:20px;
	border-radius:20px;
	cursor:pointer;
	border:1px solid #333;
}
#box_skitter<?php echo $mid ?> .info_slide_dots {
	position:absolute;
	bottom:-40px;
	z-index:151;
	padding:5px 0 5px 5px;
	-moz-border-radius:50px;
	-webkit-border-radius:50px;
	border-radius:50px;
}
#box_skitter<?php echo $mid ?> .info_slide_dots .image_number {
	background:#333;
	float:left;
	margin:0 5px 0 0;
	cursor:pointer;
	-moz-border-radius:50px;
	-webkit-border-radius:50px;
	border-radius:50px;
	width:18px;
	height:18px;
	text-indent:-9999em;
	overflow:hidden;
}
#box_skitter<?php echo $mid ?> .info_slide_dots .image_number_select {
	background:#cc0000;
	float:left;
	margin:0 5px 0 0;
}

<?php /* Slide description area settings */ ?>
#box_skitter<?php echo $mid; ?> .label_skitter {
	position: absolute;
	z-index:150;
	width: <?php echo $desc_width; ?>% !important;
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
	display:none;
}
#box_skitter<?php echo $mid; ?> .dj-slide-desc-in {
	position: relative;
	<?php if($desc_position!='over') { ?>
		height: <?php echo $image_height; ?>px;
	<?php } ?>
}
#box_skitter<?php echo $mid; ?> .dj-slide-desc-bg {
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
#box_skitter<?php echo $mid; ?> .dj-slide-desc-text {
	position: relative;
	color: #ccc;
	padding: 10px;
	text-align: left;
}
#box_skitter<?php echo $mid; ?> .dj-slide-desc-text p {
	display: block;
	padding: 0;
}
#box_skitter<?php echo $mid; ?> .dj-slide-desc-text a {
	color: #f5f5f5;
}
#box_skitter<?php echo $mid; ?> .dj-slide-title {
	font-size: 1.5em;
	font-weight: bold;
	line-height: 1.1;
	color: #f5f5f5;
	margin-bottom: 5px;
}
#box_skitter<?php echo $mid; ?> .dj-slide-title a {
	background: none;
}
#box_skitter<?php echo $mid; ?> .dj-readmore-wrapper {
	padding: 5px 0 0;
	text-align: right;
}
#box_skitter<?php echo $mid; ?> a.dj-readmore {
	font-size: 1.1em;
}

#box_skitter<?php echo $mid ?> .loading {
	position:absolute;
	top:50%;
	right:50%;
	z-index:10000;
	margin:-16px -16px;
	color:#fff;
	text-indent:-9999em;
	overflow:hidden;
	background:url(<?php echo $ipath ?>/images/ajax-loader-dark.gif) no-repeat left top;
	width:32px;
	height:32px;
}
.info_slide * {
	font-family:Consolas,arial,tahoma !important;
}
/* =Preview slide
 ----------------------------------------------- */
#preview_slide {
	display:none;
	position:absolute;
	z-index:152;
	bottom:30px;
	left:-40px;
	width:100px;
	height:100px;
	background:#fff;
	border:1px solid #222;
	-moz-box-shadow:rgba(0,0,0,0.7) 2px 2px 5px;
	-webkit-box-shadow:rgba(0,0,0,0.7) 2px 2px 5px;
	box-shadow:rgba(0,0,0,0.7) 2px 2px 5px;
	overflow:hidden;
}
#preview_slide ul {
	height:100px;
	overflow:hidden;
	margin:0;
	list-style:none;
	display:block;
	position:absolute;
	top:0;
	left:0;
}
#preview_slide ul li {
	width:100px;
	height:100px;
	overflow:hidden;
	float:left;
	margin:0;
	padding:0;
	position:relative;
	display:block;
}
#preview_slide ul li img {
	position:absolute;
	top:0;
	left:0;
	height:150px;
	width:auto;
}
