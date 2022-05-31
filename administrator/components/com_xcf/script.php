<?php
/**
 * @package     com_xcf
 * @version     1.0.0
 * @copyright   Copyright (C) 2015. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Abu Huraira <shams.bd71@gmail.com> - http://www.themexpert.com
 */

defined('_JEXEC') or die;

/**
 * Installation class to perform additional changes during install/uninstall/update
 *
 * @package     Joomla.Administrator
 * @subpackage  com_xcf
 * @since       1.0.0
 */
class Com_XCFInstallerScript
{
	/**
	 * Function to perform changes during install
	 *
	 * @param   JInstallerAdapterComponent  $parent  The class calling this method
	 *
	 * @return  void
	 *
	 * @since   3.4
	 */
	public function postflight( $type, $parent )
	{
		self::copylayout();

		////ALTER TABLE `cu9kh_xcf_types` ADD `show` INT NOT NULL DEFAULT '1' AFTER `type`;
	}

	/**
	* enable necessary plugins to avoid bad experience
	*/
	function copylayout()
	{
		jimport('joomla.filesystem.file');
		$src  = JPATH_BASE . '/components/com_xcf/layouts/xcf/group.php';
		$sitepath = substr(JPATH_BASE, 0, -13);
		$dest = $sitepath . 'layouts/joomla/xcf/';

		if(!JFile::exists($src)){
			return true;
		}
		if(!JFolder::exists($dest)){
			JFolder::create($dest);
		}

		if(!JFile::exists($dest.'group.php')){
			if (!JFile::copy($src, $dest.'group.php'))
			{
				JFactory::getApplication()->enqueueMessage(JText::sprintf('COM_XCF_ERROR_COPY_LAYOUT'));
			}
		}

		return true;

	}

}
