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

$app = JFactory::getApplication();

if ($app->isSite())
{
	JSession::checkToken('get') or die(JText::_('JINVALID_TOKEN'));
}
JHtml::_('bootstrap.tooltip');
JHtml::_('formbehavior.chosen', 'select');
JHtml::_('behavior.framework', true);
// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_xcf/assets/css/xcf.css');

$function  = $app->input->getCmd('function', 'jSelectXCFFields');
$context  = $app->input->getCmd('context');

$listOrder = $this->state->get('list.ordering');
$listDirn  = $this->state->get('list.direction');

// load groups
$groups = $this->getGroupLists($context);
?>
<?php if($groups): ?>
<script type="text/javascript">
	jQuery(document).ready(function () {
		jQuery('#clear-search-button').on('click', function () {
			jQuery('#filter_search').val('');
			jQuery('#adminForm').submit();
		});
	});
</script>
<h3><?php echo JText::_('COM_XCF_INSERT_GROUPS_TITLE'); ?></h3>
<hr>
<!--{xcf group,1}-->
<div class="well well-small">
	<?php foreach ($groups as $key => $group): ?>
		<a href="javascript:void(0)" href="<?php echo $group->id; ?>" class="btn btn-warning"
			onclick="if (window.parent) window.parent.<?php echo $this->escape($function);?>('xcf group', <?php echo $group->id; ?>);"
			>
			<?php echo $group->name; ?>
		</a>
	<?php endforeach; ?>
</div>

<h3><?php echo JText::_('COM_XCF_INSERT_FIELDS_TITLE'); ?></h3>
<hr>
<form action="<?php echo JRoute::_('index.php?option=com_xcf&view=fields'); ?>" method="post"
	name="adminForm" id="adminForm" class="form-inline">
			<div id="filter-bar" class="btn-toolbar">
				<div class="filter-search btn-group pull-left">
					<label for="filter_search" class="element-invisible"><?php echo JText::_('JSEARCH_FILTER'); ?></label>
					<input type="text" name="filter_search" id="filter_search" placeholder="<?php echo JText::_('JSEARCH_FILTER'); ?>" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" title="<?php echo JText::_('JSEARCH_FILTER'); ?>" />
				</div>
				<div class="btn-group pull-left">
					<button class="btn hasTooltip" type="submit" title="<?php echo JText::_('JSEARCH_FILTER_SUBMIT'); ?>">
						<i class="icon-search"></i></button>
					<button class="btn hasTooltip" id="clear-search-button" type="button" title="<?php echo JText::_('JSEARCH_FILTER_CLEAR'); ?>">
						<i class="icon-remove"></i></button>
				</div>
				<div class="btn-group pull-right hidden-phone">
					<label for="limit" class="element-invisible"><?php echo JText::_('JFIELD_PLG_SEARCH_SEARCHLIMIT_DESC'); ?></label>
					<?php echo $this->pagination->getLimitBox(); ?>
				</div>
				<div class="btn-group pull-right hidden-phone">
					<label for="directionTable" class="element-invisible"><?php echo JText::_('JFIELD_ORDERING_DESC'); ?></label>
					<select name="directionTable" id="directionTable" class="input-medium" onchange="Joomla.orderTable()">
						<option value=""><?php echo JText::_('JFIELD_ORDERING_DESC'); ?></option>
						<option value="asc" <?php if ($listDirn == 'asc')
						{
							echo 'selected="selected"';
						} ?>><?php echo JText::_('JGLOBAL_ORDER_ASCENDING'); ?></option>
						<option value="desc" <?php if ($listDirn == 'desc')
						{
							echo 'selected="selected"';
						} ?>><?php echo JText::_('JGLOBAL_ORDER_DESCENDING'); ?></option>
					</select>
				</div>
				<div class="btn-group pull-right">
					<label for="sortTable" class="element-invisible"><?php echo JText::_('JGLOBAL_SORT_BY'); ?></label>
					<select name="sortTable" id="sortTable" class="input-medium" onchange="Joomla.orderTable()">
						<option value=""><?php echo JText::_('JGLOBAL_SORT_BY'); ?></option>
						<?php echo JHtml::_('select.options', $sortFields, 'value', 'text', $listOrder); ?>
					</select>
				</div>
			</div>
			<div class="clearfix"></div>
			<?php if($this->items):?>
			<table class="table table-striped" id="fieldList">
				<thead>
				<tr>
					<th class='left'>
					<?php echo JHtml::_('grid.sort',  'COM_XCF_FIELDS_TITLE', 'a.`title`', $listDirn, $listOrder); ?>
					</th>
					<th class='left'>
					<?php echo JHtml::_('grid.sort',  'COM_XCF_FIELDS_GROUP', 'a.`group`', $listDirn, $listOrder); ?>
					</th>
					<th class='left'>
					<?php echo JHtml::_('grid.sort',  'COM_XCF_FIELDS_TYPE', 'a.`type`', $listDirn, $listOrder); ?>
					</th>
					<th class='left'>
					<?php echo JHtml::_('grid.sort',  'COM_XCF_FIELDS_NAME', 'a.`name`', $listDirn, $listOrder); ?>
					</th>
					<th class='left'>
						<?php echo JText::_('COM_XCF_FIELDS_ACTION'); ?>
					</th>
					<?php if (isset($this->items[0]->id)): ?>
						<th width="1%" class="nowrap center hidden-phone">
							<?php echo JHtml::_('grid.sort', 'JGRID_HEADING_ID', 'a.`id`', $listDirn, $listOrder); ?>
						</th>
					<?php endif; ?>
				</tr>
				</thead>
				<tfoot>
				<?php
				if (isset($this->items[0]))
				{
					$colspan = count(get_object_vars($this->items[0]));
				}
				else
				{
					$colspan = 10;
				}
				?>
				<tr>
					<td colspan="<?php echo $colspan ?>">
						<?php echo $this->pagination->getListFooter(); ?>
					</td>
				</tr>
				</tfoot>
				<tbody>
				<?php foreach ($this->items as $i => $item) :
					$ordering   = ($listOrder == 'a.ordering');
					?>
					<tr class="row<?php echo $i % 2; ?>">
						<td>
							<a href="javascript:void(0)" href="#" class="btn btn-warning"
								onclick="if (window.parent) window.parent.<?php echo $this->escape($function);?>('xcf field', <?php echo $item->id; ?>);"
								>
								<?php echo $this->escape($item->title); ?>
							</a>
						</td>
						<td>

							<?php echo $item->groupname; ?>
						</td>
						<td>

							<?php echo $item->type; ?>
						</td>
						<td>
							<?php echo $item->name; ?>
						</td>
						<td class='left'>
							<span class="label">{xcf field,<?php echo (int) $item->id; ?>}</span>
						</td>

						<?php if (isset($this->items[0]->id)): ?>
							<td class="center hidden-phone">
								<?php echo (int) $item->id; ?>
							</td>
						<?php endif; ?>
					</tr>
				<?php endforeach; ?>
				</tbody>
			</table>
			<?php endif; ?>
			<input type="hidden" name="task" value="" />
			<input type="hidden" name="boxchecked" value="0" />
			<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
			<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
			<?php echo JHtml::_('form.token'); ?>

</form>
<?php else: ?>
	<p class="alert alert-info">
		<?php echo JText::sprintf('COM_XCF_NO_GROUP_MATCH', $context); ?>
	</p>
<?php endif; ?>
