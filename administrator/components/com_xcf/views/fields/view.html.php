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

/**
 * View class for a list of XCF.
 */
class XCFViewFields extends JViewLegacy {

    protected $items;
    protected $pagination;
    protected $state;

    /**
     * Display the view
     */
    public function display($tpl = null) {
        $this->state = $this->get('State');
        $this->items = $this->get('Items');
        $this->pagination = $this->get('Pagination');

        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
            throw new Exception(implode("\n", $errors));
        }

        XCFHelper::addSubmenu('fields');

        $this->addToolbar();

        $this->sidebar = JHtmlSidebar::render();
        parent::display($tpl);
    }

    /**
     * Add the page title and toolbar.
     *
     * @since	1.6
     */
    protected function addToolbar() {
        require_once JPATH_COMPONENT . '/helpers/xcf.php';

        $state = $this->get('State');
        $canDo = XCFHelper::getActions($state->get('filter.category_id'));

        JToolBarHelper::title(JText::_('COM_XCF_TITLE_FIELDS_HEAD'), 'list-2');

        //Check if the form exists before showing the add/edit buttons
        $formPath = JPATH_COMPONENT_ADMINISTRATOR . '/views/field';
        if (file_exists($formPath)) {

            if ($canDo->get('core.create')) {
                JToolBarHelper::addNew('field.add', 'JTOOLBAR_NEW');
            }

            if ($canDo->get('core.edit') && isset($this->items[0])) {
                JToolBarHelper::editList('field.edit', 'JTOOLBAR_EDIT');
            }
        }

        if ($canDo->get('core.edit.state')) {

            if (isset($this->items[0]->state)) {
                JToolBarHelper::divider();
                JToolBarHelper::custom('fields.publish', 'publish.png', 'publish_f2.png', 'JTOOLBAR_PUBLISH', true);
                JToolBarHelper::custom('fields.unpublish', 'unpublish.png', 'unpublish_f2.png', 'JTOOLBAR_UNPUBLISH', true);
            } else if (isset($this->items[0])) {
                //If this component does not use state then show a direct delete button as we can not trash
                JToolBarHelper::deleteList('', 'fields.delete', 'JTOOLBAR_DELETE');
            }

            if (isset($this->items[0]->state)) {
                JToolBarHelper::divider();
                JToolBarHelper::archiveList('fields.archive', 'JTOOLBAR_ARCHIVE');
            }
            if (isset($this->items[0]->checked_out)) {
                JToolBarHelper::custom('fields.checkin', 'checkin.png', 'checkin_f2.png', 'JTOOLBAR_CHECKIN', true);
            }
        }

        //Show trash and delete for components that uses the state field
        if (isset($this->items[0]->state)) {
            if ($state->get('filter.state') == -2 && $canDo->get('core.delete')) {
                JToolBarHelper::deleteList('', 'fields.delete', 'JTOOLBAR_EMPTY_TRASH');
                JToolBarHelper::divider();
            } else if ($canDo->get('core.edit.state')) {
                JToolBarHelper::trash('fields.trash', 'JTOOLBAR_TRASH');
                JToolBarHelper::divider();
            }
        }

        if ($canDo->get('core.admin')) {
            JToolBarHelper::preferences('com_xcf');
        }

        //Set sidebar action - New in 3.0
        JHtmlSidebar::setAction('index.php?option=com_xcf&view=fields');

        $this->extra_sidebar = '';

		//Filter for the field type
		$select_label = JText::sprintf('COM_XCF_FILTER_SELECT_LABEL', 'Type');
		$options = array();
		$options[0] = new stdClass();
		$options[0]->value = "J_TEXT";
		$options[0]->text = "Text Field";
		$options[1] = new stdClass();
		$options[1]->value = "J_TEXTAREA";
		$options[1]->text = "Textarea Field";
		$options[2] = new stdClass();
		$options[2]->value = "J_IMAGE";
		$options[2]->text = "Image";
		$options[3] = new stdClass();
		$options[3]->value = "J_EDITOR";
		$options[3]->text = "Editor";
		$options[4] = new stdClass();
		$options[4]->value = "J_EMAIL";
		$options[4]->text = "Email";
		$options[5] = new stdClass();
		$options[5]->value = "J_URL";
		$options[5]->text = "Url";
		JHtmlSidebar::addFilter(
			$select_label,
			'filter_type',
			JHtml::_('select.options', $options , "value", "text", $this->state->get('filter.type'), true)
		);

		//Filter for the group type
		$options = array();
    $select_label = JText::sprintf('COM_XCF_FILTER_SELECT_LABEL', 'Group');
    $groupsmodel = JModelLegacy::getInstance('Groups', 'XCFModel');
    $items = $groupsmodel->getItems();
    if($items){
      foreach ($items as $key => $value) {
    		$options[$key] = new stdClass();
    		$options[$key]->value = $value->id;
    		$options[$key]->text = $value->name;
      }
    }else{
      $options[0] = new stdClass();
      $options[0]->value = '';
      $options[0]->text = '';
    }

		JHtmlSidebar::addFilter(
			$select_label,
			'filter_group',
			JHtml::_('select.options', $options , "value", "text", $this->state->get('filter.group'), true)
		);

		JHtmlSidebar::addFilter(

			JText::_('JOPTION_SELECT_PUBLISHED'),

			'filter_published',

			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), "value", "text", $this->state->get('filter.state'), true)

		);

    }

	protected function getSortFields()
	{
		return array(
		'a.`id`' => JText::_('JGRID_HEADING_ID'),
		'a.`title`' => JText::_('COM_XCF_FIELDS_TITLE'),
		'a.`group`' => JText::_('COM_XCF_FIELDS_GROUP'),
		'a.`type`' => JText::_('COM_XCF_FIELDS_TYPE'),
		'a.`name`' => JText::_('COM_XCF_FIELDS_NAME'),
		'a.`ordering`' => JText::_('JGRID_HEADING_ORDERING'),
		'a.`state`' => JText::_('JSTATUS'),
		);
	}

	public function getGroupLists($name)
	{
    $db = JFactory::getDBo();
    $db->getQuery(true);
    $query = $db->getQuery(true);

		$query->select('cg.*, t.type as groupname');
		$query->from($db->quoteName('#__xcf_groups', 'cg'));
		$query->where('cg.state = 1');
		$query->join('LEFT','#__xcf_types as t ON t.id=cg.type');
		$query->where('t.type = '. $db->quote($name));

		$db->setQuery($query);

		$result = $db->loadObjectList();

		return $result;
	}

}
