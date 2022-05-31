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
class XCFControllerGroup extends JControllerForm
{

    function __construct() {
        $this->view_list = 'groups';
        parent::__construct();
    }

    /**
  	 * Method to add a new record.
  	 *
  	 * @return  mixed  True if the record can be added, a error object if not.
  	 *
  	 * @since   12.2
  	 */
  	public function add()
  	{
  		$app = JFactory::getApplication();
  		$context = "$this->option.edit.$this->context";

  		// Access check.
  		if (!$this->allowAdd())
  		{
  			// Set the internal error and also the redirect error.
  			$this->setError(JText::_('JLIB_APPLICATION_ERROR_CREATE_RECORD_NOT_PERMITTED'));
  			$this->setMessage($this->getError(), 'error');

  			$this->setRedirect(
  				JRoute::_(
  					'index.php?option=' . $this->option . '&view=' . $this->view_list
  					. $this->getRedirectToListAppend(), false
  				)
  			);

  			return false;
  		}

  		// Clear the record edit information from the session.
  		$app->setUserState($context . '.data', null);

  		// Redirect to the edit screen.
  		$this->setRedirect(
  			JRoute::_(
  				'index.php?option=' . $this->option . '&view=' . $this->view_item
  				.'&extension=' . $app->input->get('extension','com_content')
  				. $this->getRedirectToItemAppend(), false
  			)
  		);

  		return true;
  	}

    /**
  	 * Method to edit an existing record.
  	 *
  	 * @param   string  $key     The name of the primary key of the URL variable.
  	 * @param   string  $urlVar  The name of the URL variable if different from the primary key
  	 * (sometimes required to avoid router collisions).
  	 *
  	 * @return  boolean  True if access level check and checkout passes, false otherwise.
  	 *
  	 * @since   12.2
  	 */
  	public function edit($key = null, $urlVar = null)
  	{
  		$app   = JFactory::getApplication();
  		$model = $this->getModel();
  		$table = $model->getTable();
  		$cid   = $this->input->post->get('cid', array(), 'array');
  		$context = "$this->option.edit.$this->context";

  		// Determine the name of the primary key for the data.
  		if (empty($key))
  		{
  			$key = $table->getKeyName();
  		}

  		// To avoid data collisions the urlVar may be different from the primary key.
  		if (empty($urlVar))
  		{
  			$urlVar = $key;
  		}

  		// Get the previous record id (if any) and the current record id.
  		$recordId = (int) (count($cid) ? $cid[0] : $this->input->getInt($urlVar));
  		$checkin = property_exists($table, 'checked_out');

  		// Access check.
  		if (!$this->allowEdit(array($key => $recordId), $key))
  		{
  			$this->setError(JText::_('JLIB_APPLICATION_ERROR_EDIT_NOT_PERMITTED'));
  			$this->setMessage($this->getError(), 'error');

  			$this->setRedirect(
  				JRoute::_(
  					'index.php?option=' . $this->option . '&view=' . $this->view_list
  					. $this->getRedirectToListAppend(), false
  				)
  			);

  			return false;
  		}

      $group = $this->getGroup($recordId);
      $type = $group->grouptype;
      $component = explode('.', $type);
      $extension = $component[0];

  		// Attempt to check-out the new record for editing and redirect.
  		if ($checkin && !$model->checkout($recordId))
  		{
  			// Check-out failed, display a notice but allow the user to see the record.
  			$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_CHECKOUT_FAILED', $model->getError()));
  			$this->setMessage($this->getError(), 'error');

  			$this->setRedirect(
  				JRoute::_(
  					'index.php?option=' . $this->option . '&view=' . $this->view_item
            .'&extension=' . $extension
  					. $this->getRedirectToItemAppend($recordId, $urlVar), false
  				)
  			);

  			return false;
  		}
  		else
  		{
  			// Check-out succeeded, push the new record id into the session.
  			$this->holdEditId($context, $recordId);
  			$app->setUserState($context . '.data', null);

  			$this->setRedirect(
  				JRoute::_(
  					'index.php?option=' . $this->option . '&view=' . $this->view_item
            .'&extension=' . $extension
  					. $this->getRedirectToItemAppend($recordId, $urlVar), false
  				)
  			);

  			return true;
  		}
  	}

    function getGroup($recordId){
      $db = JFactory::getDBo();
      $query = $db->getQuery(true);

  		$query->select('g.*,t.type as grouptype');
  		$query->from($db->quoteName('#__xcf_groups', 'g'));
  		$query->where('g.state = 1');
  		$query->where('g.id ='. $db->quote($recordId));
	    $query->join('LEFT', '#__xcf_types AS t ON t.id=g.type');


  		$db->setQuery($query);

  		return $db->loadObject();
    }
}
