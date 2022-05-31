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

jimport('joomla.application.component.view');
require_once JPATH_SITE . '/plugins/content/xcf/xcf.php';
require_once JPATH_COMPONENT . '/helpers/xcf.php';
/**
 * View to edit
 */
class XCFViewAjaxGroup extends JViewLegacy {

    protected $state;
    protected $item;
    protected $form;

    /**
     * Display the view
     */
    public function display($tpl = null)
    {
      $app  = JFactory::getApplication();
      $id   = $app->input->get('id', '', 'int');
      $name = $app->input->get('content', '', 'string');

      // $content_type = $this->_getcontenttype();
      $content_type = PlgContentXCF::_getcontenttype();
      if (!in_array($name, $content_type))
      {
        return true;
      }

      $data = new stdClass;
      $data->catid = $id;
      $settings = XCFHelper::getSettings($name, $data);
      if(!isset($settings->id)) return;
      $fields = XCFHelper::getfields($settings->id);

      $formpath = JPATH_COMPONENT_ADMINISTRATOR . '/models/forms/empty.xml';
      // get the JForm object
      $form = JForm::getInstance('jform', $formpath, array('control' => 'jform'));

      $dispatcher = JEventDispatcher::getInstance();
      JPluginHelper::importPlugin('xcf');
      $dispatcher->trigger('onXCFPrepareForm', array ($name, $settings, $fields, $form, $data));
      $this->form = $form;
      $this->settings = $settings;
      // print_r($form);die;
      // Check for errors.
      if (count($errors = $this->get('Errors'))) {
          throw new Exception(implode("\n", $errors));
      }

      $this->setLayout('edit');
      parent::display($tpl);

    }

    /**
  	 * Retrieve Contact
  	 *
  	 * @param   int  $created_by  Id of the user who created the contact
  	 *
  	 * @return  mixed|null|integer
  	 */
  	protected function _getcontenttype()
  	{
  		$result = array();
      $db = JFactory::getDBo();
  		$query = $db->getQuery(true);

  		$query->select('type');
  		$query->from($db->quoteName('#__xcf_types', 'cg'));
  		// $query->where('cg.state = 1');

  		$db->setQuery($query);

  		$types = $db->loadAssocList();
  		foreach ($types as $key => $value) {
  			$result[]= $value['type'];
  		}

  		return $result;
  	}

}
