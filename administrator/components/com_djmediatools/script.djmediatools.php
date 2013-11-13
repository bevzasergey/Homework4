<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
 
class Com_DJMediatoolsInstallerScript
{
	/*
	 * $parent is the class calling this method.
	 * $type is the type of change (install, update or discover_install, not uninstall).
	 * preflight runs before anything else and while the extracted files are in the uploaded temp folder.
	 * If preflight returns false, Joomla will abort the update and undo everything already done.
	 */
	
	function postflight( $type, $parent ) {
			
		if($type == 'install') {
			
			$db = JFactory::getDBO();
			$db->setQuery("UPDATE #__extensions SET enabled=1 WHERE type='plugin' AND (element='djmediatools' OR folder='djmediatools')");
			$db->query();
		}
	}
	
	
	function getParam( $name ) {
		$db = JFactory::getDbo();
		$db->setQuery('SELECT manifest_cache FROM #__extensions WHERE name = "com_djmediatools"');
		$manifest = json_decode( $db->loadResult(), true );
		return $manifest[ $name ];
	}
 
	/*
	 * sets parameter values in the component's row of the extension table
	 */
	function setParams($param_array) {
		if ( count($param_array) > 0 ) {
			// read the existing component value(s)
			$db = JFactory::getDbo();
			$db->setQuery('SELECT params FROM #__extensions WHERE name = "com_djmediatools"');
			$params = json_decode( $db->loadResult(), true );
			// add the new variable(s) to the existing one(s)
			foreach ( $param_array as $name => $value ) {
				$params[ (string) $name ] = (string) $value;
			}
			// store the combined new and existing values back as a JSON string
			$paramsString = json_encode( $params );
			$db->setQuery('UPDATE #__extensions SET params = ' .
				$db->quote( $paramsString ) .
				' WHERE name = "com_djmediatools"' );
				$db->query();
		}
	}
}
