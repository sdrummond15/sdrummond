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

jimport('joomla.application.component.controllerform');

/**
 * Group controller class.
 */
class XCFControllerCategory extends JControllerAdmin
{

    function getList(){
      $app = JFactory::getApplication();
      $typeid = $app->input->get('type','', 'int');
      $db = JFactory::getDBo();
      $query = $db->getQuery(true);

  		$query->select('t.*');
  		$query->from($db->quoteName('#__xcf_types', 't'));
  		$query->where('t.id ='. $db->quote($typeid));

  		$db->setQuery($query);
      $type = $db->loadObject();

      $name = explode('.', $type->type);
      if($name[1] == 'category'){
        $return = new Exception("Category rules for its itmes not category itself.", 1);
        echo new JResponseJson($return);
      }else{
        $options = $this->getOptions($name[0]);
        // print_r($options);die;
        echo new JResponseJson($options);
      }
      // echo $name[1];die;

      JFactory::getApplication()->close();
    }

    /**
  	 * Method to get the field options for category
  	 * Use the extension attribute in a form to specify the.specific extension for
  	 * which categories should be displayed.
  	 * Use the show_root attribute to specify whether to show the global category root in the list.
  	 *
  	 * @return  array    The field option objects.
  	 *
  	 * @since   11.1
  	 */
  	protected function getOptions($extension)
  	{
  		$options = array();

  		// Load the category options for a given extension.
  		if (!empty($extension))
  		{
  				$options = JHtml::_('category.options', $extension);

  				array_unshift($options, JHtml::_('select.option', '0', JText::_('COM_XCF_ALL')));
  		}
  		else
  		{
  			JLog::add(JText::_('JLIB_FORM_ERROR_FIELDS_CATEGORY_ERROR_EXTENSION_EMPTY'), JLog::WARNING, 'jerror');
  		}

  		// Merge any additional options in the XML definition.
  		// $options = array_merge(parent::getOptions(), $options);
      $optionhtml = '';
      // $dropdown = JHTML::_('select.genericlist', $options, 'jform[category]', '', 'value', 'text', '');
      foreach ($options as $key => $value) {
        $optionhtml .= '<option value="'.$value->value.'">'.$value->text.'</option>';
      }


  		return $optionhtml;
  	}
}
