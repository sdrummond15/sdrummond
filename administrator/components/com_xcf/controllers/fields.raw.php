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
 * Group controller class.
 */
class XCFControllerFields extends JControllerLegacy
{

    function getList(){

      $app  = JFactory::getApplication();
      // $dispatcher = JEventDispatcher::getInstance();
  		// JPluginHelper::importPlugin('xcf');
  		// $result = $dispatcher->trigger('onXCFPrepareAjaxForm', array ($id, $name));
      //
      // print_r($result);die;
      // // $canload
  		// if (in_array(false, $result, true))
  		// {
  		// 	return;
  		// }

      // if($name[1] == 'category'){
      //   $return = new Exception("Category rules for its itmes not category itself.", 1);
      //   echo new JResponseJson($return);
      // }else{
      //   $options = $this->getOptions($name[0]);
      //   // print_r($options);die;
      //   echo new JResponseJson($options);
      // }
      // // echo $name[1];die;

      $app->input->set('view', 'ajaxgroup');
      parent::display();

      JFactory::getApplication()->close();
    }

}
