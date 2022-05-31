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

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');
JHtml::_('behavior.keepalive');

// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_xcf/assets/css/xcf.css');
$document->addScript('components/com_xcf/assets/js/group.js');
?>
<script type="text/javascript">
    js = jQuery.noConflict();
    js(document).ready(function() {

    });

    Joomla.submitbutton = function(task)
    {
        if (task == 'group.cancel') {
            Joomla.submitform(task, document.getElementById('group-form'));
        }
        else {

            if (task != 'group.cancel' && document.formvalidator.isValid(document.id('group-form'))) {

                Joomla.submitform(task, document.getElementById('group-form'));
            }
            else {
                alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
            }
        }
    }
</script>

<form action="<?php echo JRoute::_('index.php?option=com_xcf&layout=edit&id=' . (int) $this->item->id); ?>" method="post" enctype="multipart/form-data" name="adminForm" id="group-form" class="form-validate">

    <div class="form-horizontal">
        <?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'general')); ?>

        <?php echo JHtml::_('bootstrap.addTab', 'myTab', 'general', JText::_('COM_XCF_TITLE_GROUP', true)); ?>
        <div class="row-fluid">
            <div class="span10 form-horizontal">
                <fieldset class="adminform">

          			<input type="hidden" name="jform[id]" value="<?php echo $this->item->id; ?>" />
          			<div class="control-group">
          				<div class="control-label"><?php echo $this->form->getLabel('name'); ?></div>
          				<div class="controls"><?php echo $this->form->getInput('name'); ?></div>
          			</div>
                <h3>Fields Rule</h3>
          			<div class="control-group">
          				<div class="control-label"><?php echo $this->form->getLabel('type'); ?></div>
          				<div class="controls"><?php echo $this->form->getInput('type'); ?></div>
          			</div>
          			<div id="category_option" class="control-group">
          				<div class="control-label"><?php echo $this->form->getLabel('category'); ?></div>
          				<div class="controls"><?php echo $this->form->getInput('category'); ?></div>
          			</div>
          			<div class="control-group">
          				<div class="control-label"><?php echo $this->form->getLabel('description'); ?></div>
          				<div class="controls"><?php echo $this->form->getInput('description'); ?></div>
          			</div>
          			<!-- <div class="control-group">
          				<div class="control-label"><?php //echo $this->form->getLabel('hidden_field'); ?></div>
          				<div class="controls"><?php //echo $this->form->getInput('hidden_field'); ?></div>
          			</div> -->
          			<div class="control-group">
          				<div class="control-label"><?php echo $this->form->getLabel('event'); ?></div>
          				<div class="controls"><?php echo $this->form->getInput('event'); ?></div>
          			</div>
          			<div class="control-group">
          				<div class="control-label"><?php echo $this->form->getLabel('state'); ?></div>
          				<div class="controls"><?php echo $this->form->getInput('state'); ?></div>
          			</div>

          			<input type="hidden" name="jform[ordering]" value="<?php echo $this->item->ordering; ?>" />
          			<input type="hidden" name="jform[checked_out]" value="<?php echo $this->item->checked_out; ?>" />
          			<input type="hidden" name="jform[checked_out_time]" value="<?php echo $this->item->checked_out_time; ?>" />

          			<?php if(empty($this->item->created_by)){ ?>
          				<input type="hidden" name="jform[created_by]" value="<?php echo JFactory::getUser()->id; ?>" />

          			<?php }
          			else{ ?>
          				<input type="hidden" name="jform[created_by]" value="<?php echo $this->item->created_by; ?>" />

          			<?php } ?>

              </fieldset>
          </div>
      </div>
      <?php echo JHtml::_('bootstrap.endTab'); ?>

        <?php //if (JFactory::getUser()->authorise('core.admin','xcf')) : ?>
        	<?php //echo JHtml::_('bootstrap.addTab', 'myTab', 'permissions', JText::_('JGLOBAL_ACTION_PERMISSIONS_LABEL', true)); ?>
        		<?php //echo $this->form->getInput('rules'); ?>
        	<?php //echo JHtml::_('bootstrap.endTab'); ?>
        <?php //endif; ?>

        <?php echo JHtml::_('bootstrap.endTabSet'); ?>

        <input type="hidden" name="task" value="" />
        <?php echo JHtml::_('form.token'); ?>


        
    </div>
</form>
