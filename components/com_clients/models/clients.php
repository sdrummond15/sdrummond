<?php

defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.model');


class ClientsModelClients extends JModelLegacy
{
    public static function getClients()
    {

        $db = JFactory::getDBO();
        $query = $db->getQuery(true);
        $query->select('c.id AS id, 
                        c.name AS name,
                        c.logo AS logo,
                        si.spsimpleportfolio_item_id AS id_portfolio,
                        si.alias AS alias_portfolio');
        $query->from('#__clients As c');
        $query->join('LEFT', '#__spsimpleportfolio_items AS si ON si.spsimpleportfolio_item_id = c.project');
        $query->where('c.published = 1');
        $query->order('c.ordering ASC');

        $db->setQuery($query);

        $item = $db->loadObjectList();
        //echo $query;
        return $item;
    }

    public static function getMenuPortfolio(){

        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('*');
        $query->from('#__menu As m');
        $query->where('link = "index.php?option=com_spsimpleportfolio&view=items"');

        $db->setQuery($query);
        $rows = (array) $db->loadObjectList();

        return $rows;
    }
}