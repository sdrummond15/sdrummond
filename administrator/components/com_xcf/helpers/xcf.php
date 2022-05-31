<?php

/**
 * @version     1.0.0
 * @package     com_xcf
 * @copyright   Copyright (C) 2015. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Abu Huraira <shams.bd71@gmail.com> - http://www.themexpert.com
 */
// No direct access
defined('_JEXEC') or die;

/**
 * XCF helper.
 */
class XCFHelper {

    /**
     * Configure the Linkbar.
     */
    public static function addSubmenu($vName = '') {
      		JHtmlSidebar::addEntry(
      			JText::_('COM_XCF_TITLE_GROUPS'),
      			'index.php?option=com_xcf&view=groups',
      			$vName == 'groups'
      		);
          JHtmlSidebar::addEntry(
      			JText::_('COM_XCF_TITLE_FIELDS'),
      			'index.php?option=com_xcf&view=fields',
      			$vName == 'fields'
        	);
    }

    /**
     * Gets a list of the actions that can be performed.
     *
     * @return	JObject
     * @since	1.6
     */
    public static function getActions() {
        $user = JFactory::getUser();
        $result = new JObject;

        $assetName = 'com_xcf';

        $actions = array(
            'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.edit.own', 'core.edit.state', 'core.delete'
        );

        foreach ($actions as $action) {
            $result->set($action, $user->authorise($action, $assetName));
        }

        return $result;
    }


    /**
   * Retrieve Contact
   *
   * @param   int  $created_by  Id of the user who created the contact
   *
   * @return  mixed|null|integer
   */
  public static function getSettings($name, $data)
  {

    $dispatcher = JEventDispatcher::getInstance();
    $result = $dispatcher->trigger('onXCFgetContextSearch', array ($name));

    // $result
    if(!$result) {
      return new stdClass();
    }

    $db = JFactory::getDBo();
    $query = $db->getQuery(true);

    $query->select('cg.*');
    $query->from($db->quoteName('#__xcf_groups', 'cg'));
    $query->where('cg.state = "1"');

    if(isset($data->catid)){
      $query->where(
        '( cg.category = '. $db->quote($data->catid)
        . ' or '
        . 'cg.category = '. $db->quote('0')
        . ') '
      );
    }else{
      $query->where(
        'cg.category = '. $db->quote('0')
      );

    }

    $query->join('LEFT', '#__xcf_types AS ct ON ct.id = cg.type');

    $prefix = 'ct.type = ';
    $where = '';

    foreach ($result as $key => $value) 
    {
      $where .= $prefix . $db->quote($value);
      $prefix = ' or ct.type = ';
    }
    $query->where($where);    

    // echo $query->__toString();die;
    $db->setQuery($query);

    $result = $db->loadObjectList();
    
    $total = count($result);
    if($total == 1){
      return $result[0];
    }elseif($total == 0){
      $obj = new stdClass();
      return $obj;
    }else{
      foreach ($result as $key => $item) {
        if(isset($data->catid) && ($item->category == $data->catid)){
          return $item;
        }
        elseif($item->category == 0){
          return $item;
        }
      }
    }

    return new stdClass();
  }

  /**
   * Retrieve Contact
   *
   * @param   int  $created_by  Id of the user who created the contact
   *
   * @return  mixed|null|integer
   */
  public static function getfields($id)
  {
    $db = JFactory::getDBo();
    $query = $db->getQuery(true);

    $query->select('f.*');
    $query->from($db->quoteName('#__xcf_fields', 'f'));
    $query->where('f.state = 1');
    $query->where('f.group = '. $db->quote($id));
    $query->order('ordering ASC');

    $db->setQuery($query);

    return $db->loadObjectList();
  }

  /*
  * to get php warning
  * we require at least php 5.4
  */

  public static function getFreeWarning(){

    $layout = new JLayoutFile('pro');
    return $layout->render(array());    

    return;
  }

}
