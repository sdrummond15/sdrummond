<?php
/**
 * @version     1.0.0
 * @package     com_xcf
 * @copyright   Copyright (C) 2015. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Abu Huraira <shams.bd71@gmail.com> - http://www.themexpert.com
 */
// no direct access
defined('_JEXEC') or die;
$form = $this->form;
$fieldSets = $form->getFieldsets();

foreach ($fieldSets as $name => $fieldSet) :
  foreach ($form->getFieldset($name) as $field):
    echo $field->getControlGroup();
  endforeach;
endforeach;
