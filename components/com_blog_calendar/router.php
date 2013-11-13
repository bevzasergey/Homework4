<?php
/**
 * @copyright	Copyright (C) 2011 Bloogie Network. All rights reserved.
 * @license		GNU General Public License version 2 or later;
 */
// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * Build the route for the com_authorblog component
 *
 * @param	array	An array of URL arguments
 * @return	array	The URL arguments to use to assemble the subsequent URL.
 */
function Blog_CalendarBuildRoute(&$query)
{
	$segments	= array();
		
        if(isset($query['year'])){
          $segments[]=$query['year'];
          unset($query['year']);
        }
        if(isset($query['month'])){
          if(strlen($query['month'])<2) {
            $segments[]='0'.$query['month'];
          } else {
            $segments[]=$query['month'];
          }
          unset($query['month']);
        }
        if(isset($query['day'])){
        if(strlen($query['day'])<2) {
            $segments[]='0'.$query['day'];
          } else {
             $segments[]=$query['day'];
          }
          unset($query['day']);
        }
	return $segments;
}



/**
 * Parse the segments of a URL.
 *
 * @param	array	The segments of the URL to parse.
 *
 * @return	array	The URL attributes to be used by the application.
 * @since	1.5
 */
function Blog_CalendarParseRoute($segments)
{
	$vars = array();
        $count = count($segments);
        
        if($count==1){
          $vars['year'] = $segments[0];
        }
       if($count==2){
          $vars['year'] = $segments[0];
          $vars['month'] = $segments[1];
        }
        if($count>2){
          $vars['year'] = $segments[0];
          $vars['month'] = $segments[1];
          $vars['day'] = $segments[2];
        }
   return $vars;
}