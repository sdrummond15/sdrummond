<?php

/**
 * @version     1.0.0
 * @package     com_xcf
 * @copyright   Copyright (C) 2015. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Abu Huraira <shams.bd71@gmail.com> - http://www.themexpert.com
 */
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');

/**
 * Methods supporting a list of XCF records.
 */
class XCFModelFields extends JModelList {

    /**
     * Constructor.
     *
     * @param    array    An optional associative array of configuration settings.
     * @see        JController
     * @since    1.6
     */
    public function __construct($config = array()) {
        if (empty($config['filter_fields'])) {
            $config['filter_fields'] = array(
                                'id', 'a.`id`',
                'title', 'a.`title`',
                'group', 'a.`group`',
                'type', 'a.`type`',
                'name', 'a.`name`',
                'label', 'a.`label`',
                'description', 'a.`description`',
                'ordering', 'a.`ordering`',
                'state', 'a.`state`',
                'created_by', 'a.`created_by`',

            );
        }

        parent::__construct($config);
    }

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     */
    protected function populateState($ordering = null, $direction = null) {
        // Initialise variables.
        $app = JFactory::getApplication('administrator');

        // Load the filter state.
        $search = $app->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);

        $published = $app->getUserStateFromRequest($this->context . '.filter.state', 'filter_published', '', 'string');
        $this->setState('filter.state', $published);


	      //Filtering type
		    $this->setState('filter.type', $app->getUserStateFromRequest($this->context.'.filter.type', 'filter_type', '', 'string'));

        //Filtering type
        $this->setState('filter.group', $app->getUserStateFromRequest($this->context.'.filter.group', 'filter_group', '', 'string'));


        // Load the parameters.
        $params = JComponentHelper::getParams('com_xcf');
        $this->setState('params', $params);

        // List state information.
        parent::populateState('a.title', 'asc');
    }

    /**
     * Method to get a store id based on model configuration state.
     *
     * This is necessary because the model is used by the component and
     * different modules that might need different sets of data or different
     * ordering requirements.
     *
     * @param	string		$id	A prefix for the store id.
     * @return	string		A store id.
     * @since	1.6
     */
    protected function getStoreId($id = '') {
        // Compile the store id.
        $id.= ':' . $this->getState('filter.search');
        $id.= ':' . $this->getState('filter.state');

        return parent::getStoreId($id);
    }

    /**
     * Build an SQL query to load the list data.
     *
     * @return	JDatabaseQuery
     * @since	1.6
     */
    protected function getListQuery() {
        // Create a new query object.
        $db = $this->getDbo();
        $query = $db->getQuery(true);

        // Select the required fields from the table.
        $query->select(
                $this->getState(
                        'list.select', 'DISTINCT a.*'
                )
        );
        $query->from('`#__xcf_fields` AS a');


		// Join over the users for the checked out user
		$query->select("uc.name AS editor");
		$query->join("LEFT", "#__users AS uc ON uc.id=a.checked_out");

		// Join over the users for the checked out user
		$query->select("g.name AS groupname");
		$query->join("LEFT", "#__xcf_groups AS g ON g.id=a.group");

		// Join over the user field 'created_by'
		$query->select('`created_by`.name AS `created_by`');
		$query->join('LEFT', '#__users AS `created_by` ON `created_by`.id = a.`created_by`');



		// Filter by published state
		$published = $this->getState('filter.state');
		if (is_numeric($published)) {
			$query->where('a.state = ' . (int) $published);
		} else if ($published === '') {
			$query->where('(a.state IN (0, 1))');
		}

        // Filter by search in title
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            if (stripos($search, 'id:') === 0) {
                $query->where('a.id = ' . (int) substr($search, 3));
            } else {
                $search = $db->Quote('%' . $db->escape($search, true) . '%');
                $query->where('( a.`title` LIKE '.$search.'  OR  a.`group` LIKE '.$search.'  OR  a.`type` LIKE '.$search.'  OR  a.`name` LIKE '.$search.' )');
            }
        }



  		//Filtering type
  		$filter_type = $this->state->get("filter.type");
  		if ($filter_type) {
  			$query->where("a.`type` = '".$db->escape($filter_type)."'");
  		}

      //Filtering type
  		$filter_group = $this->state->get("filter.group");
  		if ($filter_group) {
  			$query->where("a.`group` = '".$db->escape($filter_group)."'");
  		}


        // Add the list ordering clause.
        $orderCol = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        if ($orderCol && $orderDirn) {
            $query->order($db->escape($orderCol . ' ' . $orderDirn));
        }
        // echo $query->__toString();die;
        return $query;
    }

    public function getItems() {
        $items = parent::getItems();

		foreach ($items as $oneItem) {

			if (isset($oneItem->group)) {
				$values = explode(',', $oneItem->group);

				$textValue = array();
				foreach ($values as $value){
					if(!empty($value)){
						$db = JFactory::getDbo();
						$query = "SELECT * FROM #__xcf_groups WHERE state = 1 HAVING type LIKE '" . $value . "'";
						$db->setQuery($query);
						$results = $db->loadObject();
						if ($results) {
							$textValue[] = $results->name;
						}
					}
				}

			$oneItem->group = !empty($textValue) ? implode(', ', $textValue) : $oneItem->group;

			}
					$oneItem->type = JText::_('COM_XCF_FIELDS_TYPE_OPTION_' . strtoupper($oneItem->type));
		}
        return $items;
    }

}
