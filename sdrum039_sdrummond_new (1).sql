SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `sd17_acymailing_action` (
  `action_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `frequency` int(10) UNSIGNED NOT NULL,
  `nextdate` int(10) UNSIGNED NOT NULL,
  `server` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `port` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `connection_method` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `secure_method` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `self_signed` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `conditions` text COLLATE utf8_unicode_ci,
  `actions` text COLLATE utf8_unicode_ci,
  `report` text COLLATE utf8_unicode_ci,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED DEFAULT '0',
  `delete_wrong_emails` tinyint(4) NOT NULL DEFAULT '0',
  `senderfrom` tinyint(4) NOT NULL DEFAULT '0',
  `senderto` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `sd17_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_config` (`namekey`, `value`) VALUES
('level', 'Starter'),
('version', '5.7.0'),
('from_name', 'Sdrummond'),
('from_email', 'contato@sdrummond.com.br'),
('mailer_method', 'smtp'),
('sendmail_path', '/usr/sbin/sendmail'),
('smtp_secured', 'ssl'),
('smtp_auth', '1'),
('smtp_username', 'contato@sdrummond.com.br'),
('smtp_password', 'sd15contato'),
('reply_name', 'Sdrummond'),
('reply_email', 'contato@sdrummond.com.br'),
('cron_sendto', 'wanderson@sdrummond.com.br'),
('bounce_email', ''),
('add_names', '1'),
('encoding_format', '8bit'),
('charset', 'UTF-8'),
('word_wrapping', '150'),
('hostname', ''),
('embed_images', '0'),
('embed_files', '1'),
('editor', 'acyeditor'),
('multiple_part', '1'),
('smtp_host', 'sdrummond.com.br'),
('smtp_port', '465'),
('queue_nbmail', '40'),
('queue_nbmail_auto', '70'),
('queue_type', 'auto'),
('queue_try', '3'),
('queue_pause', '900'),
('allow_visitor', '1'),
('require_confirmation', '0'),
('priority_newsletter', '3'),
('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),
('uploadfolder', 'media/com_acymailing/upload'),
('confirm_redirect', ''),
('subscription_message', '1'),
('notification_unsuball', ''),
('cron_next', '1578321125'),
('confirmation_message', '1'),
('welcome_message', '1'),
('unsub_message', '1'),
('cron_last', '0'),
('cron_fromip', ''),
('cron_report', ''),
('cron_frequency', '900'),
('cron_sendreport', '2'),
('cron_fullreport', '1'),
('cron_savereport', '2'),
('cron_savepath', 'media/com_acymailing/logs/report784763355.log'),
('notification_created', ''),
('notification_accept', ''),
('notification_refuse', ''),
('forward', '0'),
('description_starter', 'Joomla!™ Newsletter System'),
('description_essential', 'Joomla!™ Mailing Extension'),
('description_business', 'Joomla!™ Newsletter Extension'),
('description_enterprise', 'Joomla!™ Mailing Extension'),
('priority_followup', '2'),
('unsub_redirect', ''),
('show_footer', '1'),
('use_sef', '0'),
('itemid', '0'),
('css_module', 'default'),
('css_frontend', 'default'),
('css_backend', ''),
('bootstrap_frontend', '0'),
('menu_position', 'above'),
('unsub_reasons', 'a:2:{i:0;s:21:\"UNSUB_SURVEY_FREQUENT\";i:1;s:21:\"UNSUB_SURVEY_RELEVANT\";}'),
('installcomplete', '1'),
('Starter', '0'),
('Essential', '1'),
('Business', '2'),
('Enterprise', '3'),
('website', 'http://sdrummond.com.br/'),
('description_sidekick', 'Joomla!® E-mail Marketing'),
('security_key', 'pRbCq7qq5s36udZP6x9YhGSRWgiNnR'),
('Sidekick', '4'),
('acl_newsletters_abtesting', 'all'),
('captcha_plugin', 'no'),
('max_execution_time', '480'),
('latestversion', '5.10.21'),
('expirationdate', '0'),
('lastlicensecheck', '1620078931'),
('last_maxexec_check', '1513982664'),
('smtp_keepalive', '1'),
('elasticemail_username', ''),
('elasticemail_password', ''),
('elasticemail_port', 'rest'),
('special_chars', '0'),
('ssl_links', '0'),
('bounce_action_maxtry', 'noaction'),
('bounce_action_lists_maxtry', '2'),
('sendorder', 'subid,ASC'),
('autosub', 'None'),
('allow_modif', 'data'),
('generate_name', '1'),
('notification_unsub', ''),
('notification_contact', ''),
('notification_contact_menu', ''),
('notification_confirm', ''),
('sub_redirect', ''),
('modif_redirect', ''),
('module_redirect', ''),
('redirect_tags', '0'),
('unsubscription_message', '1'),
('confirm_message', '0'),
('comments_feature', ''),
('disqus_shortname', ''),
('frontend_subject', '1'),
('frontend_print', '0'),
('show_description', '1'),
('show_filter', '1'),
('show_order', '1'),
('show_senddate', '1'),
('open_popup', '1'),
('popup_width', '750'),
('popup_height', '550'),
('indexFollow', '1'),
('unsub_intro', 'UNSUB_INTRO'),
('unsub_dispoptions', '1'),
('unsub_dispothersubs', '0'),
('unsub_survey', '1'),
('acyrss_format', ''),
('acyrss_name', ''),
('acyrss_description', ''),
('acyrss_element', '20'),
('acyrss_order', 'senddate'),
('email_checkdomain', '0'),
('email_botscout', '0'),
('email_botscout_key', ''),
('email_stopforumspam', '0'),
('email_iptimecheck', '0'),
('mediafolder', 'media/com_acymailing/upload'),
('import_params', 'generatename');

CREATE TABLE `sd17_acymailing_fields` (
  `fieldid` smallint(5) UNSIGNED NOT NULL,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` smallint(5) UNSIGNED DEFAULT '99',
  `options` text,
  `core` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `backend` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) UNSIGNED DEFAULT NULL,
  `frontlisting` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `fieldcat` int(11) NOT NULL DEFAULT '0',
  `listingfilter` tinyint(4) DEFAULT NULL,
  `frontlistingfilter` tinyint(4) DEFAULT NULL,
  `frontform` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_fields` (`fieldid`, `fieldname`, `namekey`, `type`, `value`, `published`, `ordering`, `options`, `core`, `required`, `backend`, `frontcomp`, `default`, `listing`, `frontlisting`, `frontjoomlaprofile`, `frontjoomlaregistration`, `joomlaprofile`, `access`, `fieldcat`, `listingfilter`, `frontlistingfilter`, `frontform`) VALUES
(1, 'NAMECAPTION', 'name', 'text', '', 1, 1, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0, NULL, NULL, 1),
(2, 'EMAILCAPTION', 'email', 'text', '', 1, 2, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0, NULL, NULL, 1),
(3, 'RECEIVE', 'html', 'radio', '0::JOOMEXT_TEXT\n1::HTML', 1, 3, '', 1, 1, 1, 1, '1', 1, 0, 0, 0, 0, 'all', 0, NULL, NULL, 1);

CREATE TABLE `sd17_acymailing_filter` (
  `filid` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) UNSIGNED DEFAULT NULL,
  `lasttime` int(10) UNSIGNED DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `sd17_acymailing_forward` (
  `subid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbforwarded` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `sd17_acymailing_geolocation` (
  `geolocation_id` int(10) UNSIGNED NOT NULL,
  `geolocation_subid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  `geolocation_continent` varchar(255) NOT NULL DEFAULT '',
  `geolocation_timezone` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `sd17_acymailing_history` (
  `subid` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_history` (`subid`, `date`, `ip`, `action`, `data`, `source`, `mailid`) VALUES
(2, 1494616221, '191.249.165.40', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::http://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::191.249.165.40\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(2, 1494616318, '191.249.165.40', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::http://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=2\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::191.249.165.40\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(3, 1509644846, '179.179.219.175', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::179.179.219.175\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(4, 1509645013, '179.179.219.175', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::179.179.219.175\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(5, 1513794464, '177.157.183.190', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(6, 1513794496, '177.157.183.190', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(6, 1513794507, '177.157.183.190', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=6\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(7, 1513794563, '177.157.183.190', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(8, 1513794612, '177.157.183.190', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(9, 1513796582, '177.157.183.190', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(8, 1513796590, '177.157.183.190', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=8\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(7, 1513796598, '177.157.183.190', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=7\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(6, 1513796608, '177.157.183.190', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=6\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(10, 1513797644, '177.157.183.190', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(11, 1513801123, '177.157.183.190', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(11, 1513801131, '177.157.183.190', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=11\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(12, 1513801178, '177.157.183.190', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(13, 1513801240, '177.157.183.190', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.157.183.190\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(14, 1513943383, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(15, 1513943475, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(16, 1513943997, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(17, 1513944064, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(18, 1513945317, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(19, 1513945354, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(20, 1513945419, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(21, 1513945483, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(22, 1513945533, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(23, 1513945583, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(24, 1513947234, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(25, 1513947309, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(26, 1513947398, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(27, 1513947453, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(28, 1513947507, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(29, 1513947623, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(30, 1513947724, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(31, 1513947772, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(32, 1513947832, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(33, 1513947883, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(34, 1513947902, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(35, 1513947920, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(36, 1513947985, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(37, 1513948141, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(38, 1513948180, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(39, 1513948226, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(40, 1513948331, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(41, 1513948357, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(42, 1513948664, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(43, 1513949075, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(44, 1513949139, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(45, 1513949299, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(46, 1513949336, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(47, 1513949606, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(48, 1513950054, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(49, 1513950424, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(50, 1513950458, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(51, 1513950490, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(52, 1513950542, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(53, 1513950576, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(54, 1513950731, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(55, 1513950756, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(56, 1513950812, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(57, 1513950844, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(58, 1513950892, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(59, 1513950955, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(60, 1513950976, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(61, 1513951016, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(62, 1513951058, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(63, 1513951118, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(64, 1513951136, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(65, 1513951172, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(66, 1513951245, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(66, 1513965910, '177.134.121.35', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(67, 1513966126, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(68, 1513966286, '177.134.121.35', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::177.134.121.35\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(69, 1513971245, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(70, 1513971328, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(71, 1513971376, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(72, 1513972327, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(73, 1513972483, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(74, 1513972570, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(75, 1513972649, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(76, 1513972709, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(77, 1513973078, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(78, 1513973154, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(79, 1513973213, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(80, 1513973346, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(81, 1513973425, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(82, 1513973461, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(83, 1513973507, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(82, 1513973520, '186.206.237.152', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=82\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(84, 1513973624, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(85, 1513973746, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0);
INSERT INTO `sd17_acymailing_history` (`subid`, `date`, `ip`, `action`, `data`, `source`, `mailid`) VALUES
(86, 1513974135, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(87, 1513974235, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(88, 1513974282, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(89, 1513974441, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(90, 1513974528, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(91, 1513975061, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(92, 1513975738, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(93, 1513975768, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(94, 1513975939, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(95, 1513976085, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(96, 1513976176, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(97, 1513976230, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(63, 1513976245, '186.206.237.152', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=63\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(98, 1513976321, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(99, 1513976419, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(100, 1513976536, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(101, 1513976582, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(102, 1513976654, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(103, 1513976707, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(104, 1513976764, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(105, 1513976865, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(11, 1513976899, '186.206.237.152', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=11\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(106, 1513976960, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(107, 1513977029, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(105, 1513979365, '186.206.237.152', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=105\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(108, 1513979494, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(109, 1513979531, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(110, 1513979576, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(111, 1513979621, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(112, 1513979668, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(113, 1513979724, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(114, 1513979804, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(115, 1513979907, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(116, 1513980203, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(117, 1513980252, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(118, 1513980364, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(119, 1513980444, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(120, 1513980508, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(120, 1513980520, '186.206.237.152', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=120\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(121, 1513980560, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(122, 1513980642, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(123, 1513980699, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(124, 1513980779, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(125, 1513980849, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(126, 1513980881, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(127, 1513981055, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=newsletter\nQUERY_STRING::option=com_acymailing&ctrl=newsletter', 0),
(128, 1513981729, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(129, 1513981814, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(130, 1513981888, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(131, 1513981931, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(132, 1513982002, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(133, 1513982064, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(134, 1513982130, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(135, 1513982182, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(136, 1513982294, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=newsletter\nQUERY_STRING::option=com_acymailing&ctrl=newsletter', 0),
(137, 1513982869, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(138, 1513983129, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(139, 1513983188, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(140, 1513983258, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(141, 1513983415, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(142, 1513983492, '186.206.237.152', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::186.206.237.152\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(143, 1514462223, '191.249.60.177', 'created', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::191.249.60.177\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(126, 1514462238, '191.249.60.177', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=126\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::191.249.60.177\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(21, 1514462303, '191.249.60.177', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=21\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::191.249.60.177\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0),
(3, 1514462323, '191.249.60.177', 'modified', 'EXECUTED_BY::635 ( sdrummond )', 'HTTP_REFERER::https://sdrummond.com.br/administrator/index.php?option=com_acymailing&ctrl=subscriber&task=edit&subid=3\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\nHTTP_HOST::sdrummond.com.br\nSERVER_ADDR::108.179.192.233\nREMOTE_ADDR::191.249.60.177\nREQUEST_URI::/administrator/index.php?option=com_acymailing&ctrl=subscriber\nQUERY_STRING::option=com_acymailing&ctrl=subscriber', 0);

CREATE TABLE `sd17_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) UNSIGNED DEFAULT '0',
  `listid` smallint(5) UNSIGNED NOT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  `category` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_list` (`name`, `description`, `ordering`, `listid`, `published`, `userid`, `alias`, `color`, `visible`, `welmailid`, `unsubmailid`, `type`, `access_sub`, `access_manage`, `languages`, `startrule`, `category`) VALUES
('Newsletters', 'Receive our latest news', 3, 1, 1, 635, 'mailing_list', '#3366ff', 1, NULL, NULL, 'list', 'all', 'none', 'all', '0', ''),
('Clientes', '', 2, 2, 1, 635, 'clientes', '#339900', 1, NULL, 0, 'list', 'all', 'none', 'all', '0', 'Clientes'),
('Cotas Jaraguá', '', 1, 3, 1, 635, 'cotas-jaragua', '#157D69', 1, NULL, 0, 'list', 'all', 'none', 'all', '0', '');

CREATE TABLE `sd17_acymailing_listcampaign` (
  `campaignid` smallint(5) UNSIGNED NOT NULL,
  `listid` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `sd17_acymailing_listmail` (
  `listid` smallint(5) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_listmail` (`listid`, `mailid`) VALUES
(2, 11),
(3, 12);

CREATE TABLE `sd17_acymailing_listsub` (
  `listid` smallint(5) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `subdate` int(10) UNSIGNED DEFAULT NULL,
  `unsubdate` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_listsub` (`listid`, `subid`, `subdate`, `unsubdate`, `status`) VALUES
(1, 1, 1494615821, NULL, 1),
(2, 2, 1494616318, NULL, 1),
(1, 3, 1509644846, NULL, 1),
(1, 4, 1509645013, NULL, 1),
(2, 5, 1513794464, NULL, 1),
(2, 9, 1513796582, NULL, 1),
(2, 8, 1513796590, NULL, 1),
(2, 7, 1513796598, NULL, 1),
(2, 6, 1513796608, NULL, 1),
(2, 10, 1513797644, NULL, 1),
(2, 11, 1513801131, NULL, 1),
(2, 12, 1513801178, NULL, 1),
(2, 13, 1513801240, NULL, 1),
(2, 14, 1513943383, NULL, 1),
(2, 15, 1513943475, NULL, 1),
(2, 16, 1513943997, NULL, 1),
(2, 17, 1513944064, NULL, 1),
(2, 18, 1513945317, NULL, 1),
(2, 19, 1513945354, NULL, 1),
(2, 20, 1513945419, NULL, 1),
(2, 21, 1514462304, NULL, 1),
(2, 22, 1513945533, NULL, 1),
(2, 23, 1513945583, NULL, 1),
(2, 24, 1513947234, NULL, 1),
(2, 25, 1513947309, NULL, 1),
(2, 26, 1513947398, NULL, 1),
(2, 27, 1513947453, NULL, 1),
(2, 28, 1513947507, NULL, 1),
(2, 29, 1513947623, NULL, 1),
(2, 30, 1513947724, NULL, 1),
(2, 31, 1513947772, NULL, 1),
(2, 32, 1513947832, NULL, 1),
(2, 33, 1513947883, NULL, 1),
(2, 34, 1513947902, NULL, 1),
(2, 35, 1513947920, NULL, 1),
(2, 36, 1513947985, NULL, 1),
(2, 37, 1513948141, NULL, 1),
(2, 38, 1513948180, NULL, 1),
(2, 39, 1513948226, NULL, 1),
(2, 40, 1513948331, NULL, 1),
(2, 41, 1513948357, NULL, 1),
(2, 42, 1513948664, NULL, 1),
(2, 43, 1513949075, NULL, 1),
(2, 44, 1513949139, NULL, 1),
(2, 45, 1513949299, NULL, 1),
(2, 46, 1513949336, NULL, 1),
(2, 47, 1513949606, NULL, 1),
(2, 48, 1513950054, NULL, 1),
(2, 49, 1513950424, NULL, 1),
(2, 50, 1513950458, NULL, 1),
(2, 51, 1513950490, NULL, 1),
(2, 52, 1513950542, NULL, 1),
(2, 53, 1513950576, NULL, 1),
(2, 54, 1513950731, NULL, 1),
(2, 55, 1513950756, NULL, 1),
(2, 56, 1513950812, NULL, 1),
(2, 57, 1513950844, NULL, 1),
(2, 58, 1513950892, NULL, 1),
(2, 59, 1513950955, NULL, 1),
(2, 60, 1513950976, NULL, 1),
(2, 61, 1513951016, NULL, 1),
(2, 62, 1513951058, NULL, 1),
(2, 64, 1513951136, NULL, 1),
(2, 65, 1513951172, NULL, 1),
(2, 66, 1513951245, NULL, 1),
(2, 67, 1513966126, NULL, 1),
(2, 68, 1513966286, NULL, 1),
(2, 69, 1513971246, NULL, 1),
(2, 70, 1513971328, NULL, 1),
(2, 71, 1513971376, NULL, 1),
(2, 72, 1513972327, NULL, 1),
(2, 73, 1513972483, NULL, 1),
(2, 74, 1513972570, NULL, 1),
(2, 75, 1513972649, NULL, 1),
(2, 76, 1513972709, NULL, 1),
(2, 77, 1513973078, NULL, 1),
(2, 78, 1513973154, NULL, 1),
(2, 79, 1513973213, NULL, 1),
(2, 80, 1513973346, NULL, 1),
(2, 81, 1513973425, NULL, 1),
(2, 83, 1513973507, NULL, 1),
(2, 82, 1513973520, NULL, 1),
(2, 84, 1513973624, NULL, 1),
(2, 85, 1513973746, NULL, 1),
(2, 86, 1513974135, NULL, 1),
(2, 87, 1513974235, NULL, 1),
(2, 88, 1513974282, NULL, 1),
(2, 89, 1513974441, NULL, 1),
(2, 90, 1513974528, NULL, 1),
(2, 91, 1513975061, NULL, 1),
(2, 92, 1513975738, NULL, 1),
(2, 93, 1513975768, NULL, 1),
(2, 94, 1513975939, NULL, 1),
(2, 95, 1513976085, NULL, 1),
(2, 96, 1513976176, NULL, 1),
(2, 97, 1513976230, NULL, 1),
(2, 63, 1513976245, NULL, 1),
(2, 98, 1513976321, NULL, 1),
(2, 99, 1513976419, NULL, 1),
(2, 100, 1513976536, NULL, 1),
(2, 101, 1513976582, NULL, 1),
(2, 102, 1513976654, NULL, 1),
(2, 103, 1513976707, NULL, 1),
(2, 104, 1513976764, NULL, 1),
(2, 106, 1513976960, NULL, 1),
(2, 107, 1513977029, NULL, 1),
(2, 105, 1513979365, NULL, 1),
(2, 108, 1513979494, NULL, 1),
(2, 109, 1513979531, NULL, 1),
(2, 110, 1513979576, NULL, 1),
(2, 111, 1513979621, NULL, 1),
(2, 112, 1513979668, NULL, 1),
(2, 113, 1513979724, NULL, 1),
(2, 114, 1513979804, NULL, 1),
(2, 115, 1513979907, NULL, 1),
(2, 116, 1513980203, NULL, 1),
(2, 117, 1513980252, NULL, 1),
(2, 118, 1513980364, NULL, 1),
(2, 119, 1513980444, NULL, 1),
(2, 120, 1513980520, NULL, 1),
(2, 121, 1513980560, NULL, 1),
(2, 122, 1513980642, NULL, 1),
(2, 123, 1513980699, NULL, 1),
(2, 124, 1513980779, NULL, 1),
(2, 125, 1513980849, NULL, 1),
(2, 128, 1513981729, NULL, 1),
(2, 129, 1513981814, NULL, 1),
(2, 130, 1513981888, NULL, 1),
(2, 131, 1513981931, NULL, 1),
(2, 132, 1513982002, NULL, 1),
(2, 133, 1513982064, NULL, 1),
(2, 134, 1513982130, NULL, 1),
(2, 135, 1513982182, NULL, 1),
(2, 137, 1513982869, NULL, 1),
(2, 138, 1513983129, NULL, 1),
(2, 139, 1513983188, NULL, 1),
(2, 140, 1513983258, NULL, 1),
(2, 141, 1513983415, NULL, 1),
(2, 142, 1513983492, NULL, 1),
(2, 143, 1514462224, NULL, 1),
(2, 126, 1514462238, NULL, 1),
(2, 3, 1514462323, NULL, 1),
(3, 144, 1571672995, NULL, 1),
(3, 145, 1571672995, NULL, 1),
(3, 146, 1571672995, NULL, 1),
(3, 147, 1571672995, NULL, 1),
(3, 148, 1571672995, NULL, 1),
(3, 149, 1571672995, NULL, 1),
(3, 150, 1571672995, NULL, 1),
(3, 152, 1571672995, NULL, 1),
(3, 153, 1571672995, NULL, 1),
(3, 154, 1571672995, NULL, 1),
(3, 155, 1571672995, NULL, 1),
(3, 156, 1571672995, NULL, 1),
(3, 157, 1571672995, NULL, 1),
(3, 158, 1571672995, NULL, 1),
(3, 159, 1571672995, NULL, 1),
(3, 160, 1571672995, NULL, 1),
(3, 161, 1571672995, NULL, 1),
(3, 162, 1571672995, NULL, 1),
(3, 163, 1571672995, NULL, 1),
(3, 164, 1571672995, NULL, 1),
(3, 165, 1571672995, NULL, 1),
(3, 171, 1578320903, NULL, 1),
(3, 167, 1571672995, NULL, 1),
(3, 168, 1571672995, NULL, 1),
(3, 170, 1571672995, NULL, 1),
(3, 172, 1578320903, NULL, 1),
(3, 173, 1578320903, NULL, 1),
(3, 174, 1578320903, NULL, 1),
(3, 175, 1578320903, NULL, 1),
(3, 176, 1578320903, NULL, 1),
(3, 177, 1578320903, NULL, 1),
(3, 178, 1578320903, NULL, 1),
(3, 179, 1578320903, NULL, 1),
(3, 180, 1578320903, NULL, 1),
(3, 181, 1578320903, NULL, 1),
(3, 182, 1578320903, NULL, 1),
(3, 183, 1578320903, NULL, 1),
(3, 184, 1578320903, NULL, 1),
(3, 185, 1578320903, NULL, 1),
(3, 186, 1578320903, NULL, 1),
(3, 187, 1578320903, NULL, 1),
(3, 188, 1578320903, NULL, 1),
(3, 189, 1578320903, NULL, 1);

CREATE TABLE `sd17_acymailing_mail` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `subject` text,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) UNSIGNED DEFAULT NULL,
  `created` int(10) UNSIGNED DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification','action') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) UNSIGNED DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `language` varchar(50) NOT NULL DEFAULT '',
  `abtesting` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `summary` text NOT NULL,
  `favicon` text,
  `bccaddresses` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_mail` (`mailid`, `subject`, `body`, `altbody`, `published`, `senddate`, `created`, `fromname`, `fromemail`, `replyname`, `replyemail`, `type`, `visible`, `userid`, `alias`, `attach`, `html`, `tempid`, `key`, `frequency`, `params`, `sentby`, `metakey`, `metadesc`, `filter`, `language`, `abtesting`, `thumb`, `summary`, `favicon`, `bccaddresses`) VALUES
(1, 'New Subscriber on your website : {user:email}', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_created', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(2, 'A User unsubscribed from all your lists : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsuball', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(3, 'A User unsubscribed : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsub', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(4, 'A User refuses to receive e-mails from your website : {user:email}', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_refuse', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(5, 'New contact from your website : {user:email}', '<p>Hello {subtag:name},</p><p>A user has contacted you : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(6, 'A user confirm his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user has confirmed his subscription in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_confirm', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(7, '{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}', '<div style=\"text-align: center; width: 100%; background-color: #ffffff;\">\r\n			<table style=\"text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" align=\"center\" bgcolor=\"#ebebeb\">\r\n			<tbody>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"38px\"><img src=\"media/com_acymailing/templates/newsletter-4/images/top.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			<tr>\r\n			<td style=\"text-align:center\" width=\"600\">\r\n			<table style=\"margin:auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"520\">\r\n			<tbody>\r\n			<tr>\r\n			<td style=\"background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;\">\r\n			<h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style=\"text-align:center;\"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n			</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</td>\r\n			</tr>\r\n			<tr style=\"line-height: 0px;\">\r\n			<td style=\"line-height: 0px;\" height=\"40px\"><img src=\"media/com_acymailing/templates/newsletter-4/images/bottom.png\" border=\"0\" alt=\" - - - \" /></td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</div>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'confirmation', NULL, 1, 1, NULL, NULL, 'a:3:{s:6:\"action\";s:7:\"confirm\";s:13:\"actionbtntext\";s:28:\"{trans:CONFIRM_SUBSCRIPTION}\";s:9:\"actionurl\";s:19:\"{confirm}{/confirm}\";}', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(8, 'AcyMailing Cron Report {mainreport}', '<p>{report}</p><p>{detailreport}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'report', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(9, 'Modify your subscription', '<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'modif', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(10, 'A user subscribed or modified his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact_menu', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL),
(11, 'Feliz Natal e um Próspero 2018', '<div style=\"text-align: center;\"><img alt=\"\" height=\"1397\" src=\"http://sdrummond.com.br/media/com_acymailing/upload/cartao_natal.jpg\" style=\" height:1397px;  width:1000px; \" width=\"1000\"></div>', '', 1, 1514462358, 1513981041, '', '', '', '', 'news', 1, 635, 'feliz-natal-e-um-prospero-2018', NULL, 1, 0, 'BDo4cMsc', NULL, NULL, 635, '', '', NULL, '', NULL, NULL, '', NULL, ''),
(12, 'Cotação Cota Clube Jaraguá', 'Boa Tarde!<br />\r\nEstou interessado em comprar a Cota. Quero saber o pre&ccedil;o, e se existe negocia&ccedil;&atilde;o no pre&ccedil;o apresentado?<br />\r\n<br />\r\nAtenciosamente,<br />\r\nSilvio Drummond<br />\r\n31 99278 9954', '', 1, 1578320979, 1571672754, '', '', '', '', 'news', 1, 635, 'cotacao-cota-clube-jaragua', NULL, 1, 0, 'umEslXZW', NULL, NULL, 635, '', '', NULL, '', NULL, NULL, '', NULL, '');

CREATE TABLE `sd17_acymailing_queue` (
  `senddate` int(10) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `priority` tinyint(3) UNSIGNED DEFAULT '3',
  `try` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `sd17_acymailing_rules` (
  `ruleid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `sd17_acymailing_stats` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `senthtml` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `senttext` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `senddate` int(10) UNSIGNED NOT NULL,
  `openunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `opentotal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `fail` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `clicktotal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `unsub` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forward` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `bouncedetails` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_stats` (`mailid`, `senthtml`, `senttext`, `senddate`, `openunique`, `opentotal`, `bounceunique`, `fail`, `clicktotal`, `clickunique`, `unsub`, `forward`, `bouncedetails`) VALUES
(11, 139, 0, 1514462359, 47, 115, 0, 0, 0, 0, 0, 0, NULL),
(12, 72, 0, 1578321005, 26, 186, 0, 0, 0, 0, 0, 0, NULL);

CREATE TABLE `sd17_acymailing_subscriber` (
  `subid` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL,
  `created` int(10) UNSIGNED DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastsent_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_subscriber` (`subid`, `email`, `userid`, `name`, `created`, `confirmed`, `enabled`, `accept`, `ip`, `html`, `key`, `confirmed_date`, `confirmed_ip`, `lastopen_date`, `lastopen_ip`, `lastclick_date`, `lastsent_date`, `source`) VALUES
(1, 'wanderson@sdrummond.com.br', 635, 'Sdrummond', 1489188946, 1, 1, 1, NULL, 1, 't6RHwQ5z9oz2Sj', 0, NULL, 0, NULL, 0, 0, ''),
(2, 'wandersonmg18@gmail.com', 0, 'Wanderson', 1494616221, 1, 1, 1, '191.249.165.40', 1, 'lpwgXoR8wXK5xQ', 0, NULL, 1514020897, '66.102.8.7', 0, 1513984236, 'management_back'),
(3, 'louise@delimassaalimentos.com.br', 0, 'Louise - Delimassa', 1509644846, 1, 1, 1, '179.179.219.175', 1, 'VriBuyBVd3LKW7', 0, NULL, 0, NULL, 0, 1514462359, 'management_back'),
(4, 'silvio.barreto@sbsinfor.com.br', 0, 'SILVIO BARRETO DOS SANTOS', 1509645013, 1, 1, 1, '179.179.219.175', 1, 'LsnQxnVbJCOD3s', 0, NULL, 0, NULL, 0, 0, 'management_back'),
(5, 'andre@famplasticos.com.br', 0, 'André - FAM Plásticos', 1513794464, 1, 1, 1, '177.157.183.190', 1, 'P4wvC3tdKuVpUe', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(6, 'cintia@fococd.com.br', 0, 'Cintia - Foco Centro de Desenvolvimento', 1513794496, 1, 1, 1, '177.157.183.190', 1, 'C7czE26H4bNR2L', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(7, 'suzana@suzanasartori.com.br', 0, 'Suzana Sartori', 1513794563, 1, 1, 1, '177.157.183.190', 1, 'ZYydvSldNoshHg', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(8, 'carolina.sartori@suzanasartori.com.br', 0, 'Carolina Sartori', 1513794612, 1, 1, 1, '177.157.183.190', 1, 'VFcheaoZBJGAvb', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(9, 'b.maia@oi.com.br', 0, 'Bruno - Distribuidora Maia', 1513796582, 1, 1, 1, '177.157.183.190', 1, 'x9zM6wvfa0M66r', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(10, 'fabio@olimex.com.br', 0, 'Fábio Borçato - Olimex', 1513797644, 1, 1, 1, '177.157.183.190', 1, 'aEK3bnzj2sjfrM', 0, NULL, 1514306877, '66.102.8.7', 0, 1513984236, 'management_back'),
(11, 'jair.mesquita@olimex.com.br', 0, 'Jair - Olimex', 1513801123, 1, 1, 1, '177.157.183.190', 1, 'KoLBm4AmGxqDow', 0, NULL, 1514157956, '177.79.8.106', 0, 1513984236, 'management_back'),
(12, 'comercial@accix.com.br', 0, 'Cleber - ACCIX', 1513801178, 1, 1, 1, '177.157.183.190', 1, 'gEDqzi3jgO6VYY', 0, NULL, 1514282644, '179.104.32.221', 0, 1513984236, 'management_back'),
(13, 'patricia@aguaflorenca.com.br', 0, 'Patrícia - Água Florença', 1513801240, 1, 1, 1, '177.157.183.190', 1, 'EIh9lcj6n0Q7nW', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(14, 'dumalta@uol.com.br', 0, 'Eduardo Malta', 1513943383, 1, 1, 1, '177.134.121.35', 1, 'bRoLCUjwvKJPT5', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(15, 'capitularcomunicacao@gmail.com', 0, 'Tamara Lima', 1513943475, 1, 1, 1, '177.134.121.35', 1, 'SUL3V5THFWEJzs', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(16, 'karlaemmerich@hotmail.com', 0, 'Karla - ACTRANS MG', 1513943997, 1, 1, 1, '177.134.121.35', 1, 'Jjhno29B4aTNWd', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(17, 'marina@amda.org.br', 0, 'Marina - AMDA', 1513944064, 1, 1, 1, '177.134.121.35', 1, '4x9RSHQIa7XdlW', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(18, 'fabricio@antecipa.com.br', 0, 'Fabrício Rocha', 1513945317, 1, 1, 1, '177.134.121.35', 1, 'eNoVICDmQFq7Xf', 0, NULL, 1514025880, '177.182.171.41', 0, 1513984236, 'management_back'),
(19, 'brenoelias@hotmail.com', 0, 'Breno Elias', 1513945354, 1, 1, 1, '177.134.121.35', 1, '4dNLiP4HgeGAMR', 0, NULL, 1514409219, '186.206.162.144', 0, 1513984236, 'management_back'),
(20, 'financeiro@desentupidorabetel.com.br', 0, 'Alessandra - BETEL', 1513945419, 1, 1, 1, '177.134.121.35', 1, '7fofJCEgnNwf7M', 0, NULL, 1514315233, '66.102.8.5', 0, 1513984236, 'management_back'),
(21, 'brunod.molina@gmail.com', 0, 'Bruno Molina - BH Consórcio', 1513945483, 1, 1, 1, '177.134.121.35', 1, 'CvV3iVC78PaA41', 0, NULL, 1514463937, '66.102.8.5', 0, 1514462359, 'management_back'),
(22, 'sirley@bhvet.com.br', 0, 'Sirley - BH VET', 1513945533, 1, 1, 1, '177.134.121.35', 1, 'kw4dve4NmrkrLy', 0, NULL, 1514994805, '191.249.168.73', 0, 1513984236, 'management_back'),
(23, 'marcelosanches@bhvet.com.br', 0, 'Marcelo Sanches', 1513945583, 1, 1, 1, '177.134.121.35', 1, 'hL56LAi59bsRuG', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(24, 'fernanda@simagestao.com.br', 0, 'Fernanda - Sima Gestão', 1513947234, 1, 1, 1, '177.134.121.35', 1, 'VQS5TwNjMLlDdj', 0, NULL, 0, NULL, 0, 1513984236, 'management_back'),
(25, 'adm@construtoracanastra.com.br', 0, 'Construtora Canastra', 1513947309, 1, 1, 1, '177.134.121.35', 1, 'UAegbKWHXGECcA', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(26, 'giseleguerra@hotmail.com', 0, 'Gisele Guerra - Canil Yumi', 1513947398, 1, 1, 1, '177.134.121.35', 1, 'yb9qZJh3csvebx', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(27, 'contasapagar1@carvalhopecas.com.br', 0, 'Nayara Cristina - Carvalho Ônibus', 1513947453, 1, 1, 1, '177.134.121.35', 1, 'W0gIIbFHSEOmYX', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(28, 'vendasbh@carvalhopecas.com.br', 0, 'Orlando Mafra - Carvalho Ônibus', 1513947507, 1, 1, 1, '177.134.121.35', 1, 'Qq8HQwPLup1h7d', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(29, 'cira@carvalhopecas.com.br', 0, 'Cira Lúcia Aguiar Carvalho - Carvalho Ônibus', 1513947623, 1, 1, 1, '177.134.121.35', 1, 'jE5VyFqxrMlErX', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(30, 'alexandre@cateb.com.br', 0, 'Alexandre Cateb', 1513947724, 1, 1, 1, '177.134.121.35', 1, 'f3uQL6Dav73S3C', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(31, 'vetcatalao@gmail.com', 0, 'Roberto Bianco - Centro Veterinário Catalão', 1513947772, 1, 1, 1, '177.134.121.35', 1, '2mCsYzGGEbfXzh', 0, NULL, 1514301351, '66.102.8.9', 0, 1513984237, 'management_back'),
(32, 'cigma@cigmaconsultoria.com.br', 0, 'CIGMA', 1513947832, 1, 1, 1, '177.134.121.35', 1, 'cFpLwFe0lqQSDQ', 0, NULL, 1544185825, '66.102.8.83', 0, 1513984237, 'management_back'),
(33, 'sandro@cigmaconsultoria.com.br', 0, 'Sandro - CIGMA', 1513947883, 1, 1, 1, '177.134.121.35', 1, 'paIo8iQA79OHbg', 0, NULL, 1514297214, '66.102.8.7', 0, 1513984237, 'management_back'),
(34, 'delmo@cigmaconsultoria.com.br', 0, 'Delmo - CIGMA', 1513947902, 1, 1, 1, '177.134.121.35', 1, 'wK5vjMJr4m6Q83', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(35, 'rangel@cigmaconsultoria.com.br', 0, 'Rangel - CIGMA', 1513947920, 1, 1, 1, '177.134.121.35', 1, 'zA0tkRKNotPqP7', 0, NULL, 1514051750, '66.102.8.5', 0, 1513984237, 'management_back'),
(36, 'circuitonet@circuitonetinformatica.com.br', 0, 'Roger - Circuitonet', 1513947985, 1, 1, 1, '177.134.121.35', 1, 'JLLK2xK7wbyASE', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(37, 'alexandre@cisbrafol.com.br', 0, 'Alexandre - Cisbrafol', 1513948141, 1, 1, 1, '177.134.121.35', 1, 'PFHuJmhGno6mZq', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(38, 'maicon@cisbrafol.com.br', 0, 'Maicon - Cisbrafol', 1513948180, 1, 1, 1, '177.134.121.35', 1, 'sqGPsiKYmZjU5N', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(39, 'contato@clarissaaraujo.com.br', 0, 'Clarissa Araújo', 1513948226, 1, 1, 1, '177.134.121.35', 1, 'Sp3EwRTBWubiom', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(40, 'matriarcacorretora@gmail.com', 0, 'Romerson - Matriarca Corretora', 1513948331, 1, 1, 1, '177.134.121.35', 1, 'kIwG06QgusnFiM', 0, NULL, 1514316782, '66.102.8.9', 0, 1513984237, 'management_back'),
(41, 'comprarealugar@gmail.com', 0, 'Romerson - Comprar & Alugar', 1513948357, 1, 1, 1, '177.134.121.35', 1, '7C4DRO3XYE1KVb', 0, NULL, 1514314754, '66.102.8.9', 0, 1513984237, 'management_back'),
(42, 'leo@agencianube.com.br', 0, 'Léo - Agência Nube', 1513948664, 1, 1, 1, '177.134.121.35', 1, 'r925YfdYkkPPQS', 0, NULL, 1514026191, '66.102.8.7', 0, 1513984237, 'management_back'),
(43, 'silvia@cramg.org.br', 0, 'Silvia Pessoa CRA-MG', 1513949075, 1, 1, 1, '177.134.121.35', 1, 'tM8hPSMj9fmioZ', 0, NULL, 0, NULL, 0, 1513984237, 'management_back'),
(44, 'tiago.cardoso@criticalstore.com.br', 0, 'Tiago Cardoso - Critical Store', 1513949139, 1, 1, 1, '177.134.121.35', 1, 'w581bLJ0i59aIj', 0, NULL, 1516360670, '201.80.17.130', 0, 1513984237, 'management_back'),
(45, 'escolacubomagico@yahoo.com.br', 0, 'Larissa Ramos', 1513949299, 1, 1, 1, '177.134.121.35', 1, 'fJqGepw5ba2shW', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(46, 'cristina.novais@dam.com.br', 0, 'Cristina Novais', 1513949336, 1, 1, 1, '177.134.121.35', 1, '5CJEWJ6tC2JC7s', 0, NULL, 1515006144, '177.19.23.100', 0, 1513985009, 'management_back'),
(47, 'drdaniel@danieligormendonca.com.br', 0, 'Dr. Daniel Igor Mendonça', 1513949606, 1, 1, 1, '177.134.121.35', 1, 'chPZFJqH4wuilS', 0, NULL, 1514544085, '186.206.161.225', 0, 1513985009, 'management_back'),
(48, 'lilian@danieligormendonca.com.br', 0, 'Lilian - Dr. Daniel Igor Mendonça', 1513950054, 1, 1, 1, '177.134.121.35', 1, 'PDrIg1CQXU6FQ8', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(49, 'eduardo@e2par.com', 0, 'Eduardo - EPAR', 1513950424, 1, 1, 1, '177.134.121.35', 1, 'tKj9lf9vjMJPLA', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(50, 'obra@e2par.com', 0, 'Vincenzo Sirianni - EPAR', 1513950458, 1, 1, 1, '177.134.121.35', 1, 'BMBW8MIsLmoflr', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(51, 'vivianepirescoelho@gmail.com', 0, 'Viviane Pires Coelho', 1513950490, 1, 1, 1, '177.134.121.35', 1, 'lL2CNOlQAtMO0Q', 0, NULL, 1514056377, '66.102.8.9', 0, 1513985009, 'management_back'),
(52, 'mario@expertturismo.com.br', 0, 'Mário Araújo - Expert Turismo', 1513950542, 1, 1, 1, '177.134.121.35', 1, 'Mk4XrHUmGI8GTB', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(53, 'heloisio@expertturismo.com.br', 0, 'Heloisio - Expert Turismo', 1513950576, 1, 1, 1, '177.134.121.35', 1, '792D57Wl2T1Cak', 0, NULL, 1574881139, '177.17.67.154', 0, 1513985009, 'management_back'),
(54, 'vanusia.duarte@globo.com', 0, 'Vanúsia Duarte Cintra', 1513950731, 1, 1, 1, '177.134.121.35', 1, 'acxnHxZ6CqZe8D', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(55, 'acs@ima.mg.gov.br', 0, 'Vanúsia Duarte', 1513950756, 1, 1, 1, '177.134.121.35', 1, 'NMOMUIeHh5yY4Y', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(56, 'fernando@ferrail.com.br', 0, 'Fernando Camargos', 1513950812, 1, 1, 1, '177.134.121.35', 1, 'qZuGCrThuoCur6', 0, NULL, 1514400951, '187.115.184.147', 0, 1513985009, 'management_back'),
(57, 'raquel.alvarenga@ig.com.br', 0, 'Raquel Alvarenga', 1513950843, 1, 1, 1, '177.134.121.35', 1, 'jmWlFxP2vKWNaU', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(58, 'veruskamsantos@gmail.com', 0, 'Veruska Santos', 1513950892, 1, 1, 1, '177.134.121.35', 1, 'tS9biKQi2OsKqM', 0, NULL, 1514024215, '66.102.8.9', 0, 1513985009, 'management_back'),
(59, 'fokro@fokro.com.br', 0, 'Fokro', 1513950955, 1, 1, 1, '177.134.121.35', 1, 'kuEyGk8j3r0nM5', 0, NULL, 1514394098, '200.233.229.169', 0, 1513985009, 'management_back'),
(60, 'regina@fokro.com.br', 0, 'Regina - Fokro', 1513950976, 1, 1, 1, '177.134.121.35', 1, 'tO3gJTmTxrkLoA', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(61, 'mariana@foxflores.com.br', 0, 'Mariana - FOX Flores', 1513951016, 1, 1, 1, '177.134.121.35', 1, 'Rek6EmSdva8bl5', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(62, 'joeljardim@gmail.com', 0, 'Joel Jardim', 1513951058, 1, 1, 1, '177.134.121.35', 1, 'opzvVb9Jd6Govh', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(63, 'crisgelape@yahoo.com.br', 0, 'Cristiano - GELAPE', 1513951118, 1, 1, 1, '177.134.121.35', 1, 'qUN3iT7CVD7Tji', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(64, 'comercial@gelape.com.br', 0, 'Gelape (Comercial)', 1513951136, 1, 1, 1, '177.134.121.35', 1, 'ubSPjLgJhzPH1O', 0, NULL, 0, NULL, 0, 1513985009, 'management_back'),
(65, 'geraldo@teleconnet.com.br', 0, 'Geraldo Wiliian da Silva', 1513951172, 1, 1, 1, '177.134.121.35', 1, 'box8G4TseWq7dW', 0, NULL, 1514051910, '66.102.8.5', 0, 1513985010, 'management_back'),
(66, 'priscila.morais@g-maia.com.br', 0, 'Priscila  Morais - Construtora G-Maia', 1513951245, 1, 1, 1, '177.134.121.35', 1, '0uwMJjVYqBo1sH', 0, NULL, 1514020203, '177.165.66.21', 0, 1513985010, 'management_back'),
(67, 'gustavo@g-maia.com.br', 0, 'Gustavo Maia - G-Maia', 1513966126, 1, 1, 1, '177.134.121.35', 1, 'Bwl9R8ewijgp3o', 0, NULL, 1514035763, '186.242.84.61', 0, 1513985010, 'management_back'),
(68, 'graciacircunde@yahoo.com.br', 0, 'Gracia Maria Circunde', 1513966286, 1, 1, 1, '177.134.121.35', 1, 'ez8WUvndxWiSnx', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(69, 'leogodoypub@gmail.com', 0, 'Leo Godoy', 1513971244, 1, 1, 1, '186.206.237.152', 1, 'craMsKAOa7OhQY', 0, NULL, 1514031661, '66.102.8.9', 0, 1513985010, 'management_back'),
(70, 'gleuber.rodrigues@revitabelo.com.br', 0, 'Gleuber Rodrigues - Revita Belô', 1513971328, 1, 1, 1, '186.206.237.152', 1, 'qocyKyp8MHJJIv', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(71, 'orcamento@revitabelo.com.br', 0, 'Fernanda - Revita Belô', 1513971376, 1, 1, 1, '186.206.237.152', 1, 'i1mEwePAz7uJNb', 0, NULL, 1514383276, '177.205.204.108', 0, 1513985010, 'management_back'),
(72, 'lmviana.adv@gmail.com', 0, 'Leandro Viana', 1513972327, 1, 1, 1, '186.206.237.152', 1, 'yYQl4hmWWvvlIN', 0, NULL, 1514224459, '66.102.8.5', 0, 1513985010, 'management_back'),
(73, 'contato@parreirasimoveis.com', 0, 'Parreiras Imóveis', 1513972483, 1, 1, 1, '186.206.237.152', 1, 'D2IvBLAiwvavLs', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(74, 'compras@distribuidoraguaxupe.com.br', 0, 'Landerson - Distribuidora Guaxupé', 1513972570, 1, 1, 1, '186.206.237.152', 1, '9h6jv0uwxmQEsN', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(75, 'comercial@distribuidoraguaxupe.com.br', 0, 'Joelma - Distribuidora Guaxupé', 1513972649, 1, 1, 1, '186.206.237.152', 1, 'QC0sPlvbmT4bpn', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(76, 'helinademicheli@yahoo.com.br', 0, 'Hélina Demicheli de Oliveira - HN Contábil', 1513972709, 1, 1, 1, '186.206.237.152', 1, 'xxSOmeo9onATRQ', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(77, 'neiva@hncontabil.com.br', 0, 'Neiva - H&N Contábil', 1513973078, 1, 1, 1, '186.206.237.152', 1, 'yiHTNwXiVUGZTB', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(78, 'cheller85@gmail.com', 0, 'Michelle - Inglês CPI', 1513973154, 1, 1, 1, '186.206.237.152', 1, 'VQUySMxqdKZXFk', 0, NULL, 1514580099, '66.102.8.7', 0, 1513985010, 'management_back'),
(79, 'renato@irlodontologia.com.br', 0, 'Renato - IRL Odontologia', 1513973213, 1, 1, 1, '186.206.237.152', 1, 'LG8kMqUP8JcJ6r', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(80, 'luciana.avelar@jaraguaclub.com.br', 0, 'Luciana Avelar - Marketing Jaraguá Club', 1513973346, 1, 1, 1, '186.206.237.152', 1, 'RM677G2ZkzGB1m', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(81, 'presidente@jaraguaclub.com.br', 0, 'Carlão - Presidente Jaraguá', 1513973425, 1, 1, 1, '186.206.237.152', 1, 'xDeHtM9J44Wgmz', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(82, 'junia@cateb.com.br', 0, 'Junia Cateb', 1513973461, 1, 1, 1, '186.206.237.152', 1, 'oHrO7KhprYr2M7', 0, NULL, 1514550861, '66.102.8.9', 0, 1513985010, 'management_back'),
(83, 'kenyapena@gmail.com', 0, 'Kenya Pena', 1513973507, 1, 1, 1, '186.206.237.152', 1, '18Rb7eIO0zN8yV', 0, NULL, 1514033338, '66.102.8.7', 0, 1513985010, 'management_back'),
(84, 'nuriabertachini@hotmail.com', 0, 'Núria Pérez Bertachini - LegisTrad', 1513973624, 1, 1, 1, '186.206.237.152', 1, 'wliT1yrKjsbfg8', 0, NULL, 0, NULL, 0, 1513985010, 'management_back'),
(85, 'davirodrigues7@hotmail.com', 0, 'Davi Andrade - Desentupidora Limpa Cano', 1513973746, 1, 1, 1, '186.206.237.152', 1, 'zvTBVPrhuxqpua', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(86, 'luminart@luminartiluminacao.com.br', 0, 'Marcelo Brandão - Luminart', 1513974135, 1, 1, 1, '186.206.237.152', 1, 'FJjZiaLKWow84l', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(87, 'lucianagomestrindade@yahoo.com.br', 0, 'Luciana Trindade', 1513974235, 1, 1, 1, '186.206.237.152', 1, 'MBnhm327tSzT2E', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(88, 'adriana.medeiros@maisacaoeventos.com.br', 0, 'Adriana Medeiros', 1513974282, 1, 1, 1, '186.206.237.152', 1, 'xIC6NLOpjvWfbl', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(89, 'luciana.augusta@maisacaoeventos.com.br', 0, 'Luciana Augusta - Mais Ação Eventos', 1513974441, 1, 1, 1, '186.206.237.152', 1, '0f1Y7kScKfeGrr', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(90, 'fernanda@maisacaoeventos.com.br', 0, 'Fernanda Lataliza', 1513974528, 1, 1, 1, '186.206.237.152', 1, 'eM6uZspGgrHbOI', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(91, 'adm@marcg.com.br', 0, 'Marcelino - MARCG', 1513975061, 1, 1, 1, '186.206.237.152', 1, 'TFEnAhprHbi17m', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(92, 'marcus@mardellelingerie.com.br', 0, 'Marcus Vinícius - Mardelle  Lingerie', 1513975738, 1, 1, 1, '186.206.237.152', 1, 'QXUC3gnMNGFHAZ', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(93, 'mariangelalima@mariangelalima.com.br', 0, 'Mariângela Lima', 1513975768, 1, 1, 1, '186.206.237.152', 1, 'xwFInTHP84VntJ', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(94, 'fernandogomes2000@gmail.com', 0, 'Fernando Gomes', 1513975939, 1, 1, 1, '186.206.237.152', 1, 'Z7Cmp5MI53rUoU', 0, NULL, 1514056668, '66.102.8.5', 0, 1513985158, 'management_back'),
(95, 'danieljeber@metta.ind.br', 0, 'Daniel JEBER - METTA', 1513976085, 1, 1, 1, '186.206.237.152', 1, 'inPnjhyGUUMMOo', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(96, 'leandro@mltengenharia.com.br', 0, 'Leandro - MLT Engenharia', 1513976176, 1, 1, 1, '186.206.237.152', 1, 'y5aOIk9RIX18Df', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(97, 'matheus@mltengenharia.com.br', 0, 'Matheus Funchal Monteiro - MLT Engenharia', 1513976230, 1, 1, 1, '186.206.237.152', 1, '2pNlGqzPnaBJgx', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(98, 'denise@montmaquinas.com.br', 0, 'Denise Monteiro - Mont Máquinas', 1513976321, 1, 1, 1, '186.206.237.152', 1, 'DaXpIaC9YZiA6X', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(99, 'administracao@construtoramonteverde.com.br', 0, 'Nilda Gomides - Construtora Monte Verde', 1513976419, 1, 1, 1, '186.206.237.152', 1, 'aeIcL5ky0qPPWj', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(100, 'contato@movimentefisioterapia.com.br', 0, 'Movimente Fisioterapia Integrada', 1513976536, 1, 1, 1, '186.206.237.152', 1, '0InzTr0D1dLCG2', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(101, 'navarrosouto@hotmail.com', 0, 'Felipe Navarro', 1513976582, 1, 1, 1, '186.206.237.152', 1, 'V8Ygqdp9KJGaKH', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(102, 'etelvinomota@yahoo.com.br', 0, 'Etelvino Mota - Neurolife', 1513976654, 1, 1, 1, '186.206.237.152', 1, '9Fc4hpXTPIrAOI', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(103, 'isabelasf@msn.com', 0, 'Isabela - Prime Health', 1513976707, 1, 1, 1, '186.206.237.152', 1, 'KLw4Wq9vpDkm2Q', 0, NULL, 0, NULL, 0, 1513985158, 'management_back'),
(104, 'taynan@olimex.com.br', 0, 'Taynan OLIMEX', 1513976764, 1, 1, 1, '186.206.237.152', 1, 'KS2WCaCgqhXlqz', 0, NULL, 1515405719, '66.102.8.9', 0, 1513985158, 'management_back'),
(105, 'olimex@olimex.com.br', 0, 'Valéria Rizzo - Olimex Assessoria de Vendas', 1513976865, 1, 1, 1, '186.206.237.152', 1, 'hSD697e5erXcX1', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(106, 'matheus@paixaonet.com.br', 0, 'Matheus - Paixão NET', 1513976960, 1, 1, 1, '186.206.237.152', 1, 'JSFP73p7G62E1P', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(107, 'pantuza@paneventosdenegocios.com.br', 0, 'Celso Pantuza', 1513977029, 1, 1, 1, '186.206.237.152', 1, 'TsoXgvXWfxhKvn', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(108, 'gerencia@personaliteservicos.com.br', 0, 'Oeste Arruda - Personalite Serviços', 1513979494, 1, 1, 1, '186.206.237.152', 1, 'lxwbXP9hxlBhW4', 0, NULL, 1514378092, '66.102.8.5', 0, 1513985159, 'management_back'),
(109, 'pianetti@pianetti.art.br', 0, 'Pianetti', 1513979531, 1, 1, 1, '186.206.237.152', 1, 'peWQIc2zm24XJj', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(110, 'jose.carlos@pollyrubber.com.br', 0, 'JOSÉ CARLOS - Controladoria', 1513979576, 1, 1, 1, '186.206.237.152', 1, 'bf36AKQa8OwOW8', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(111, 'humberto@pollyrubber.com.br', 0, 'HUMBERTO - Gerente Comercial', 1513979621, 1, 1, 1, '186.206.237.152', 1, 'V52NUrrTBIfsJk', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(112, 'financeiro@pollyrubber.com.br', 0, 'Aline - Financeiro', 1513979668, 1, 1, 1, '186.206.237.152', 1, 'IuMCNEqnJATZbf', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(113, 'comercial2@pollyrubber.com.br', 0, 'Elaine - Comercial', 1513979724, 1, 1, 1, '186.206.237.152', 1, 'E1DWJ4LWhQWKlU', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(114, 'mota@pooltrack.com.br', 0, 'Fernando Mota', 1513979804, 1, 1, 1, '186.206.237.152', 1, 'n5eXJYAM7hMct8', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(115, 'mariam@qualityvigilancia.com.br', 0, 'Mariam - Quality Vigilância', 1513979907, 1, 1, 1, '186.206.237.152', 1, 't9T1jor7YMwMAy', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(116, 'cesar@qualyinf.com.br', 0, 'César - Qualyinf', 1513980203, 1, 1, 1, '186.206.237.152', 1, '9fqHj3Mwltxpvq', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(117, 'dilson.magalhaes@quimicareal.com.br', 0, 'Dilson Magalhães', 1513980252, 1, 1, 1, '186.206.237.152', 1, 'HscP9C7KBUkTCy', 0, NULL, 1514283690, '201.73.211.34', 0, 1513985159, 'management_back'),
(118, 'cesaredfisica2012@gmail.com', 0, 'César Augusto Lara', 1513980364, 1, 1, 1, '186.206.237.152', 1, 'AKnklHT6v4fejP', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(119, 'rodrigo@friche.com', 0, 'Rodrigo Friche', 1513980444, 1, 1, 1, '186.206.237.152', 1, 'nXPZQLtt8NU46b', 0, NULL, 1514940889, '179.179.240.79', 0, 1513985159, 'management_back'),
(120, 'wagner.righi@terra.com.br', 0, 'Wagner Righi', 1513980508, 1, 1, 1, '186.206.237.152', 1, 'enNTsD5hcI64xu', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(121, 'ribeirobianco@yahoo.com.br', 0, 'Roberto Ribeiro Bianco', 1513980560, 1, 1, 1, '186.206.237.152', 1, 'QWr2utWDdQgWEp', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(122, 'leoespindola@rsantanaconsultoria.com.br', 0, 'Leonardo Espíndola', 1513980642, 1, 1, 1, '186.206.237.152', 1, '9jmETusq3Qnn0O', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(123, 'massio@rzf.com.br', 0, 'Massio Duarte - RZF', 1513980699, 1, 1, 1, '186.206.237.152', 1, 'jXR5rk0TFlYbfk', 0, NULL, 0, NULL, 0, 1513985159, 'management_back'),
(124, 'luiz@setcomputadores.com.br', 0, 'Luiz Fernando - Set Computadores', 1513980779, 1, 1, 1, '186.206.237.152', 1, 'xoviSPqJ1ORtjc', 0, NULL, 1513996706, '66.102.8.7', 0, 1513985159, 'management_back'),
(125, 'marcus@skallaeco.com.br', 0, 'Marcus Valadares', 1513980849, 1, 1, 1, '186.206.237.152', 1, 'IOPKGobPRcf3Jj', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(126, 'gilian@soegeo.com.br', 0, 'Gilian Fonseca - Soegeo', 1513980881, 1, 1, 1, '186.206.237.152', 1, 'QVoKkGtXbpd6ND', 0, NULL, 1515502196, '187.104.33.246', 0, 1514462359, 'management_back'),
(127, 'silviomalta@gmail.com', 0, 'Silviomalta', 1513981055, 0, 1, 1, '186.206.237.152', 1, 'cAVNXssKwOWZKf', 0, NULL, 0, NULL, 0, 0, ''),
(128, 'biancoribeiro@gmail.com', 0, 'Rafael Ribeiro Bianco', 1513981729, 1, 1, 1, '186.206.237.152', 1, 'EbTgsFFQDAnctj', 0, NULL, 1514898437, '66.102.8.7', 0, 1513985173, 'management_back'),
(129, 'mar@marlettemenezes.com.br', 0, 'Marlette Menezes', 1513981814, 1, 1, 1, '186.206.237.152', 1, 'j8xYkBW5lKQ7cW', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(130, 'rigueira@terrabrasilis.org.br', 0, 'Sônia - Terra Brasilis', 1513981888, 1, 1, 1, '186.206.237.152', 1, '4g2B5HU4jwWqmH', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(131, 'sarahsantos@terrabrasilis.org.br', 0, 'Sarah Santos', 1513981931, 1, 1, 1, '186.206.237.152', 1, 'cR2K3yiW65U06x', 0, NULL, 1515432434, '179.179.247.167', 0, 1513985173, 'management_back'),
(132, 'pmenezes0@gmail.com', 0, 'Paula Menezes', 1513982002, 1, 1, 1, '186.206.237.152', 1, 'pLNyXd6y4C9box', 0, NULL, 1515672418, '66.102.8.7', 0, 1513985173, 'management_back'),
(133, 'tocadopneu@gmail.com', 0, 'Gustavo - Toca do Pneu', 1513982064, 1, 1, 1, '186.206.237.152', 1, 'JcjkbAHcNGO9ND', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(134, 'rivana_rodrigues@yahoo.com.br', 0, 'Rivana Rodrigues', 1513982130, 1, 1, 1, '186.206.237.152', 1, 'FaKdoKqjTlU7xL', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(135, 'magela@trevobhz.com.br', 0, 'Geraldo Magela', 1513982182, 1, 1, 1, '186.206.237.152', 1, 'kJ3dMZzj2q5qoj', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(136, 'silvio@sdrummond.com.br', 0, 'Silvio', 1513982294, 0, 1, 1, '186.206.237.152', 1, 'vLqoKapYJLUK4P', 0, NULL, 0, NULL, 0, 0, ''),
(137, 'valeska@valeskaaraujo.com.br', 0, 'Valeska Araújo', 1513982869, 1, 1, 1, '186.206.237.152', 1, '0GnEIPIj3FtqNN', 0, NULL, 1514405783, '191.249.180.94', 0, 1513985173, 'management_back'),
(138, 'relacionamento@vipbh.com.br', 0, 'Isabel Ferreira', 1513983129, 1, 1, 1, '186.206.237.152', 1, 'zfITXA7eXrvt3a', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(139, 'vinicius@vipbh.com.br', 0, 'Vinícius - VIP BH', 1513983188, 1, 1, 1, '186.206.237.152', 1, 'zMY9kGM0B2I5fK', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(140, 'contato@comerbrincando.com.br', 0, 'Comer Brincando - Alimentação e Nutrição Infantil', 1513983258, 1, 1, 1, '186.206.237.152', 1, 'vyegdgSUxfr5Cj', 0, NULL, 1514330684, '186.206.237.152', 0, 1513985173, 'management_back'),
(141, 'contato@4runassessoria.com.br', 0, 'Leonardo - 4 Run', 1513983415, 1, 1, 1, '186.206.237.152', 1, 'At8zGtCyDst70t', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(142, 'abbastos@hotmail.com', 0, 'Ana Beatriz Bastos', 1513983492, 1, 1, 1, '186.206.237.152', 1, 'TL9xSgXl6d4kVf', 0, NULL, 0, NULL, 0, 1513985173, 'management_back'),
(143, 'vanusa@cartelcalhas.com.br', 0, 'Vanusa Simões - Cartel Calhas', 1514462223, 1, 1, 1, '191.249.60.177', 1, 'Ay8ePS8zejKQXQ', 0, NULL, 1514638266, '185.30.176.26', 0, 1514462359, 'management_back'),
(144, 'gpeixoto137@yahoo.com.br', 0, 'SEBASTIÃO', 1571672995, 0, 1, 1, NULL, 1, 'W97oojtgaGgsFm', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(145, 'geleia697@gmail.com', 0, 'MARCELO CORREA DUTRA', 1571672995, 0, 1, 1, NULL, 1, 'CObyXR1TSEOMMn', 0, NULL, 1583774932, '66.249.88.111', 0, 1578320980, 'import'),
(146, 'cordeiro.vanderleia1@gmail.com', 0, 'VANDERLEIA', 1571672995, 0, 1, 1, NULL, 1, 'v1Ztl29850vNpo', 0, NULL, 1578336232, '66.249.88.79', 0, 1578320980, 'import'),
(147, 'valente.gilmar@gmail.com', 0, 'GILMAR MARQUES DE ARAUJO', 1571672995, 0, 1, 1, NULL, 1, 'ftJtH9K0rLStgd', 0, NULL, 1578326361, '66.102.8.13', 0, 1578320980, 'import'),
(148, 'luiz@jetmax.com.br', 0, 'LUIZ OTAVIO CURSAGE', 1571672995, 0, 1, 1, NULL, 1, '1sOJxKoFv97XZp', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(149, 'rafael_tmelo@hotmail.com', 0, 'RAFAEL TORRES MELO', 1571672995, 0, 1, 1, NULL, 1, 'bicNV9imFUZeJ2', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(150, 'nilian.maysa@gmail.com', 0, 'NILIAN MAYSA FERREIRA', 1571672995, 0, 1, 1, NULL, 1, 'z6u607iSQKBVrS', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(152, 'patriciahallak8@gmail.com', 0, 'PATRICIA JOÃO HALLAK', 1571672995, 0, 1, 1, NULL, 1, 'a3Te4sEoQ5hbpy', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(153, 'edneiaromanha@gmail.com', 0, 'EDNEIA LÚCIA PIRES', 1571672995, 0, 1, 1, NULL, 1, '1bhYGOCKOM5gQK', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(154, 'barbosatexas@yahoo.com', 0, 'VANDER BARBOSA', 1571672995, 0, 1, 1, NULL, 1, 'KHokeQvTsiQIPo', 0, NULL, 1578363737, '69.147.93.95', 0, 1578320980, 'import'),
(155, 'sayoport@prodemge.gov.br', 0, 'SAYONARA PORTUGAL VASCONCELOS', 1571672995, 0, 1, 1, NULL, 1, '0ahbVVet5IwP7m', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(156, 'pauloroberto@confins.com.br', 0, 'PAULO ROBERTO DE ALMEIDA', 1571672995, 0, 1, 1, NULL, 1, 'ly6x5r1frIODw0', 0, NULL, 1578337146, '201.17.158.195', 0, 1578320980, 'import'),
(157, 'alexmartcr@gmail.com', 0, 'ALEXANDRE MARTINS CARVALHO RODRIGUES', 1571672995, 0, 1, 1, NULL, 1, 'qWNKXVXByDiI3c', 0, NULL, 1578343476, '66.249.88.81', 0, 1578320980, 'import'),
(158, 'arte.bhe@gmail.com', 0, 'MARCELO MONTEIRO MENEZES', 1571672995, 0, 1, 1, NULL, 1, '9drxcyWPzEuMLN', 0, NULL, 1578321011, '66.102.8.13', 0, 1578320980, 'import'),
(159, 'arlindocarrazza@hotmail.com', 0, 'ARLINDO', 1571672995, 0, 1, 1, NULL, 1, 'k1rr8L79eJrstD', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(160, 'cecilia.pacifico1963@gmail.com', 0, 'MARIA CECÍLIA PACÍFICO', 1571672995, 0, 1, 1, NULL, 1, 'Wr5Xmj0zLuhNtt', 0, NULL, 1578329663, '66.249.88.79', 0, 1578320980, 'import'),
(161, 'sorayajordania@hotmail.com', 0, 'SORAYA JORDANIA TAVORA DE FREITAS', 1571672995, 0, 1, 1, NULL, 1, 'Cw1cGWe8HktKzv', 0, NULL, 1572141242, '177.172.87.207', 0, 1578320980, 'import'),
(162, 'paulopena1@hotmail.com', 0, 'PAULO PENA', 1571672995, 0, 1, 1, NULL, 1, 'JWScSmr5X93MIq', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(163, 'fernandinhavmaia@hotmail.com', 0, 'FERNANDA VANESSA MOREIRA MAIA DUTRA', 1571672995, 0, 1, 1, NULL, 1, 'cxSllpDrnfw7Vi', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(164, 'marco.fcarvalho@gmail.com', 0, 'CIBELE DE FREITAS CARVALHO SILVA', 1571672995, 0, 1, 1, NULL, 1, 'bmljXlk98VtejJ', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(165, 'josequadrosideia@hotmail.com', 0, 'JOSÉ VICENTE QUADRO', 1571672995, 0, 1, 1, NULL, 1, 'UwT8oyjAkvwr19', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(167, 'luciane.cerqueira@hotmail.com', 0, 'LUCIANE CERQUEIRA SOARES HERMSDORFF', 1571672995, 0, 1, 1, NULL, 1, 'MCBHqMY8hIhdsP', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(168, 'caah_andreolli@hotmail.com', 0, 'CAROLINE MENDES', 1571672995, 0, 1, 1, NULL, 1, 'IIx3cMKAiMqd6z', 0, NULL, 1578401073, '187.70.230.75', 0, 1578320980, 'import'),
(170, 'andredutra68@yahoo.com.br', 0, 'ANDRÉ DUTRA', 1571672995, 0, 1, 1, NULL, 1, 'zT5aEhmYzhZ7Mc', 0, NULL, 1578327517, '69.147.92.87', 0, 1578320980, 'import'),
(171, 'lemalard@hotmail.com', 0, 'Vitalina Francisca de Andrade Malard', 1578320903, 0, 1, 1, NULL, 1, 'qit0XzV99dXQ3y', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(172, 'antluiz13@gmail.com', 0, 'ANTONIO LUIZ DE SOUZA JR', 1578320903, 0, 1, 1, NULL, 1, 'XaLHvY9vhZGZoZ', 0, NULL, 1578345382, '66.102.8.15', 0, 1578320980, 'import'),
(173, 'saulogaigher@gmail.com', 0, 'Saulo Aloysius Gaigher', 1578320903, 0, 1, 1, NULL, 1, 'k9FbhL7brBVPht', 0, NULL, 1578327433, '66.102.8.11', 0, 1578320980, 'import'),
(174, 'leonardo@fujitech.com.br', 0, 'Leonardo', 1578320903, 0, 1, 1, NULL, 1, '6L37QxmQN83Iap', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(175, 'gonzagacan@gmail.com', 0, 'GONZAGA', 1578320903, 0, 1, 1, NULL, 1, 'lLFBZnm5zPaRuY', 0, NULL, 1578926423, '186.206.200.52', 0, 1578320980, 'import'),
(176, 'geraldo.cotta@gmail.com', 0, 'Geraldo Magela Cotta', 1578320903, 0, 1, 1, NULL, 1, '7o9HQEFfIypf5v', 0, NULL, 1581343853, '66.102.8.13', 0, 1578320980, 'import'),
(177, 'evandro.rosilva39@gmail.com', 0, 'Evandro Rodrigo Silva', 1578320903, 0, 1, 1, NULL, 1, 'LeSWaD8C675Gs8', 0, NULL, 1578923848, '66.102.8.11', 0, 1578320980, 'import'),
(178, 'ronyrogeriosantos@gmail.com', 0, 'Rony', 1578320903, 0, 1, 1, NULL, 1, 'bvEgSPtgtl7qv2', 0, NULL, 1578351624, '66.249.88.77', 0, 1578320980, 'import'),
(179, 'd.ribeiro@quimicabrasileira.com.br', 0, 'EUSTAQUIO ANOTONIO SILVEIRA', 1578320903, 0, 1, 1, NULL, 1, 'PMmAL5dodMuJyU', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(180, 'binhamatoso@yahoo.com.br', 0, 'WALDOMIRO ALVARENGA LAGE', 1578320903, 0, 1, 1, NULL, 1, 'uynKHqw7oeQdXQ', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(181, 'anacrisbs@gmail.com', 0, 'Ana Cristina Brígido de Sousa', 1578320903, 0, 1, 1, NULL, 1, 'aaZUEyCe4pevRj', 0, NULL, 1580988496, '66.249.88.77', 0, 1578320980, 'import'),
(182, 'jjulioantonio@gmail.com', 0, 'Julio Antonio Jaud', 1578320903, 0, 1, 1, NULL, 1, 'EZP8PxUxOSHE34', 0, NULL, 1579898080, '66.102.8.13', 0, 1578320980, 'import'),
(183, 'joaosantosbh@yahoo.com.br', 0, 'Neuza Maria de Faria', 1578320903, 0, 1, 1, NULL, 1, 'GXWCaO65DmZdYM', 0, NULL, 0, NULL, 0, 1578320980, 'import'),
(184, 'renato.loiola@hotmail.com', 0, 'RENATO LOIOLA PERES', 1578320903, 0, 1, 1, NULL, 1, 'BxjP0ovab6PdBU', 0, NULL, 1578360628, '186.206.200.52', 0, 1578320980, 'import'),
(185, 'cab.soares@terra.com.br', 0, 'CARLOS ALBERTO', 1578320903, 0, 1, 1, NULL, 1, 'w6JZVLJfwJ8T2K', 0, NULL, 1578401918, '179.162.188.95', 0, 1578321005, 'import'),
(186, 'patriiasilvasouza2@gmail.com', 0, 'Patrícia Souza', 1578320903, 0, 1, 1, NULL, 1, 'uziWsV81Nb9NKz', 0, NULL, 0, NULL, 0, 1578321005, 'import'),
(187, 'geraldo.m.m.moraes@gmail.com', 0, 'Geraldo Moraes', 1578320903, 0, 1, 1, NULL, 1, 'lDms3BC3VzoWHl', 0, NULL, 1597105525, '66.249.88.4', 0, 1578321005, 'import'),
(188, 'efernandesteixeira@gmail.com', 0, 'Érica Fernandes', 1578320903, 0, 1, 1, NULL, 1, 'gyyjtg6MdXCnGv', 0, NULL, 1578360628, '186.206.200.52', 0, 1578321005, 'import'),
(189, 'angelo.coelhopaganelli@gmail.com', 0, 'ANGELO COELHO', 1578320903, 0, 1, 1, NULL, 1, 'PDst1IrP3warb4', 0, NULL, 1578490035, '66.249.88.77', 0, 1578321005, 'import');

CREATE TABLE `sd17_acymailing_tag` (
  `tagid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `sd17_acymailing_tagmail` (
  `tagid` smallint(5) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `sd17_acymailing_template` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) UNSIGNED DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) DEFAULT 'all',
  `category` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_template` (`tempid`, `name`, `description`, `body`, `altbody`, `created`, `published`, `premium`, `ordering`, `namekey`, `styles`, `subject`, `stylesheet`, `fromname`, `fromemail`, `replyname`, `replyemail`, `thumb`, `readmore`, `access`, `category`) VALUES
(1, 'Notification template', '', '<div style=\"text-align: center; width: 100%; background-color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\" style=\"text-align:center\">{readonline}This email contains graphics, so if you don\'t see them, view it in your browser{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"text-align: justify; margin: auto; width:600px\">\r\n	<tbody class=\"acyeditor_sortable\">\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"5\" style=\"background-color: #69b4c0;\" valign=\"bottom\" width=\"600\"><img alt=\" - - - \" src=\"media/com_acymailing/templates/newsletter-4/images/top.png\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"acyeditor_text w520\" colspan=\"3\" height=\"80\" style=\"text-align: left; background-color: rgb(235, 235, 235);\" width=\"520\"><img alt=\"-\" src=\"media/com_acymailing/templates/newsletter-4/images/message_icon.png\" style=\"float:left; margin-right:10px;\" />\r\n				<h3>Topic of your message</h3>\r\n\r\n				<h4>Subtitle for your message</h4>\r\n			</td>\r\n			<td class=\"acyeditor_picture w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w480\" height=\"20\" style=\"background-color:#fff;\" width=\"480\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"acyeditor_text w480 pict\" style=\"background-color:#fff; text-align: left;\" width=\"480\">\r\n			<h1>Dear {subtag:name},</h1>\r\n			Your message here...<br />\r\n			</td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w480\" height=\"20\" style=\"background-color:#fff;\" width=\"480\"></td>\r\n			<td class=\"w20\" style=\"background-color: #fff;\" width=\"20\"></td>\r\n			<td class=\"w40\" style=\"background-color: #ebebeb;\" width=\"40\"></td>\r\n		</tr>\r\n		<tr style=\"line-height: 0px;\" class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"5\" style=\"background-color:#ebebeb;\" width=\"600\"><img alt=\" - - - \" src=\"media/com_acymailing/templates/newsletter-4/images/bottom.png\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"acyeditor_delete acyeditor_text\" style=\"text-align:center\">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 1, 'newsletter-4', 'a:10:{s:6:\"tag_h1\";s:76:\"color:#393939 !important; font-size:14px; font-weight:bold; margin:10px 0px;\";s:6:\"tag_h2\";s:106:\"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;\";s:6:\"tag_h3\";s:144:\"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;\";s:6:\"tag_h4\";s:117:\"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;\";s:5:\"tag_a\";s:71:\"color:#309FB3; text-decoration:none; font-style:italic; cursor:pointer;\";s:19:\"acymailing_readmore\";s:90:\"font-size: 12px; color: #fff; background-color:#309fb3; font-weight:bold; padding:3px 5px;\";s:17:\"acymailing_online\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:16:\"acymailing_unsub\";s:52:\"color:#a3a3a3; text-decoration:none; font-size:11px;\";s:8:\"color_bg\";s:7:\"#ffffff\";s:18:\"acymailing_content\";s:19:\"text-align:justify;\";}', NULL, 'div,table,p, td{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify; color:#8c8c8c; margin:0px}\r\ndiv.info{text-align:center;padding:10px;font-size:11px;color:#a3a3a3;}\r\n\r\n@media (min-width:320px){\r\n	table[class=w600], td[class=w600] { width: 320px !important;}\r\n	table[class=w520], td[class=w520] { width: 280px !important;}\r\n	table[class=w480], td[class=w480] { width: 260px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w480 img {max-width:260px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:480px) {\r\n	table[class=w600], td[class=w600] { width: 480px !important;}\r\n	table[class=w520], td[class=w520] { width: 440px !important;}\r\n	table[class=w480], td[class=w480] { width: 420px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w480 img {max-width:420px;  height:auto !important;}\r\n}\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width: 600px !important;}\r\n	table[class=w520], td[class=w520] { width: 520px !important;}\r\n	table[class=w480], td[class=w480] { width: 480px !important;}\r\n	td[class=w40] { width40px !important;}\r\n	td[class=w20] { width: 20px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w480 img {max-width:480px;  height:auto !important;}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-4/newsletter-4.png', '', 'all', ''),
(2, 'Newspaper', '', '<div align=\"center\" style=\"width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"margin:auto; background-color:#ffffff; color:#454545;\" width=\"600\">\r\n		<tr>\r\n			<td class=\"w600\">\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" width=\"600\">\r\n					<tr class=\"acyeditor_delete\" >\r\n						<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n						<td class=\"acyeditor_text w540\" style=\"font-family:Times New Roman, Times, serif; background-color:#ffffff; text-align:left\" width=\"540\">&nbsp;\r\n						<h1><img alt=\"logo\" src=\"media/com_acymailing/templates/newsletter-5/images/logo.png\" style=\"float: right; width: 107px; height: 70px;\" /></h1>\r\n\r\n						<h1>Your title here</h1>\r\n\r\n						<h3>your subtitle</h3>\r\n						</td>\r\n						<td class=\"w30\" style=\"line-height:0px; background-color:#ffffff\" width=\"30\"></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#e4e4e4\" valign=\"top\" width=\"600\"><img alt=\"---\" src=\"media/com_acymailing/templates/newsletter-5/images/header.png\" /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#ffffff\" valign=\"top\" width=\"600\"><img alt=\"banner\" src=\"media/com_acymailing/templates/newsletter-5/images/banner.png\" /></td>\r\n					</tr>\r\n					<tr class=\"acyeditor_delete\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"line-height:0px;\" valign=\"top\" width=\"600\"><img alt=\"---\" src=\"media/com_acymailing/templates/newsletter-5/images/separator.png\" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n						<td class=\"acyeditor_text w540\" style=\"text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px; background-color:#ffffff\" width=\"540\">\r\n						<h2>Interviews and reports</h2>\r\n						<span class=\"dark\">Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</span><br />\r\n						consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi. <a href=\"#\">Vivamus elementum</a>.Lorem ipsum dolor sit amet.<br />\r\n						<br />\r\n						cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n						<br />\r\n						<span class=\"acymailing_readmore\">Read More</span><br />\r\n						&nbsp;\r\n						<h2>Journalism around the world</h2>\r\n						<span class=\"dark\">Lorem ipsum dolor sit amet, consectLorem. consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum.</span> consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi.<br />\r\n						Vivamus elementum.<a href=\"#\">Lorem ipsum dolor</a> sit amet.Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br />\r\n						<br />\r\n						<span class=\"acymailing_readmore\">Read More</span></td>\r\n						<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n					</tr>\r\n					<tr style=\"line-height: 0px;\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"background-color:#ffffff\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/newsletter-5/images/footer1.png\" width=\"600\" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class=\"acyfooter acyeditor_text w600\" colspan=\"3\" height=\"25\" style=\"text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px\" width=\"600\"><a href=\"#\">www.mywebsite.com</a> | <a href=\"#\">contact</a> | <a href=\"#\">Facebook</a> | <a href=\"#\">Twitter</a></td>\r\n					</tr>\r\n					<tr style=\"line-height: 0px;\">\r\n						<td class=\"w600\" colspan=\"3\" style=\"background-color:#454545;\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/newsletter-5/images/footer2.png\" width=\"600\" /></td>\r\n					</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n</table>\r\n\r\n<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\">{unsubscribe}If you\'re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n', '', NULL, 1, 0, 2, 'newsletter-5', 'a:10:{s:6:\"tag_h1\";s:71:\"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;\";s:6:\"tag_h2\";s:145:\"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;\";s:6:\"tag_h3\";s:76:\"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;\";s:6:\"tag_h4\";s:67:\"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#9d0000; text-decoration:none; border:none;\";s:19:\"acymailing_readmore\";s:152:\"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; padding:3px 5px; font-size:13px;\";s:17:\"acymailing_online\";s:148:\"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif; padding-bottom:10px;\";s:8:\"color_bg\";s:7:\"#454545\";s:18:\"acymailing_content\";s:0:\"\";s:16:\"acymailing_unsub\";s:131:\"color:#dddddd; text-decoration:none; font-size:13px; text-align:center; font-family:Times New Roman, Times, serif; padding-top:10px\";}', NULL, '.acyfooter a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p, td{font-family:\"Times New Roman\", Times, serif;font-size:13px;color:#575757;}\r\n\r\n\r\n\r\n@media (min-width:320px){\r\n	table[class=w600], td[class=w600] { width:320px !important; }\r\n	table[class=w540], td[class=w540] { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:320px; height:auto !important; }\r\n	.w540 img {max-width:260px; height:auto !important; }\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important; }\r\n	table[class=w540], td[class=w540] { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:480px; height:auto !important; }\r\n	.w540 img {max-width:420px; height:auto !important; }\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important; }\r\n	table[class=w540], td[class=w540] { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img     {max-width:600px; height:auto !important; }\r\n	.w540 img {max-width:540px; height:auto !important; }\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-5/newsletter-5.png', '', 'all', ''),
(3, 'Build Bio', '', '<div align=\"center\" style=\"width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;\">\r\n<div class=\"acymailing_online acyeditor_delete acyeditor_text\">{readonline}This e-mail contains graphics, if you don\'t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"margin:auto; background-color:#ffffff; color:#575757;\" width=\"600\">\r\n	<tbody class=\"acyeditor_sortable\">\r\n		<tr>\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" width=\"600\">\r\n				<tr class=\"acyeditor_delete\">\r\n					<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#eeeeee\" valign=\"bottom\" width=\"600\"><img alt=\"mail\" height=\"41\" src=\"media/com_acymailing/templates/newsletter-6/images/header.png\" width=\"600\" /></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\">\r\n					<td class=\"w30\" style=\"color:#ffffff;\" width=\"30\"></td>\r\n					<td class=\"acyeditor_picture w540\" style=\"line-height:0px; background-color:#ffffff; text-align:center\" width=\"540\"><img alt=\"\" src=\"media/com_acymailing/templates/newsletter-6/images/banner.png\" style=\"width: 540px; height: 122px;\" /></td>\r\n					<td class=\"w30\" height=\"122\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n				</tr>\r\n				<tr class=\"acyeditor_delete\">\r\n					<td class=\"w30\" style=\"background-color:#b9cf00; color:#ffffff;\" width=\"30\"></td>\r\n					<td class=\"acyeditor_text w540\" height=\"25\" style=\"text-align:right; background-color:#b9cf00; color:#ffffff;\" width=\"540\"><span class=\"hide\">Newsletter</span> {date:3}</td>\r\n					<td class=\"w30\" style=\"background-color:#b9cf00; color:#ffffff;\" width=\"30\"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class=\"w600\" colspan=\"3\" height=\"25\" style=\"background-color:#ffffff\" width=\"600\"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n					<td class=\"acyeditor_text w540\" style=\"text-align:justify; color:#575757; background-color:#ffffff\" width=\"540\"><span class=\"intro\">Hello {subtag:name},</span><br />\r\n					<br />\r\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum Vivamus elementum. sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi.\r\n					<h2>Day One</h2>\r\n					<strong>Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</strong><br />\r\n					consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed <a href=\"#\">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class=\"acymailing_readmore\">Read More</span>\r\n\r\n					<h2>How to build a green house</h2>\r\n					<img alt=\"picture\" height=\"160\" src=\"media/com_acymailing/templates/newsletter-6/images/picture.png\" style=\"float:left;\" width=\"193\" /> <strong>Lorem ipsum dolor sit amet, elit.</strong> Aenean sollicitudin orci sit amet . Sed <a href=\"#\">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class=\"acymailing_readmore\">Read More</span></td>\r\n					<td class=\"w30\" style=\"background-color:#ffffff\" width=\"30\"></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td>\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" width=\"600\">\r\n				<tr style=\"line-height: 0px;\">\r\n					<td class=\"w600\" colspan=\"3\" style=\"line-height:0px; background-color:#efefef;\" valign=\"top\" width=\"600\"><img alt=\"--\" height=\"18\" src=\"media/com_acymailing/templates/newsletter-6/images/footer1.png\" width=\"600\" /></td>\r\n				</tr>\r\n				<tr>\r\n					<td class=\"w30\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\" width=\"30\"></td>\r\n					<td class=\"acyfooter acyeditor_text w540\" style=\"text-align:right; background-color:#efefef; color:#575757;\" width=\"540\"><a href=\"#\">www.mywebsite.com</a> | <a href=\"#\">Contact</a><a href=\"#\"><img alt=\"message\" class=\"hide\" src=\"media/com_acymailing/templates/newsletter-6/images/mail.png\" style=\"border: medium none; width: 35px; height: 20px;\" /></a></td>\r\n					<td class=\"w30\" height=\"20\" style=\"line-height:0px; background-color:#efefef;\" width=\"30\"></td>\r\n				</tr>\r\n				<tr style=\"line-height: 0px;\">\r\n					<td class=\"w600\" colspan=\"3\" style=\"background-color:#efefef; line-height:0px;\" valign=\"top\" width=\"600\"><img alt=\"--\" height=\"24\" src=\"media/com_acymailing/templates/newsletter-6/images/footer2.png\" width=\"600\" /></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"acymailing_unsub acyeditor_delete acyeditor_text\" >{unsubscribe}If you\'re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 3, 'newsletter-6', 'a:9:{s:6:\"tag_h1\";s:69:\"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;\";s:6:\"tag_h2\";s:129:\"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;\";s:6:\"tag_h3\";s:149:\"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;\";s:6:\"tag_h4\";s:84:\"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;\";s:8:\"color_bg\";s:7:\"#3c3c3c\";s:5:\"tag_a\";s:65:\"cursor:pointer; color:#a2b500; text-decoration:none; border:none;\";s:17:\"acymailing_online\";s:91:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-bottom:10px\";s:16:\"acymailing_unsub\";s:88:\"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-top:10px\";s:19:\"acymailing_readmore\";s:73:\"cursor:pointer; color:#ffffff; background-color:#b9cf00; padding:3px 5px;\";}', NULL, 'table, div, p, td{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n.intro{\r\n	font-weight:bold;\r\n	font-size:12px;}\r\n\r\n.acyfooter a{\r\n	color:#575757;}\r\n\r\n@media (min-width: 320px){\r\n	table[class=w600], td[class=w600]  { width:320px !important; }\r\n	table[class=w540], td[class=w540]  { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:320px; height:auto !important}\r\n	.w540 img{max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600]  { width:480px !important; }\r\n	table[class=w540], td[class=w540]  { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:480px; height:auto !important}\r\n	.w540 img{max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600]  { width:600px !important; }\r\n	table[class=w540], td[class=w540]  { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:600px; height:auto !important}\r\n	.w540 img{max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-6/newsletter-6.png', '', 'all', ''),
(4, 'Technology', '', '<div align=\"center\" style=\"width:100%; background-color:#575757; padding-bottom:20px; color:#999999;\">\r\n<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"w600\" style=\"background-color:#fff; color:#999999; margin:auto\" width=\"600\">\r\n	<tbody class=\"acyeditor_sortable\">\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:right; color:#d2d1d1; background-color:#575757\" width=\"540\"><span class=\"acymailing_online\">{readonline}If you can\'t see this e-mail properly, <span style=\"text-decoration:underline\">view it online</span>{/readonline}</span></td>\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#575757\" valign=\"bottom\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/shadowtop.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#f5f5f5\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/top.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" height=\"32\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text links w540\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd; text-align:right; color:#ababab\" width=\"540\"><a href=\"#\"><img alt=\"mail\" src=\"media/com_acymailing/templates/technology_resp/images/mail.jpg\" style=\"float:right; border:none\" /></a> Newsletter {mailid} | {date:%B %Y} |&nbsp; <a href=\"#\">www.acyba.com</a> |</td>\r\n			<td class=\"w30\" height=\"32\" style=\"background-color:#f5f5f5; border-bottom:1px solid #ddd\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" width=\"540\"><img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic1.jpg\" style=\"float:right\" />\r\n			<h1>Fresh and technologic news !</h1>\r\n\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.</td>\r\n			<td class=\"w30\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_picture w540\" style=\"background-color:#fafafa; line-height:0px\" width=\"540\"><img alt=\"---\" src=\"media/com_acymailing/templates/technology_resp/images/separator1.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\">\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"background-color:#fafafa; color:#999999\" width=\"540\">\r\n			<h2>Choose your smartphone</h2>\r\n			<img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic2.jpg\" style=\"float:left\" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec<a href=\"#\"> scelerisque quam</a>. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt=\"buy this product\" src=\"media/com_acymailing/templates/technology_resp/images/buyproduct.jpg\" /><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<h2>Choose your device</h2>\r\n			<img alt=\"picture\" src=\"media/com_acymailing/templates/technology_resp/images/pic3.jpg\" style=\"float:right\" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt=\"buy this product\" src=\"media/com_acymailing/templates/technology_resp/images/buyproduct.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n			<td class=\"acyeditor_picture w540\" style=\"background-color:#fafafa; line-height:0px\" width=\"540\"><img alt=\"---\" src=\"media/com_acymailing/templates/technology_resp/images/separator2.jpg\" /></td>\r\n			<td class=\"w30\" style=\"background-color:#fafafa\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text special w540\" style=\"color:#999999\" width=\"540\">\r\n			<h2>Best product of the month</h2>\r\n\r\n			<h3>Lorem ipsum dolor sit amet.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum doLiget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent.<br />\r\n			<br />\r\n			<img alt=\"read more\" src=\"media/com_acymailing/templates/technology_resp/images/readmore.jpg\" style=\"border:none\" /></td>\r\n			<td class=\"w30\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w600\" colspan=\"3\" height=\"16\" width=\"600\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd; text-align:right; color:#ababab\" valign=\"bottom\" width=\"540\">Follow us | <img alt=\"facebook\" src=\"media/com_acymailing/templates/technology_resp/images/facebook.jpg\" style=\"border:none\" /> <img alt=\"twitter\" src=\"media/com_acymailing/templates/technology_resp/images/twitter.jpg\" style=\"border:none\" /> <img alt=\"pinterest\" src=\"media/com_acymailing/templates/technology_resp/images/pinterest.jpg\" style=\"border:none\" /> <img alt=\"rss\" src=\"media/com_acymailing/templates/technology_resp/images/rss.jpg\" style=\"border:none\" /></td>\r\n			<td class=\"w30\" height=\"30\" style=\"background-color:#f5f5f5; border-top:1px solid #ddd\" width=\"30\"></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#f5f5f5\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/bottom.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"acyeditor_picture w600\" colspan=\"3\" style=\"line-height:0px; background-color:#575757\" valign=\"bottom\" width=\"600\"><img alt=\"--\" src=\"media/com_acymailing/templates/technology_resp/images/shadowbottom.jpg\" /></td>\r\n		</tr>\r\n		<tr class=\"acyeditor_delete\" >\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n			<td class=\"acyeditor_text w540\" style=\"text-align:right; color:#d2d1d1; background-color:#575757\" width=\"540\"><span class=\"acymailing_unsub\">{unsubscribe}If you don\'t want to receive our news anymore, <span style=\"text-decoration:underline\">unsubscribe</span>{/unsubscribe} </span></td>\r\n			<td class=\"w30\" style=\"background-color:#575757\" width=\"30\"></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '', NULL, 1, 0, 4, 'technology_resp', 'a:9:{s:6:\"tag_h1\";s:104:\"font-size:20px; margin:0px; margin-bottom:15px; padding:0px; font-weight:bold; color:#01bbe5 !important;\";s:6:\"tag_h2\";s:165:\"font-size:12px; font-weight:bold; color:#565656 !important; text-transform:uppercase; margin:10px 0px; padding:0px; padding-bottom:5px; border-bottom:1px solid #ddd;\";s:6:\"tag_h3\";s:104:\"color:#565656 !important; font-weight:bold; font-size:12px; margin:0px; margin-bottom:10px; padding:0px;\";s:6:\"tag_h4\";s:0:\"\";s:8:\"color_bg\";s:7:\"#575757\";s:5:\"tag_a\";s:62:\"cursor:pointer;color:#01bbe5;text-decoration:none;border:none;\";s:17:\"acymailing_online\";s:30:\"color:#d2d1d1; cursor:pointer;\";s:16:\"acymailing_unsub\";s:30:\"color:#d2d1d1; cursor:pointer;\";s:19:\"acymailing_readmore\";s:88:\"cursor:pointer; font-weight:bold; color:#fff; background-color:#01bbe5; padding:2px 5px;\";}', NULL, 'table, div, p , td{\r\n	font-family:Arial, Helvetica, sans-serif;\r\n	font-size:12px;\r\n}\r\np{margin:0px; padding:0px}\r\n\r\n.special h2{font-size:18px;\r\n	margin:0px;\r\n	margin-bottom:15px;\r\n	padding:0px;\r\n	font-weight:bold;\r\n	color:#01bbe5 !important;\r\n	text-transform:none;\r\n	border:none}\r\n\r\n.links a{color:#ababab}\r\n\r\n@media (min-width:320px){\r\n	table[class=w600], td[class=w600] { width:320px !important;}\r\n	table[class=w540], td[class=w540] { width:260px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w540 img {max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important;}\r\n	table[class=w540], td[class=w540] { width:420px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w540 img {max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important;}\r\n	table[class=w540], td[class=w540] { width:540px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w540 img {max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/technology_resp/thumb.jpg', '', 'all', '');

CREATE TABLE `sd17_acymailing_url` (
  `urlid` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `sd17_acymailing_urlclick` (
  `urlid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `click` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `subid` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `sd17_acymailing_userstats` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `html` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `sent` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `senddate` int(10) UNSIGNED NOT NULL,
  `open` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` tinyint(3) UNSIGNED DEFAULT NULL,
  `is_mobile` tinyint(3) UNSIGNED DEFAULT NULL,
  `mobile_os` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `bouncerule` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sd17_acymailing_userstats` (`mailid`, `subid`, `html`, `sent`, `senddate`, `open`, `opendate`, `bounce`, `fail`, `ip`, `browser`, `browser_version`, `is_mobile`, `mobile_os`, `user_agent`, `bouncerule`) VALUES
(11, 2, 1, 1, 1513984236, 2, 1514020897, 0, 0, '66.102.8.7', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 5, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 6, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 7, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 8, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 9, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 10, 1, 1, 1513984236, 2, 1514306877, 0, 0, '66.102.8.7', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 11, 1, 1, 1513984236, 6, 1514157956, 0, 0, '177.79.8.106', 'Chrome', 63, 1, 'Android', 'mozilla/5.0 (linux; android 6.0.1; sm-g570m build/mmb29k; wv) applewebkit/537.36 (khtml, like gecko) version/4.0 chrome/63.0.3239.111 mobile safari/537.36', NULL),
(11, 12, 1, 1, 1513984236, 2, 1514282644, 0, 0, '179.104.32.221', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.2; win64; x64; trident/7.0; .net4.0c; .net4.0e; .net clr 2.0.50727; .net clr 3.0.30729; .net clr 3.5.30729; infopath.3; mcafee; maarjs; ms-office; msoffice 14)', NULL),
(11, 13, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 14, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 15, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 16, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 17, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 18, 1, 1, 1513984236, 1, 1514025880, 0, 0, '177.182.171.41', 'Chrome', 63, 1, 'Android', 'mozilla/5.0 (linux; android 7.0; sm-a720f build/nrd90m; wv) applewebkit/537.36 (khtml, like gecko) version/4.0 chrome/63.0.3239.111 mobile safari/537.36', NULL),
(11, 19, 1, 1, 1513984236, 1, 1514409220, 0, 0, '186.206.162.144', 'Chrome', 63, 0, '', 'mozilla/5.0 (windows nt 6.1) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.84 safari/537.36', NULL),
(11, 20, 1, 1, 1513984236, 4, 1514315233, 0, 0, '66.102.8.5', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 22, 1, 1, 1513984236, 2, 1514994805, 0, 0, '191.249.168.73', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.1; win64; x64; trident/7.0; .net clr 2.0.50727; slcc2; .net clr 3.5.30729; .net clr 3.0.30729; media center pc 6.0; infopath.3; .net4.0e; .net4.0c; tablet pc 2.0; microsoft outlook 15.0.4989; ms-office; msof', NULL),
(11, 23, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 24, 1, 1, 1513984236, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 25, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 26, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 27, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 28, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 29, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 30, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 31, 1, 1, 1513984237, 1, 1514301351, 0, 0, '66.102.8.9', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 32, 1, 1, 1513984237, 5, 1544185825, 0, 0, '66.102.8.83', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 33, 1, 1, 1513984237, 1, 1514297214, 0, 0, '66.102.8.7', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 34, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 35, 1, 1, 1513984237, 1, 1514051750, 0, 0, '66.102.8.5', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 36, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 37, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 38, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 39, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 40, 1, 1, 1513984237, 2, 1514316782, 0, 0, '66.102.8.9', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 41, 1, 1, 1513984237, 1, 1514314754, 0, 0, '66.102.8.9', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 42, 1, 1, 1513984237, 1, 1514026191, 0, 0, '66.102.8.7', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 43, 1, 1, 1513984237, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 44, 1, 1, 1513984237, 5, 1516360670, 0, 0, '201.80.17.130', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.1; wow64; trident/4.0; slcc2; .net clr 2.0.50727; .net clr 3.5.30729; .net clr 3.0.30729; .net4.0c; .net4.0e; microsoft outlook 16.0.8730; ms-office; msoffice 16)', NULL),
(11, 45, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 46, 1, 1, 1513985009, 2, 1515006148, 0, 0, '177.19.23.100', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.1; wow64; trident/7.0; slcc2; .net clr 2.0.50727; .net clr 3.5.30729; .net clr 3.0.30729; media center pc 6.0; .net4.0c; .net4.0e; microsoft outlook 14.0.6025; ms-office; msoffice 14)', NULL),
(11, 47, 1, 1, 1513985009, 3, 1514544085, 0, 0, '186.206.161.225', 'Chrome', 63, 1, 'Android', 'mozilla/5.0 (linux; android 7.1.1; moto z2 play build/nps26.118-19; wv) applewebkit/537.36 (khtml, like gecko) version/4.0 chrome/63.0.3239.111 mobile safari/537.36', NULL),
(11, 48, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 49, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 50, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 51, 1, 1, 1513985009, 1, 1514056377, 0, 0, '66.102.8.9', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 52, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 53, 1, 1, 1513985009, 2, 1574881139, 0, 0, '177.17.67.154', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.1; wow64; trident/7.0; slcc2; .net clr 2.0.50727; .net clr 3.5.30729; .net clr 3.0.30729; media center pc 6.0; .net4.0c; .net4.0e; ms-office; msoffice 14)', NULL),
(11, 54, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 55, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 56, 1, 1, 1513985009, 2, 1514400951, 0, 0, '187.115.184.147', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.2; wow64; trident/7.0; .net4.0c; .net4.0e; .net clr 2.0.50727; .net clr 3.0.30729; .net clr 3.5.30729; infopath.3; microsoft outlook 14.0.7189; ms-office; msoffice 14)', NULL),
(11, 57, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 58, 1, 1, 1513985009, 1, 1514024215, 0, 0, '66.102.8.9', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 59, 1, 1, 1513985009, 7, 1514394098, 0, 0, '200.233.229.169', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.1; wow64; trident/7.0; slcc2; .net clr 2.0.50727; .net clr 3.5.30729; .net clr 3.0.30729; media center pc 6.0; .net4.0e; .net4.0c; microsoft outlook 14.0.7189; ms-office; msoffice 14)', NULL),
(11, 60, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 61, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 62, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 63, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 64, 1, 1, 1513985009, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 65, 1, 1, 1513985010, 1, 1514051910, 0, 0, '66.102.8.5', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 66, 1, 1, 1513985010, 1, 1514020203, 0, 0, '177.165.66.21', 'Apple Mail', 255, 1, 'iOS', 'mozilla/5.0 (iphone; cpu iphone os 11_2_1 like mac os x) applewebkit/604.4.7 (khtml, like gecko) mobile/15c153', NULL),
(11, 67, 1, 1, 1513985010, 1, 1514035763, 0, 0, '186.242.84.61', 'Apple Mail', 255, 0, '', 'mozilla/5.0 (macintosh; intel mac os x 10_12_6) applewebkit/603.3.8 (khtml, like gecko)', NULL),
(11, 68, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 69, 1, 1, 1513985010, 1, 1514031661, 0, 0, '66.102.8.9', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 70, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 71, 1, 1, 1513985010, 7, 1514383277, 0, 0, '177.205.204.108', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.1; win64; x64; trident/4.0; .net clr 2.0.50727; slcc2; .net clr 3.5.30729; .net clr 3.0.30729; media center pc 6.0; .net4.0c; .net4.0e; infopath.3; microsoft outlook 15.0.4420; ms-office; msoffice 15)', NULL),
(11, 72, 1, 1, 1513985010, 1, 1514224459, 0, 0, '66.102.8.5', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 73, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 74, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 75, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 76, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 77, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 78, 1, 1, 1513985010, 3, 1514580099, 0, 0, '66.102.8.7', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 79, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 80, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 81, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 82, 1, 1, 1513985010, 5, 1514550861, 0, 0, '66.102.8.9', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 83, 1, 1, 1513985010, 1, 1514033338, 0, 0, '66.102.8.7', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 84, 1, 1, 1513985010, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 85, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 86, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 87, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 88, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 89, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 90, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 91, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 92, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 93, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 94, 1, 1, 1513985158, 1, 1514056668, 0, 0, '66.102.8.5', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 95, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 96, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 97, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 98, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 99, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 100, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 101, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 102, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 103, 1, 1, 1513985158, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 104, 1, 1, 1513985158, 1, 1515405719, 0, 0, '66.102.8.9', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 105, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 106, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 107, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 108, 1, 1, 1513985159, 1, 1514378092, 0, 0, '66.102.8.5', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 109, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 110, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 111, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 112, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 113, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 114, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 115, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 116, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 117, 1, 1, 1513985159, 1, 1514283690, 0, 0, '201.73.211.34', 'Firefox', 57, 0, '', 'mozilla/5.0 (windows nt 6.3; win64; x64; rv:57.0) gecko/20100101 firefox/57.0', NULL),
(11, 118, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 119, 1, 1, 1513985159, 2, 1514940889, 0, 0, '179.179.240.79', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 10.0; wow64; trident/7.0; .net4.0c; .net4.0e; microsoft outlook 16.0.8730; ms-office; msoffice 16)', NULL),
(11, 120, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 121, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 122, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 123, 1, 1, 1513985159, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 124, 1, 1, 1513985159, 1, 1513996707, 0, 0, '66.102.8.7', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 125, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 128, 1, 1, 1513985173, 1, 1514898437, 0, 0, '66.102.8.7', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 129, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 130, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 131, 1, 1, 1513985173, 16, 1515432434, 0, 0, '179.179.247.167', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.1; win64; x64; trident/7.0; .net clr 2.0.50727; slcc2; .net clr 3.5.30729; .net clr 3.0.30729; media center pc 6.0; infopath.3; .net4.0c; .net4.0e; tablet pc 2.0; microsoft outlook 14.0.6025; ms-office; msof', NULL),
(11, 132, 1, 1, 1513985173, 4, 1515672418, 0, 0, '66.102.8.7', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 133, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 134, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 135, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 137, 1, 1, 1513985173, 3, 1514405783, 0, 0, '191.249.180.94', 'Internet Explorer', 11, 0, '', 'mozilla/4.0 (compatible; msie 7.0; windows nt 6.1; trident/4.0; slcc2; .net clr 2.0.50727; .net clr 3.5.30729; .net clr 3.0.30729; media center pc 6.0; infopath.2; .net4.0c; .net4.0e; msoffice 12)', NULL),
(11, 138, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 139, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 140, 1, 1, 1513985173, 1, 1514330684, 0, 0, '186.206.237.152', 'Chrome', 63, 1, 'Android', 'mozilla/5.0 (linux; android 6.0; xt1097 build/mpes24.49-18-7) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.111 mobile safari/537.36', NULL),
(11, 141, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 142, 1, 1, 1513985173, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 3, 1, 1, 1514462359, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 21, 1, 1, 1514462359, 3, 1514463937, 0, 0, '66.102.8.5', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(11, 126, 1, 1, 1514462359, 1, 1515502196, 0, 0, '187.104.33.246', 'Apple Mail', 255, 1, 'iOS', 'mozilla/5.0 (iphone; cpu iphone os 11_2_1 like mac os x) applewebkit/604.4.7 (khtml, like gecko) mobile/15c153', NULL),
(11, 143, 1, 1, 1514462359, 1, 1514638266, 0, 0, '185.30.176.26', 'Chrome', 32, 0, '', 'mozilla/5.0 (x11; linux x86_64) applewebkit/537.36 (khtml, like gecko) chrome/32.0.1700.2 safari/537.36', NULL),
(12, 144, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 145, 1, 2, 1578320980, 1, 1583774932, 0, 0, '66.249.88.111', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 146, 1, 2, 1578320980, 2, 1578336232, 0, 0, '66.249.88.79', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 147, 1, 2, 1578320980, 1, 1578326361, 0, 0, '66.102.8.13', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 148, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 149, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 150, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 152, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 153, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 154, 1, 2, 1578320980, 7, 1578363737, 0, 0, '69.147.93.95', 'unknown', 0, 0, '', 'yahoomailproxy; https://help.yahoo.com/kb/yahoo-mail-proxy-sln28749.html', NULL),
(12, 155, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 156, 1, 2, 1578320980, 12, 1578337146, 0, 0, '201.17.158.195', 'Chrome', 79, 1, 'Android', 'mozilla/5.0 (linux; android 6.0.1; sm-j500m build/mmb29m; wv) applewebkit/537.36 (khtml, like gecko) version/4.0 chrome/79.0.3945.93 mobile safari/537.36', NULL),
(12, 157, 1, 2, 1578320980, 13, 1578343476, 0, 0, '66.249.88.81', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 158, 1, 2, 1578320980, 2, 1578321011, 0, 0, '66.102.8.13', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 159, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 160, 1, 2, 1578320980, 2, 1578329663, 0, 0, '66.249.88.79', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 161, 1, 2, 1578320980, 5, 1572141242, 0, 0, '177.172.87.207', 'Chrome', 77, 1, 'Android', 'mozilla/5.0 (linux; android 7.1.2; lm-x410.f build/n2g47h; wv) applewebkit/537.36 (khtml, like gecko) version/4.0 chrome/77.0.3865.92 mobile safari/537.36', NULL),
(12, 162, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 163, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 164, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 165, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 167, 1, 2, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 168, 1, 2, 1578320980, 1, 1578401073, 0, 0, '187.70.230.75', 'Apple Mail', 255, 1, 'iOS', 'mozilla/5.0 (iphone; cpu iphone os 13_3 like mac os x) applewebkit/605.1.15 (khtml, like gecko) mobile/15e148', NULL),
(12, 170, 1, 2, 1578320980, 9, 1578327517, 0, 0, '69.147.92.87', 'unknown', 0, 0, '', 'yahoomailproxy; https://help.yahoo.com/kb/yahoo-mail-proxy-sln28749.html', NULL),
(12, 171, 1, 1, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 172, 1, 1, 1578320980, 16, 1578345382, 0, 0, '66.102.8.15', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 173, 1, 1, 1578320980, 4, 1578327433, 0, 0, '66.102.8.11', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 174, 1, 1, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 175, 1, 1, 1578320980, 24, 1578926423, 0, 0, '186.206.200.52', 'Chrome', 79, 1, 'Android', 'mozilla/5.0 (linux; android 8.0.0; sm-g570m build/r16nw; wv) applewebkit/537.36 (khtml, like gecko) version/4.0 chrome/79.0.3945.116 mobile safari/537.36', NULL),
(12, 176, 1, 1, 1578320980, 3, 1581343853, 0, 0, '66.102.8.13', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 177, 1, 1, 1578320980, 5, 1578923848, 0, 0, '66.102.8.11', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 178, 1, 1, 1578320980, 11, 1578351624, 0, 0, '66.249.88.77', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 179, 1, 1, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 180, 1, 1, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 181, 1, 1, 1578320980, 12, 1580988496, 0, 0, '66.249.88.77', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 182, 1, 1, 1578320980, 2, 1579898080, 0, 0, '66.102.8.13', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 183, 1, 1, 1578320980, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 184, 1, 1, 1578320980, 2, 1578360628, 0, 0, '186.206.200.52', 'Chrome', 79, 1, 'Android', 'mozilla/5.0 (linux; android 8.0.0; sm-g570m build/r16nw; wv) applewebkit/537.36 (khtml, like gecko) version/4.0 chrome/79.0.3945.93 mobile safari/537.36', NULL),
(12, 185, 1, 1, 1578321005, 7, 1578401918, 0, 0, '179.162.188.95', 'Chrome', 79, 0, '', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/79.0.3945.88 safari/537.36', NULL),
(12, 186, 1, 1, 1578321005, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 187, 1, 1, 1578321005, 11, 1597105525, 0, 0, '66.249.88.4', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL),
(12, 188, 1, 1, 1578321005, 8, 1578360628, 0, 0, '186.206.200.52', 'Chrome', 79, 1, 'Android', 'mozilla/5.0 (linux; android 8.0.0; sm-g570m build/r16nw; wv) applewebkit/537.36 (khtml, like gecko) version/4.0 chrome/79.0.3945.93 mobile safari/537.36', NULL),
(12, 189, 1, 1, 1578321005, 11, 1578490035, 0, 0, '66.249.88.77', 'Firefox', 11, 0, '', 'mozilla/5.0 (windows nt 5.1; rv:11.0) gecko firefox/11.0 (via ggpht.com googleimageproxy)', NULL);

CREATE TABLE `sd17_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 175, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(8, 1, 17, 34, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(9, 1, 35, 36, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 37, 38, 1, 'com_installer', 'com_installer', '{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 39, 40, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(12, 1, 41, 42, 1, 'com_login', 'com_login', '{}'),
(13, 1, 43, 44, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 45, 46, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 47, 48, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 49, 50, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(17, 1, 51, 52, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 53, 114, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(19, 1, 115, 118, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(20, 1, 119, 120, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(21, 1, 121, 122, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),
(22, 1, 123, 124, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 125, 126, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(24, 1, 127, 130, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(26, 1, 131, 132, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 27, 2, 'com_content.category.2', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(30, 19, 116, 117, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(32, 24, 128, 129, 1, 'com_users.category.7', 'Uncategorised', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(33, 1, 133, 134, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 135, 136, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),
(35, 1, 137, 138, 1, 'com_tags', 'com_tags', '{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),
(36, 1, 139, 140, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 141, 142, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 143, 144, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 54, 55, 2, 'com_modules.module.1', 'Main Menu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(40, 18, 56, 57, 2, 'com_modules.module.2', 'Login', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(41, 18, 58, 59, 2, 'com_modules.module.3', 'Popular Articles', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(42, 18, 60, 61, 2, 'com_modules.module.4', 'Recently Added Articles', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(43, 18, 62, 63, 2, 'com_modules.module.8', 'Toolbar', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(44, 18, 64, 65, 2, 'com_modules.module.9', 'Quick Icons', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(45, 18, 66, 67, 2, 'com_modules.module.10', 'Logged-in Users', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(46, 18, 68, 69, 2, 'com_modules.module.12', 'Admin Menu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(47, 18, 70, 71, 2, 'com_modules.module.13', 'Admin Submenu', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(48, 18, 72, 73, 2, 'com_modules.module.14', 'User Status', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(49, 18, 74, 75, 2, 'com_modules.module.15', 'Title', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(52, 18, 76, 77, 2, 'com_modules.module.79', 'Multilanguage status', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(53, 18, 78, 79, 2, 'com_modules.module.86', 'Joomla Version', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(55, 18, 80, 81, 2, 'com_modules.module.88', 'Site Information', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(56, 18, 82, 83, 2, 'com_modules.module.89', 'Release News', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', 'Criação de Sites', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(63, 18, 84, 85, 2, 'com_modules.module.94', 'Slideshow CK', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(64, 1, 145, 146, 1, 'com_jce', 'JCE', '{}'),
(65, 18, 86, 87, 2, 'com_modules.module.95', 'Telefone Topo', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(66, 1, 147, 148, 1, 'com_services', 'com_services', '{}'),
(67, 18, 88, 89, 2, 'com_modules.module.96', 'O que fazemos', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(68, 27, 21, 22, 3, 'com_content.article.2', 'Sdrummond', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(69, 18, 90, 91, 2, 'com_modules.module.97', 'Sdrummond', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(70, 1, 149, 150, 1, 'com_spsimpleportfolio', 'SP Simple Portfolio', '{}'),
(71, 1, 151, 152, 1, 'com_clients', 'com_clients', '{}'),
(72, 8, 28, 33, 2, 'com_content.category.8', 'Depoimentos', '{}'),
(73, 72, 29, 30, 3, 'com_content.article.3', 'Cléber', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(74, 72, 31, 32, 3, 'com_content.article.4', 'Cléber José', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(75, 18, 92, 93, 2, 'com_modules.module.98', 'Depoimentos', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(76, 18, 94, 95, 2, 'com_modules.module.99', 'Logo rodapé', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(77, 18, 96, 97, 2, 'com_modules.module.100', 'Menu Map', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(78, 18, 98, 99, 2, 'com_modules.module.101', 'Contate-nos', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(79, 18, 100, 101, 2, 'com_modules.module.102', 'Onde Estamos', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(80, 18, 102, 103, 2, 'com_modules.module.103', 'Banner Empresa', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(81, 18, 104, 105, 2, 'com_modules.module.104', 'Banner Criação de Sites', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(82, 18, 106, 107, 2, 'com_modules.module.105', 'Banner Otimização de Sites', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(83, 18, 108, 109, 2, 'com_modules.module.106', 'Banner Google Adwords', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(84, 18, 110, 111, 2, 'com_modules.module.107', 'Banner Serviços', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(85, 18, 112, 113, 2, 'com_modules.module.108', 'Banner Contato', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),
(86, 27, 23, 24, 3, 'com_content.article.5', 'Otimização de Sites', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(87, 1, 153, 154, 1, '#__ucm_content.2', '#__ucm_content.2', '[]'),
(88, 27, 25, 26, 3, 'com_content.article.6', 'Ranqueamento de Sites', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),
(89, 1, 155, 156, 1, '#__ucm_content.3', '#__ucm_content.3', '[]'),
(90, 1, 157, 158, 1, 'com_acymailing', 'AcyMailing', '{}'),
(91, 1, 159, 172, 1, 'com_xcf', 'com_xcf', '{}'),
(92, 91, 160, 161, 2, 'com_xcf.group.1', 'com_xcf.group.1', '{}'),
(93, 91, 162, 163, 2, 'com_xcf.field.1', 'com_xcf.field.1', '{}'),
(94, 91, 164, 165, 2, 'com_xcf.field.2', 'com_xcf.field.2', '{}'),
(95, 91, 166, 167, 2, 'com_xcf.field.3', 'com_xcf.field.3', '{}'),
(96, 91, 168, 169, 2, 'com_xcf.field.4', 'com_xcf.field.4', '{}'),
(97, 91, 170, 171, 2, 'com_xcf.field.5', 'com_xcf.field.5', '{}'),
(98, 1, 173, 174, 1, 'com_jch_optimize', 'JCH Optimize', '{}');

CREATE TABLE `sd17_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 635, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 635, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 635, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 635, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 635, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 635, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 72, 1, 11, 12, 1, 'depoimentos', 'com_content', 'Depoimentos', 'depoimentos', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 635, '2017-03-14 19:47:10', 0, '2017-03-14 19:47:10', 0, '*', 1);

CREATE TABLE `sd17_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `project` int(11) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `checked_out` int(10) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `ordering` int(10) NOT NULL,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sd17_clients` (`id`, `name`, `alias`, `logo`, `project`, `published`, `checked_out`, `checked_out_time`, `created`, `created_by`, `modified`, `modified_by`, `ordering`, `publish_up`, `publish_down`) VALUES
(1, 'Suzana Sartori', 'suzana-sartori', 'images/clientes/suzana_sartori.png', 1, 1, 0, '0000-00-00 00:00:00', '2017-03-14 13:51:44', 635, '2017-03-16 20:31:16', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Pooltrack', 'pooltrack', 'images/clientes/pooltrack.png', 2, 1, 0, '0000-00-00 00:00:00', '2017-03-14 13:51:44', 635, '2017-03-16 20:32:09', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Distribuidora Maia', 'distribuidora-maia', 'images/clientes/distribuidora_maia.png', 3, 1, 0, '0000-00-00 00:00:00', '2017-03-14 13:51:44', 635, '2017-03-16 20:34:46', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Accix', 'accix', 'images/clientes/accix.png', 4, 1, 0, '0000-00-00 00:00:00', '2017-03-14 13:51:44', 635, '2017-03-16 20:35:24', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Gráfion', 'grafion', 'images/clientes/grafion.png', 5, 1, 0, '0000-00-00 00:00:00', '2017-04-04 20:36:11', 635, '2017-04-04 20:50:14', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Olimex', 'olimex', 'images/clientes/olimex.png', 6, 1, 0, '0000-00-00 00:00:00', '2017-07-04 15:07:45', 635, '2017-07-04 15:10:12', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BH Consórcio', 'bh-consorcio', 'images/clientes/bh_consorcio.png', 7, 1, 0, '0000-00-00 00:00:00', '2017-10-24 13:09:22', 635, '2017-10-24 14:47:24', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Postal Filatelia', 'postal-filatelia', 'images/clientes/postal_filatelia.png', 8, 1, 0, '0000-00-00 00:00:00', '2017-10-24 14:49:41', 635, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Clarissa Araujo', 'clarissa-araujo', 'images/clientes/clarissa_araujo.png', 9, 1, 0, '0000-00-00 00:00:00', '2017-10-24 14:50:04', 635, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

CREATE TABLE `sd17_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Sdrummond', 'sdrummond', '', '', '', '', '', '', '', '', '', '', 'contato@sdrummond.com.br', 0, 1, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":false,\"contact_layout\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 4, 1, '', '', '', '', '', '*', '2017-03-15 22:10:27', 635, '', '2017-03-20 14:57:27', 635, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 9204);

CREATE TABLE `sd17_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'Criação de Sites', 'criacao-de-sites', '<p><img src=\"images/servicos/criacao_desenvolvimento_sites_websites_responsivos.jpg\" alt=\"criacao desenvolvimento sites websites responsivos\" style=\"margin: 0px 0px 20px 20px; float: right;\" />Tendo em vista a evolu&ccedil;&atilde;o do mercado, o desenvolvimento de um site, ou website, tem se tornado o principal instrumento de comunica&ccedil;&atilde;o, informa&ccedil;&atilde;o, capta&ccedil;&atilde;o de clientes, relacionamentos pessoais e profissionais, reclama&ccedil;&atilde;o, vendas e muito mais, e que ainda conta com o a premissa de um alt&iacute;ssimo alcance e custo baixo em rela&ccedil;&atilde;o ao seu benef&iacute;cio. Com a cria&ccedil;&atilde;o de um website bem feito, bem apresent&aacute;vel e funcional, voc&ecirc; atinge o p&uacute;blico que deseja, 24 horas por dia, esteja ele em qualquer lugar do mundo.</p>\r\n<p>Possu&iacute;mos uma equipe profissional e capacitada para entender sua empresa e planejar a melhor op&ccedil;&atilde;o em cria&ccedil;&atilde;o de site. Nossos sites s&atilde;o exclusivos e planejados de forma a atender seus clientes e proporcionar o retorno esperado para esse investimento.</p>\r\n<p>Al&eacute;m disso, para o site ser competitivo, ele deve ser constru&iacute;do com o que h&aacute; de mais moderno em termo de tecnologias, o que inclusive vem mudando constantemente. Seguindo tais evolu&ccedil;&otilde;es nos mantemos atualizados para levar o que h&aacute; de mais novo no mundo digital, para melhorar a apar&ecirc;ncia, a funcionalidade, a usabilidade e visibilidade do seu site.</p>\r\n<p>Se a sua empresa ainda n&atilde;o possui um site, ou se voc&ecirc; entende que ele pode ou precisa ser melhorado, entre em contato e solicite um or&ccedil;amento.</p>', '', 1, 2, '2013-11-16 00:00:00', 635, '', '2018-01-30 18:32:43', 635, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"xcf\":{\"og_title\":\"Cria\\u00e7\\u00e3o de Sites\",\"og_description\":\"Possu\\u00edmos uma equipe profissional e capacitada para entender sua empresa e planejar a melhor op\\u00e7\\u00e3o em cria\\u00e7\\u00e3o de site. Nossos sites s\\u00e3o exclusivos e planejados de forma a atender seus clientes e proporcionar o retorno esperado para esse investimento.\",\"og_image\":\"images\\/servicos\\/criacao_desenvolvimento_sites_websites_responsivos.jpg\",\"og_type\":\"article\",\"og_url\":\"https:\\/\\/sdrummond.com.br\\/servicos\\/criacao-de-sites-desenvolvimento-de-websites-responsivos\"}}', 4, 3, '', '', 1, 6002, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(2, 68, 'Sdrummond', 'sdrummond', '<p>N&oacute;s da <strong>SDRUMMOND</strong> oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Sites exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.</p>\r\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e/ou p&uacute;blico alvo.</p>\r\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.</p>\r\n', '\r\n<p><img src=\"images/escritorio_sdrummond_tecnologias.jpg\" alt=\"escritorio sdrummond tecnologias\" style=\"margin: 0px 0px 20px 20px; float: right;\" />Desde 2011 no mercado de desenvolvimento de softwares e websites, a SDrummond tem conquistado clientes de diversas &aacute;reas. Oferecemos solu&ccedil;&otilde;es web efetivas, com cumplicidade na entrega, valores acess&iacute;veis, al&eacute;m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu&ccedil;&atilde;o de seus projetos.</p>\r\n<p>Seguimos rigoroso padr&atilde;o de qualidade e pontualidade em nossos produtos e servi&ccedil;os. A cada ano, conquistamos maior reconhecimento no setor de desenvolvimento web e vamos nos firmando como refer&ecirc;ncia entre as empresas do ramo.</p>\r\n<p>Oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Nossos projetos s&atilde;o exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.</p>\r\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e/ou p&uacute;blico alvo.</p>\r\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.</p>', 1, 2, '2017-03-13 18:58:50', 635, '', '2018-01-30 18:34:52', 635, 0, '0000-00-00 00:00:00', '2017-03-13 18:58:50', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/sites_campanhas_adwords.png\",\"float_intro\":\"left\",\"image_intro_alt\":\"criacao e desenvolvimento de sites e campanhas adwords\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"xcf\":{\"og_title\":\"SDrummond  Solu\\u00e7\\u00f5es em Tecnologias\",\"og_description\":\"Desde 2011 no mercado de desenvolvimento de softwares e websites, a SDrummond tem conquistado clientes de diversas \\u00e1reas. Oferecemos solu\\u00e7\\u00f5es web efetivas, com cumplicidade na entrega, valores acess\\u00edveis, al\\u00e9m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu\\u00e7\\u00e3o de seus projetos.\",\"og_image\":\"images\\/escritorio_sdrummond_tecnologias.jpg\",\"og_type\":\"article\",\"og_url\":\"https:\\/\\/sdrummond.com.br\\/sdrummond-tecnologias\"}}', 8, 2, '', '', 1, 4639, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(3, 73, 'Cléber', 'cleber', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis tortor sagittis, congue arcu eu, viverra massa. Cras facilisis semper odio non mollis. Maecenas auctor ligula dui, non aliquam massa sodales a. Phasellus vitae egestas ipsum. Sed justo purus, hendrerit vel pellentesque non, vestibulum eu tellus.</p>\r\n<h4>Cl&eacute;ber</h4>\r\n<h5>ACCIX- Tecnologia Ltda.</h5>', '', 1, 8, '2017-03-14 19:49:22', 635, '', '2017-03-14 19:49:48', 635, 0, '0000-00-00 00:00:00', '2017-03-14 19:49:22', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(4, 74, 'Cléber José', 'cleber-jose', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis tortor sagittis, congue arcu eu, viverra massa. Cras facilisis semper odio non mollis. Maecenas auctor ligula dui, non aliquam massa sodales a. Phasellus vitae egestas ipsum. Sed justo purus, hendrerit vel pellentesque non, vestibulum eu tellus.</p>\r\n<h4>Cl&eacute;ber Jos&eacute;</h4>\r\n<h5>ACCIX- Tecnologia Ltda.</h5>', '', 1, 8, '2017-03-14 19:49:22', 635, '', '2017-03-14 19:50:33', 635, 0, '0000-00-00 00:00:00', '2017-03-14 19:49:22', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(5, 86, 'Otimização de Sites', 'otimizacao-de-sites', '<p><img src=\"images/servicos/otimizacao_sites_seo_google_organico.jpg\" alt=\"otimizacao sites seo google organico\" style=\"margin: 0px 0px 20px 20px; float: right;\" />Otimizamos seu site, tornando-o relevante para buscadores e usu&aacute;rios, por possuir um conte&uacute;do de qualidade, boa arquitetura das informa&ccedil;&otilde;es, um layout inovador alinhado a suas cores, conceitos e objetivos, de alta performance.</p>\r\n<p>N&atilde;o basta apenas ter um site, ele tem que ser encontrado pelos p&uacute;blico alvo. Considerando isso, n&oacute;s da Sdrummond aplicamos t&eacute;cnicas de SEO(Search Engine Optimization) a fim de melhorar a relev&acirc;ncia do site diante dos mecanismos de busca. Essas melhorias est&atilde;o relacionadas ao c&oacute;digo, estrutura, programa&ccedil;&atilde;o e conte&uacute;dos, focando em seus produtos e servi&ccedil;os ofertados, para que seu p&uacute;blico encontre-o quando utilizar sites de busca como o Google, Yahoo e Bing.</p>\r\n<p>Quer obter resultados promissores, aumentando seu crescimento e de seu neg&oacute;cio, contate-nos e vamos conversar.</p>', '', 1, 2, '2013-11-16 00:00:00', 635, '', '2018-01-30 16:48:13', 635, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"xcf\":{\"og_title\":\"Otimiza\\u00e7\\u00e3o de Sites\",\"og_description\":\"Otimizamos seu site, tornando-o relevante para buscadores e usu\\u00e1rios, por possuir um conte\\u00fado de qualidade, boa arquitetura das informa\\u00e7\\u00f5es, um layout inovador alinhado a suas cores, conceitos e objetivos, de alta performance.\",\"og_image\":\"images\\/servicos\\/otimizacao_sites_seo_google_organico.jpg\",\"og_type\":\"\",\"og_url\":\"https:\\/\\/sdrummond.com.br\\/servicos\\/otimizacao-de-layout-e-conteudo-de-sites\"}}', 5, 1, '', '', 1, 4831, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(6, 88, 'Ranqueamento de Sites', 'ranqueamento-de-sites', '<p><img src=\"images/servicos/links_patrocinados_campanha_google_adwords.jpg\" alt=\"links patrocinados campanha google adwords\" style=\"margin: 0px 0px 20px 20px; float: right;\" />Preparado para aparecer nas primeiras posi&ccedil;&otilde;es do Google? Somos parceiros Google Partners e criamos campanhas atrav&eacute;s do Google Adwords com links patrocinados, que s&atilde;o a publicidade online para seu site.</p>\r\n<p>Esses links consistem em an&uacute;ncios nas p&aacute;ginas de pesquisas, de acordo com palavras-chave preestabelecidas de forma a levar seu cliente a encontrar no seu site o que ele procura.</p>\r\n<p>O valor dos an&uacute;ncios s&atilde;o calculados a partir dos clicks que seu site recebe. N&oacute;s da Sdrummond, administramos a sua conta no Google Adwords e tra&ccedil;amos as estrat&eacute;gias necess&aacute;rias para melhorar a efici&ecirc;ncia e efic&aacute;cia do seu an&uacute;ncio. Monitoramos a evolu&ccedil;&atilde;o da sua campanha e de seus an&uacute;ncios, alteramos as palavras-chave de acordo com os objetivos tra&ccedil;ados, sendo esses servi&ccedil;os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc&ecirc; e/ou sua empresa.</p>\r\n<p>Contate-nos para que possamos apresentar-lhe o funcionamento de nosso trabalho e como podemos aumentar seu crescimento.</p>', '', 1, 2, '2013-11-16 00:00:00', 635, '', '2018-01-30 18:23:26', 635, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"xcf\":{\"og_title\":\"Ranqueamento de Sites\",\"og_description\":\"N\\u00f3s da Sdrummond, administramos a sua conta no Google Adwords e tra\\u00e7amos as estrat\\u00e9gias necess\\u00e1rias para melhorar a efici\\u00eancia e efic\\u00e1cia do seu an\\u00fancio. Monitoramos a evolu\\u00e7\\u00e3o da sua campanha e de seus an\\u00fancios, alteramos as palavras-chave de acordo com os objetivos tra\\u00e7ados, sendo esses servi\\u00e7os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc\\u00ea e\\/ou sua empresa.\",\"og_image\":\"images\\/servicos\\/links_patrocinados_campanha_google_adwords.jpg\",\"og_type\":\"article\",\"og_url\":\"https:\\/\\/sdrummond.com.br\\/servicos\\/seo-ranqueamento-de-sites-junto-ao-google\"}}', 5, 0, '', '', 1, 4778, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

CREATE TABLE `sd17_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

INSERT INTO `sd17_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 2, 5, 2, '2018-01-30 16:48:14', 1),
('com_content.article', 3, 6, 2, '2018-01-30 18:23:27', 1);

CREATE TABLE `sd17_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

CREATE TABLE `sd17_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"pt-BR\",\"site\":\"pt-BR\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"show_date\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"f5d3e66bed72cac6bf53842c2e3f80b9\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `sd17_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.18.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2016\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.4.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 18, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 12, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 14, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 13, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1653953370}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1489167394,\"unique_id\":\"765da9344478e18fc408f06d5545a851f93ac455\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"December 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.5\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"December 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.5\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"December 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.5\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"December 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.5.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', 0, 1, 0, 0, '{\"name\":\"Portugu\\u00eas do Brasil (pt-BR)\",\"type\":\"language\",\"creationDate\":\"2017-01-27\",\"author\":\"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.5.1\",\"description\":\"pt-BR site language\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', 1, 1, 0, 0, '{\"name\":\"Portugu\\u00eas do Brasil (pt-BR)\",\"type\":\"language\",\"creationDate\":\"2017-01-27\",\"author\":\"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil\",\"copyright\":\"Copyright (C) 2005-2016 Open Source Matters. Todos os direitos reservados.\",\"authorEmail\":\"pt-br@joomlacarioca.com.br\",\"authorUrl\":\"http:\\/\\/brasil.joomla.com\",\"version\":\"3.6.5.1\",\"description\":\"Brazilian Portuguese Site language for Joomla 3.6.0\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Português do Brasil (pt-BR)', 'package', 'pkg_pt-BR', '', 0, 1, 1, 0, '{\"name\":\"Portugu\\u00eas do Brasil (pt-BR)\",\"type\":\"package\",\"creationDate\":\"2017-01-27\",\"author\":\"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"pt-br@joomlacarioca.com.br\",\"authorUrl\":\"http:\\/\\/brasil.joomla.com\",\"version\":\"3.6.5.1\",\"description\":\"<div style=\\\"text-align:left;\\\">\\n  <h2>Pacote de Idioma Portugu\\u00eas Brasileiro (pt-BR) completo para Joomla! 3.6.5 instalado com sucesso!<\\/h2>\\n  <h3>Vers\\u00e3o 3.6.5.1 <\\/h3>\\n  <p>Por favor, informe qualquer problema ou assunto relacionado encontrado na p\\u00e1gina <a href=\\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\\" target=\\\"_blank\\\">Grupo Tradu\\u00e7\\u00f5es Joomla pt-BR<\\/a> no Facebook.<\\/p>\\n  <p>Traduzido pela <a href=\\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\\" target=\\\"_blank\\\">Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro<\\/a>.<\\/p>\\n  <h2>Successfully installed the Full Brazilian Portugues (pt-BR) Language Pack for Joomla! 3.6.5<\\/h2>\\n  <h3>Version 3.6.5.1<\\/h3>\\n  <p>Please report any bugs or issues at the <a href=\\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\\" target=\\\"_blank\\\">pt-BR Translation Group<\\/a> Facebook page.<\\/p>\\n  <p>Translated by the <a href=\\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\\" target=\\\"_blank\\\">Brazilian Portuguese Translation Team<\\/a>.<\\/p>\\n  <\\/div>\",\"group\":\"\",\"filename\":\"pkg_pt-BR\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'cirrus-green', 'template', 'cirrus-green', '', 0, 1, 1, 0, '{\"name\":\"cirrus-green\",\"type\":\"template\",\"creationDate\":\"2013-06-25\",\"author\":\"Hurricane Media\",\"copyright\":\"HurricaneMedia 2013\",\"authorEmail\":\"info@hurricanemedia.net\",\"authorUrl\":\"http:\\/\\/www.hurricanemedia.net\",\"version\":\"1.6\",\"description\":\"\\n\\t\\t<div style=\\\"text-align:left\\\"><span style=\\\"font-weight:bold;font-size:1.1em;color:#000\\\">--- Cirrus-Green HM02J ---<br \\/><hr style=\\\"border:0;color:rgb(226,226,226);background-color:rgb(226,226,226);height:1px\\\" \\/>Template for Joomla designed by Hurricane Media<br \\/><span style=\\\"color: #e70000\\\">Get the lastest version of this template, visit <a href=\\\"http:\\/\\/www.hurricanemedia.net\\\" target=\\\"_blank\\\">www.hurricanemedia.net<\\/a><\\/span>.<br \\/><br \\/>Position Layout:<br \\/><\\/span>\\n\\t\\t<br \\/>\\n\\t\\t<div style=\\\"border: 1px solid #c3c3c3;width:340px;overflow:auto;font-weight:normal;font-size:11px;background-color:#f8f8f8\\\">\\n\\n\\t\\t\\t<div style=\\\"float:right;width:240px;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6\\\">position-13 (top navigation)<\\/div>\\t\\n\\t\\t\\t<div style=\\\"float:right;width:140px;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6\\\">position-0 (search)<\\/div>\\n\\t\\t\\t<div style=\\\"clear:both;width:328px;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6\\\">position-1 (topmenu)<\\/div>\\n\\t\\t\\t<div style=\\\"clear:both;width:328px;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6\\\">position-2 (breadcrumbs)<\\/div>\\n\\n\\t\\t\\t<div style=\\\"float:left;width:70px;margin:0;padding:0\\\">\\n\\n\\t\\t\\t\\t<div style=\\\"float:left;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6;width:60px;height:30px\\\">position-7<\\/div>\\n\\t\\t\\t\\t<div style=\\\"float:left;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6;width:60px;height:30px\\\">position-4<\\/div>\\n\\t\\t\\t\\t<div style=\\\"float:left;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6;width:60px;height:30px\\\">position-5<\\/div>\\n\\n\\t\\t\\t<\\/div>\\n\\n\\t\\t\\t<div style=\\\"float:left;width:198px;margin:0;padding:0\\\">\\n\\t\\t\\t\\t<div style=\\\"float:left;width:198px;margin:0;padding:0\\\">\\n\\t\\t\\t\\t\\t<div style=\\\"border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6;width:188px;height:16px\\\">position-12<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<div style=\\\"float:left;width:198px;margin:0;padding:0\\\">\\n\\t\\t\\t\\t\\t<div style=\\\"border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6;width:188px;height:160px\\\">content (message\\/component)<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t<\\/div>\\n\\n\\t\\t\\t<div style=\\\"float:right;width:70px;margin:0;padding:0\\\">\\n\\n\\t\\t\\t\\t<div style=\\\"float:right;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6;width:60px;height:30px\\\">position-6<\\/div>\\n\\t\\t\\t\\t<div style=\\\"float:right;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6;width:60px;height:30px\\\">position-8<\\/div>\\n\\t\\t\\t\\t<div style=\\\"float:right;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6;width:60px;height:30px\\\">position-3<\\/div>\\n\\n\\t\\t\\t<\\/div>\\n\\n\\t\\t\\t<div style=\\\"clear:both;width:328px;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6\\\">position-14 (footer)<\\/div>\\n\\t\\t\\t\\n\\t\\t\\t<div style=\\\"float:left;;width:101px;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6\\\">position-9 (box 1)<\\/div>\\n\\t\\t\\t<div style=\\\"float:left;;width:101px;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6\\\">position-10 (box 2)<\\/div>\\n\\t\\t\\t<div style=\\\"float:left;;width:101px;border: 1px solid #c3c3c3;margin:2px;padding:3px;background-color:#e6e6e6\\\">position-11 (box 3)<\\/div>\\n\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t<\\/div>\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"logoimage\":\"1\",\"logo\":\"\",\"sitetitle\":\"CompanyLogo\",\"sitedescription\":\"Joomla! Templates designed by Hurricane Media\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Slideshow CK', 'module', 'mod_slideshowck', '', 0, 1, 0, 0, '{\"name\":\"Slideshow CK\",\"type\":\"module\",\"creationDate\":\"Avril 2012\",\"author\":\"C\\u00e9dric KEIFLIN\",\"copyright\":\"C\\u00e9dric KEIFLIN\",\"authorEmail\":\"ced1870@gmail.com\",\"authorUrl\":\"http:\\/\\/www.joomlack.fr\",\"version\":\"1.4.41\",\"description\":\"MOD_SLIDESHOWCK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_slideshowck\"}', '{\"slidesssource\":\"slidesmanager\",\"slides\":\"[{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]\",\"skin\":\"camera_amber_skin\",\"alignment\":\"center\",\"loader\":\"pie\",\"width\":\"auto\",\"height\":\"62%\",\"navigation\":\"2\",\"thumbnails\":\"1\",\"thumbnailwidth\":\"100\",\"thumbnailheight\":\"75\",\"pagination\":\"1\",\"effect\":\"random\",\"time\":\"7000\",\"transperiod\":\"1500\",\"captioneffect\":\"random\",\"portrait\":\"0\",\"autoAdvance\":\"1\",\"hover\":\"1\",\"displayorder\":\"normal\",\"limitslides\":\"\",\"fullpage\":\"0\",\"imagetarget\":\"_parent\",\"container\":\"\",\"usemobileimage\":\"0\",\"mobileimageresolution\":\"640\",\"loadjquery\":\"1\",\"loadjqueryeasing\":\"1\",\"loadjquerymobile\":\"1\",\"autocreatethumbs\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"articlelength\":\"150\",\"articlelink\":\"readmore\",\"articletitle\":\"h3\",\"showarticletitle\":\"1\",\"usecaptionresponsive\":\"1\",\"captionresponsiveresolution\":\"480\",\"captionresponsivefontsize\":\"0.6em\",\"captionresponsivehidecaption\":\"0\",\"captionstylesusefont\":\"1\",\"captionstylestextgfont\":\"Droid Sans\",\"captionstylesfontsize\":\"12px\",\"captionstylesfontcolor\":\"\",\"captionstylesfontweight\":\"normal\",\"captionstylesdescfontsize\":\"10px\",\"captionstylesdescfontcolor\":\"\",\"captionstylesusemargin\":\"1\",\"captionstylesmargintop\":\"0\",\"captionstylesmarginright\":\"0\",\"captionstylesmarginbottom\":\"0\",\"captionstylesmarginleft\":\"0\",\"captionstylespaddingtop\":\"0\",\"captionstylespaddingright\":\"0\",\"captionstylespaddingbottom\":\"0\",\"captionstylespaddingleft\":\"0\",\"captionstylesusebackground\":\"1\",\"captionstylesbgcolor1\":\"\",\"captionstylesbgopacity\":\"0.6\",\"captionstylesbgpositionx\":\"left\",\"captionstylesbgpositiony\":\"top\",\"captionstylesbgimagerepeat\":\"repeat\",\"captionstylesusegradient\":\"1\",\"captionstylesbgcolor2\":\"\",\"captionstylesuseroundedcorners\":\"1\",\"captionstylesroundedcornerstl\":\"5\",\"captionstylesroundedcornerstr\":\"5\",\"captionstylesroundedcornersbr\":\"5\",\"captionstylesroundedcornersbl\":\"5\",\"captionstylesuseshadow\":\"1\",\"captionstylesshadowcolor\":\"\",\"captionstylesshadowblur\":\"3\",\"captionstylesshadowspread\":\"0\",\"captionstylesshadowoffsetx\":\"0\",\"captionstylesshadowoffsety\":\"0\",\"captionstylesshadowinset\":\"0\",\"captionstylesuseborders\":\"1\",\"captionstylesbordercolor\":\"\",\"captionstylesborderwidth\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'COM_JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{\"name\":\"COM_JCE\",\"type\":\"component\",\"creationDate\":\"09-03-2017\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved\",\"authorEmail\":\"@@e-mail@@\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.6.9\",\"description\":\"COM_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"09-03-2017\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.9\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'plg_system_jce', 'plugin', 'jce', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_jce\",\"type\":\"plugin\",\"creationDate\":\"09-03-2017\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.9\",\"description\":\"PLG_SYSTEM_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10009, 'plg_content_jce', 'plugin', 'jce', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_jce\",\"type\":\"plugin\",\"creationDate\":\"09-03-2017\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.9\",\"description\":\"PLG_CONTENT_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'plg_extension_jce', 'plugin', 'jce', 'extension', 0, 1, 1, 0, '{\"name\":\"plg_extension_jce\",\"type\":\"plugin\",\"creationDate\":\"09-03-2017\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.9\",\"description\":\"PLG_EXTENSION_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'plg_installer_jce', 'plugin', 'jce', 'installer', 0, 1, 1, 0, '{\"name\":\"plg_installer_jce\",\"type\":\"plugin\",\"creationDate\":\"09-03-2017\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2017 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.6.9\",\"description\":\"PLG_INSTALLER_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'plg_quickicon_jce', 'plugin', 'jce', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_jce\",\"type\":\"plugin\",\"creationDate\":\"31-08-2016\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2016 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomalcontenteditor.net\",\"version\":\"2.6.0-pro-beta3\",\"description\":\"PLG_QUICKICON_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'PKG_JCE', 'package', 'pkg_jce', '', 0, 1, 1, 0, '{\"name\":\"PKG_JCE\",\"type\":\"package\",\"creationDate\":\"09-03-2017\",\"author\":\"Ryan Demmer\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.6.9\",\"description\":\"PKG_JCE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pkg_jce\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'com_services', 'component', 'com_services', '', 1, 1, 1, 0, '{\"name\":\"com_services\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Wanderson\",\"copyright\":\"((C)2017 SDrummond. All rights reserved.\",\"authorEmail\":\"wanderson@sdrummond.com.br\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"COM_SERVICES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"services\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'mod_services', 'module', 'mod_services', '', 0, 1, 1, 0, '{\"name\":\"mod_services\",\"type\":\"module\",\"creationDate\":\"February 2017\",\"author\":\"Wanderson Alves\",\"copyright\":\"Copyright (C) - 2017 - Sdrummond Solu\\u00e7\\u00f5es em Tecnologia. All rights reserved.\",\"authorEmail\":\"wanderson@sdrummond.com.br\",\"authorUrl\":\"www.sdrummond.com.br\",\"version\":\"1.0.0\",\"description\":\"MOD_SERVICES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_services\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'mod_article_single', 'module', 'mod_article_single', '', 0, 1, 1, 0, '{\"name\":\"mod_article_single\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLE_SINGLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_article_single\"}', '{\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_title\":\"15\",\"owncache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'SP Simple Portfolio', 'component', 'com_spsimpleportfolio', '', 1, 1, 0, 0, '{\"name\":\"SP Simple Portfolio\",\"type\":\"component\",\"creationDate\":\"December 2015\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (c) 2010- 2015 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"1.1\",\"description\":\"Simple Portfolio Component for Joomla 3.3+\",\"group\":\"\",\"filename\":\"spsimpleportfolio\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'com_clients', 'component', 'com_clients', '', 1, 1, 1, 0, '{\"name\":\"com_clients\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Wanderson\",\"copyright\":\"((C)2017 SDrummond. All rights reserved.\",\"authorEmail\":\"wanderson@sdrummond.com.br\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"COM_CLIENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"clients\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `sd17_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10019, 'com_clients', 'component', 'com_clients', '', 0, 1, 1, 0, '{\"name\":\"com_clients\",\"type\":\"component\",\"creationDate\":\"15\\/06\\/2016\",\"author\":\"Wanderson Alves\",\"copyright\":\"(C)2014 SDrummond. All rights reserved.\",\"authorEmail\":\"wanderson@sdrummond.com.br\",\"authorUrl\":\"www.sdrummond.com.br\",\"version\":\"3.6.0\",\"description\":\"COM_CLIENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"clients\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'PLG_SYSTEM_JQUERYEASY', 'plugin', 'jqueryeasy', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_JQUERYEASY\",\"type\":\"plugin\",\"creationDate\":\"2012-10-21\",\"author\":\"Olivier Buisard\",\"copyright\":\"Copyright (C) 2011 Simplify Your Web. All rights reserved.\",\"authorEmail\":\"olivier.buisard@simplifyyourweb.com\",\"authorUrl\":\"www.simplifyyourweb.com\",\"version\":\"1.6.9\",\"description\":\"PLG_SYSTEM_JQUERYEASY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jqueryeasy\"}', '{\"showreport\":\"0\",\"jqueryinfrontend\":\"1\",\"jqueryversionfrontend\":\"1.8\",\"jquerysubversionfrontend\":\"\",\"localversionfrontend\":\"\",\"migrateversionfrontend\":\"none\",\"localpathmigratefrontend\":\"\",\"jqueryuiversionfrontend\":\"1.9\",\"jqueryuisubversionfrontend\":\"\",\"localuiversionfrontend\":\"\",\"jqueryuithemefrontend\":\"none\",\"jqueryuithemecustomfrontend\":\"\",\"whichhttpfrontend\":\"https\",\"compressionfrontend\":\"compressed\",\"templateid\":[\"none\"],\"enableonlyinfrontend\":\"\",\"disableinfrontend\":\"\",\"replacewhenuniquefrontend\":\"1\",\"addwhenmissingfrontend\":\"1\",\"ignorescriptsfrontend\":\"media\\/jui\\/js\\/chosen.jquery.min.js\",\"removenoconflictfrontend\":\"1\",\"addnoconflictfrontend\":\"2\",\"replacedocumentreadyfrontend\":\"0\",\"disablemootools\":\"0\",\"keepmootoolsin\":\"\",\"disablecaptions\":\"0\",\"stripremainingscriptsfrontend\":\"\",\"stripremainingcssfrontend\":\"\",\"addjavascriptfrontend\":\"\",\"addjavascriptdeclarationfrontend\":\"\",\"addcssfrontend\":\"\",\"addcssdeclarationfrontend\":\"\",\"removeblanklinesfrontend\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 16, 0),
(10021, 'mod_depoimentos', 'module', 'mod_depoimentos', '', 0, 1, 1, 0, '{\"name\":\"mod_depoimentos\",\"type\":\"module\",\"creationDate\":\"February 2017\",\"author\":\"Wanderson Alves\",\"copyright\":\"Copyright (C) - 2017 - Sdrummond Solu\\u00e7\\u00f5es em Tecnologia. All rights reserved.\",\"authorEmail\":\"wanderson@sdrummond.com.br\",\"authorUrl\":\"www.sdrummond.com.br\",\"version\":\"1.0.1\",\"description\":\"MOD_DEPOIMENTOS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_depoimentos\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'mod_banner_int', 'module', 'mod_banner_int', '', 0, 1, 1, 0, '{\"name\":\"mod_banner_int\",\"type\":\"module\",\"creationDate\":\"February 2017\",\"author\":\"Wanderson Alves\",\"copyright\":\"Copyright (C) - 2017 - Sdrummond Solu\\u00e7\\u00f5es em Tecnologia. All rights reserved.\",\"authorEmail\":\"wanderson@sdrummond.com.br\",\"authorUrl\":\"www.sdrummond.com.br\",\"version\":\"1.0.0\",\"description\":\"MOD_BANNER_INT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banner_int\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'AcyMailing', 'component', 'com_acymailing', '', 1, 1, 0, 0, '{\"name\":\"AcyMailing\",\"type\":\"component\",\"creationDate\":\"avril 2017\",\"author\":\"Acyba\",\"copyright\":\"Copyright (C) 2009-2017 ACYBA SAS - All rights reserved.\",\"authorEmail\":\"dev@acyba.com\",\"authorUrl\":\"http:\\/\\/www.acyba.com\",\"version\":\"5.7.0\",\"description\":\"Manage your Mailing lists, Newsletters, e-mail marketing campaigns\",\"group\":\"\",\"filename\":\"acymailing_j3\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'AcyMailing : trigger Joomla Content plugins', 'plugin', 'contentplugin', 'acymailing', 0, 0, 1, 0, '{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"November 2009\"}', '', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(10025, 'AcyMailing Manage text', 'plugin', 'managetext', 'acymailing', 0, 1, 1, 0, '{\"version\":\"1.0.0\",\"author\":\"Acyba\",\"creationDate\":\"October 2010\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10026, 'AcyMailing Tag : Website links', 'plugin', 'online', 'acymailing', 0, 1, 1, 0, '{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10027, 'AcyMailing : share on social networks', 'plugin', 'share', 'acymailing', 0, 1, 1, 0, '{\"version\":\"1.0.0\",\"author\":\"Acyba\",\"creationDate\":\"August 2010\"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10028, 'AcyMailing : Statistics Plugin', 'plugin', 'stats', 'acymailing', 0, 1, 1, 0, '{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}', '', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10029, 'AcyMailing table of contents generator', 'plugin', 'tablecontents', 'acymailing', 0, 1, 1, 0, '{\"version\":\"1.0.0\",\"author\":\"Acyba\",\"creationDate\":\"January 2011\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10030, 'AcyMailing Tag : CB User information', 'plugin', 'tagcbuser', 'acymailing', 0, 0, 1, 0, '{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10031, 'AcyMailing Tag : content insertion', 'plugin', 'tagcontent', 'acymailing', 0, 1, 1, 0, '{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}', '', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(10032, 'AcyMailing Tag : Subscriber information', 'plugin', 'tagsubscriber', 'acymailing', 0, 1, 1, 0, '{\"version\":\"5.7.0\",\"author\":\"Acyba\",\"creationDate\":\"avril 2017\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10033, 'AcyMailing Tag : Manage the Subscription', 'plugin', 'tagsubscription', 'acymailing', 0, 1, 1, 0, '{\"version\":\"5.7.0\",\"author\":\"Acyba\",\"creationDate\":\"avril 2017\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10034, 'AcyMailing Tag : Date / Time', 'plugin', 'tagtime', 'acymailing', 0, 1, 1, 0, '{\"version\":\"5.7.0\",\"author\":\"Acyba\",\"creationDate\":\"avril 2017\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10035, 'AcyMailing Tag : Joomla User Information', 'plugin', 'taguser', 'acymailing', 0, 1, 1, 0, '{\"version\":\"5.7.0\",\"author\":\"Acyba\",\"creationDate\":\"avril 2017\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10036, 'AcyMailing Template Class Replacer', 'plugin', 'template', 'acymailing', 0, 1, 1, 0, '{\"version\":\"5.7.0\",\"author\":\"Acyba\",\"creationDate\":\"avril 2017\"}', '', '', '', 0, '0000-00-00 00:00:00', 25, 0),
(10037, 'AcyMailing Editor', 'plugin', 'acyeditor', 'editors', 0, 1, 1, 0, '{\"version\":\"5.7.0\",\"author\":\"Acyba\",\"creationDate\":\"avril 2017\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10038, 'AcyMailing : (auto)Subscribe during Joomla registration', 'plugin', 'regacymailing', 'system', 0, 1, 1, 0, '{\"version\":\"5.7.0\",\"author\":\"Acyba\",\"creationDate\":\"avril 2017\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10039, 'AcyMailing Module', 'module', 'mod_acymailing', '', 0, 1, 1, 0, '{\"version\":\"3.7.0\",\"author\":\"Acyba\",\"creationDate\":\"September 2009\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'PLG_SYSTEM_GLOBAL_OPEN_GRAPH', 'plugin', 'global_open_graph', 'system', 0, 0, 1, 0, '{\"name\":\"PLG_SYSTEM_GLOBAL_OPEN_GRAPH\",\"type\":\"plugin\",\"creationDate\":\"Aug 2013\",\"author\":\"mediahof\",\"copyright\":\"(C) 2013 - 2014 mediahof. All rights reserved.\",\"authorEmail\":\"mail@mediahof.de\",\"authorUrl\":\"www.mediahof.de\",\"version\":\"rev 15\",\"description\":\"PLG_SYSTEM_GLOBAL_OPEN_GRAPH_DESC\",\"group\":\"\",\"filename\":\"global_open_graph\"}', '{\"og:url\":\"https:\\/\\/sdrummond.com.br\\/\",\"og:title\":\"SDrummond Tecnologias (31) 2523-0501\",\"og:site_name\":\"SDrummond Tecnologias (31) 2523-0501\",\"og:type\":\"article\",\"og:description\":\"Desde 2011 no mercado de desenvolvimento de softwares e websites, a SDrummond tem conquistado clientes de diversas \\u00e1reas. Oferecemos solu\\u00e7\\u00f5es web efetivas, com cumplicidade na entrega, valores acess\\u00edveis, al\\u00e9m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu\\u00e7\\u00e3o de seus projetos.\",\"og:locale\":\"pt_BR\",\"og:locale:alternate\":\"\",\"og:street-address\":\"Rua Rene Sab\\u00e1, 52 - Sala 207\",\"og:postal-code\":\"31260010\",\"og:city\":\"Belo Horizonte\",\"og:country-name\":\"Jaragu\\u00e1\",\"og:latitude\":-19.856787,\"og:longitude\":-43.949514,\"og:email_address\":\"contato@sdrummond.com.br\",\"og:phone_number\":\"(31)2523-0501\",\"og:fax_number\":\"\",\"og:image\":\"https:\\/\\/sdrummond.com.br\\/images\\/escritorio_sdrummond_tecnologias.jpg\",\"og:image:secure_url\":false,\"og:image:type\":\"\",\"og:image:width\":0,\"og:image:height\":0,\"og:video\":false,\"og:video:secure_url\":false,\"og:video:type\":\"\",\"og:video:width\":0,\"og:video:height\":0,\"og:audio\":false,\"og:audio:secure_url\":false,\"og:audio:type\":\"\",\"fb:page_id\":246873055468106,\"fb:app_id\":0,\"fb:admins\":\"\",\"twitter:card\":\"\",\"twitter:site\":\"\",\"twitter:site:id\":0,\"twitter:creator\":\"\",\"twitter:creator:id\":0}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10041, 'com_xcf', 'component', 'com_xcf', '', 1, 1, 0, 0, '{\"name\":\"com_xcf\",\"type\":\"component\",\"creationDate\":\"August 23th 2016\",\"author\":\"Joomlakave\",\"copyright\":\"Copyright (C) 2016. All rights reserved.\",\"authorEmail\":\"contact@joomlakave.com\",\"authorUrl\":\"http:\\/\\/joomlakave.com\",\"version\":\"1.0\",\"description\":\"Joomla Open graph protocol(OGP) extension\",\"group\":\"\",\"filename\":\"xcf\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'Ajax - OGP Ajax Plugin', 'plugin', 'xcf', 'ajax', 0, 1, 1, 0, '{\"name\":\"Ajax - OGP Ajax Plugin\",\"type\":\"plugin\",\"creationDate\":\"August 23th 2016\",\"author\":\"Joomlakave\",\"copyright\":\"Copyright (C) 2012- 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"contact@joomlakave.com\",\"authorUrl\":\"http:\\/\\/joomlakave.com\",\"version\":\"1.0\",\"description\":\"aTeam Plugin for Ajax Operation\",\"group\":\"\",\"filename\":\"xcf\"}', '', '', '', 0, '0000-00-00 00:00:00', 9999, 0),
(10043, 'plg_content_xcf', 'plugin', 'xcf', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_xcf\",\"type\":\"plugin\",\"creationDate\":\"August 23th 2016\",\"author\":\"Joomlakave\",\"copyright\":\"Copyright (C) 2012 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"contact@joomlakave.com\",\"authorUrl\":\"http:\\/\\/joomlakave.com\",\"version\":\"1.0\",\"description\":\"PLG_CONTENT_XCF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"xcf\"}', '{\"og_fb_appkey_m\":\"246873055468106\",\"og_sitetitle_d\":\"SDrummond Tecnologias (31) 2523-0501\",\"og_title_d\":\"SDrummond Tecnologias (31) 2523-0501\",\"og_des_d\":\"Desde 2011 no mercado de desenvolvimento de softwares e websites, a SDrummond tem conquistado clientes de diversas \\u00e1reas. Oferecemos solu\\u00e7\\u00f5es web efetivas, com cumplicidade na entrega, valores acess\\u00edveis, al\\u00e9m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu\\u00e7\\u00e3o de seus projetos.\",\"og_img_d\":\"images\\/escritorio_sdrummond_tecnologias.jpg\",\"og_type_d\":\"article\"}', '', '', 0, '0000-00-00 00:00:00', 9999, 0),
(10044, 'OGP - Article Plugin', 'plugin', 'content', 'xcf', 0, 1, 1, 0, '{\"name\":\"OGP - Article Plugin\",\"type\":\"plugin\",\"creationDate\":\"August 23th 2016\",\"author\":\"Joomlakave\",\"copyright\":\"Copyright (C) 2012 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"contact@joomlakave.com\",\"authorUrl\":\"http:\\/\\/joomlakave.com\",\"version\":\"1.0\",\"description\":\"Com Content plugin support\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 9999, 0),
(10045, 'pkg_xcf', 'package', 'pkg_xcf', '', 0, 1, 1, 0, '{\"name\":\"pkg_xcf\",\"type\":\"package\",\"creationDate\":\"August 23th 2016\",\"author\":\"Joomlakave\",\"copyright\":\"(C) 2012 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"joomlakave24@gmail.com\",\"authorUrl\":\"http:\\/\\/joomlakave.com\",\"version\":\"1.0\",\"description\":\"PKG_XCF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pkg_xcf\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'JCH Optimize', 'component', 'com_jch_optimize', '', 1, 1, 0, 0, '{\"name\":\"JCH Optimize\",\"type\":\"component\",\"creationDate\":\"November 2017\",\"author\":\"Samuel Marshall\",\"copyright\":\"(c) 2017 JCH Optimize All rights reserved\",\"authorEmail\":\"samuel@jch-optimize.net\",\"authorUrl\":\"https:\\/\\/www.jch-optimize.net\",\"version\":\"5.2.2\",\"description\":\"Provides Ajax support to the JCH Optimize plugin\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'PLG_SYSTEM_JCH_OPTIMIZE', 'plugin', 'jch_optimize', 'system', 0, 0, 1, 0, '{\"name\":\"PLG_SYSTEM_JCH_OPTIMIZE\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Samuel Marshall\",\"copyright\":\"Copyright (C) 2017 Samuel Marshall. All rights reserved.\",\"authorEmail\":\"sdmarshall73@gmail.com\",\"authorUrl\":\"http:\\/\\/www.jch-optimize.net\",\"version\":\"5.2.2\",\"description\":\"JCH_OPTIMIZE_DESCRIPTION\",\"group\":\"\",\"filename\":\"jch_optimize\"}', '{\"combine_files_enable\":\"1\",\"html_minify_level\":\"0\",\"htaccess\":\"2\",\"try_catch\":\"0\",\"debug\":\"0\",\"log\":\"0\",\"css\":\"1\",\"javascript\":\"1\",\"gzip\":\"0\",\"css_minify\":\"0\",\"js_minify\":\"0\",\"html_minify\":\"0\",\"includeAllExtensions\":\"0\",\"hidden_containsgf\":\"\",\"csg_enable\":\"0\",\"csg_direction\":\"vertical\",\"csg_wrap_images\":\"0\",\"img_attributes_enable\":\"0\",\"kraken_backup\":\"1\"}', '', '', 635, '2022-05-30 23:31:44', 17, 0),
(10048, 'JCH Optimize Package', 'package', 'pkg_jch_optimize', '', 0, 1, 1, 0, '{\"name\":\"JCH Optimize Package\",\"type\":\"package\",\"creationDate\":\"November 2017\",\"author\":\"Samuel Marshall\",\"copyright\":\"Copyright (c) 2017 Samuel Marshall\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"5.2.2\",\"description\":\"Package to install the JCH Optimize plugin with supporting component\",\"group\":\"\",\"filename\":\"pkg_jch_optimize\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

CREATE TABLE `sd17_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `sd17_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

CREATE TABLE `sd17_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `sd17_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

CREATE TABLE `sd17_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sd17_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

CREATE TABLE `sd17_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 91, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_clients&view=clients', 'component', 1, 1, 1, 10018, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"Sites BH - (31) 2523-0501\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"-home\",\"menu-meta_description\":\"Oferecemos solu\\u00e7\\u00f5es web efetivas, com cumplicidade na entrega, valores acess\\u00edveis, al\\u00e9m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu\\u00e7\\u00e3o de seus projetos.\",\"menu-meta_keywords\":\"desenvolvimento de site, otimizacao de site, campanha google\",\"robots\":\"\",\"secure\":0}', 39, 40, 1, '*', 0),
(113, 'main', 'COM_JCE', 'com-jce', '', 'com-jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10005, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '{}', 55, 62, 0, '', 1),
(114, 'main', 'COM_JCE_MENU_CPANEL', 'com-jce-menu-cpanel', '', 'com-jce/com-jce-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 113, 2, 10005, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 56, 57, 0, '', 1),
(115, 'main', 'COM_JCE_MENU_CONFIG', 'com-jce-menu-config', '', 'com-jce/com-jce-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 113, 2, 10005, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 58, 59, 0, '', 1),
(116, 'main', 'COM_JCE_MENU_PROFILES', 'com-jce-menu-profiles', '', 'com-jce/com-jce-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 113, 2, 10005, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 60, 61, 0, '', 1),
(117, 'mainmenu', 'Conheça-nos', 'sdrummond-tecnologias', '', 'sdrummond-tecnologias', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"0\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"-sdrummond\",\"menu-meta_description\":\"Oferecemos solu\\u00e7\\u00f5es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu\\u00e7\\u00f5es, atrav\\u00e9s de an\\u00e1lise de cada cliente e suas necessidades espec\\u00edficas.\",\"menu-meta_keywords\":\"solucoes web, sdrummond, parceiro google, google partners, sistemas web, aplicacoes web\",\"robots\":\"\",\"secure\":0}', 41, 42, 0, '*', 0),
(118, 'mainmenu', 'Serviços', 'servicos', '', 'servicos', '', 'separator', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}', 43, 50, 0, '*', 0),
(119, 'mainmenu', 'Portfólio', 'portfolio', '', 'portfolio', 'index.php?option=com_spsimpleportfolio&view=items', 'component', 1, 1, 1, 10017, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_filter\":\"1\",\"layout_type\":\"default\",\"columns\":\"4\",\"thumbnail_type\":\"square\",\"limit\":\"12\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"-portfolio\",\"menu-meta_description\":\"Desenvolvimento de Sites, Blogs, Portais, Imobili\\u00e1rias e muito mais. Nossos projetos s\\u00e3o exclusivos, planejados individualmente para atender o que voc\\u00ea ou sua empresa precisa.\",\"menu-meta_keywords\":\"portfolio site, sites design, designer site, modelo site, melhores sites, sites exclusivos, templates diferentes, template sites \",\"robots\":\"\",\"secure\":0}', 51, 52, 0, '*', 0),
(120, 'mainmenu', 'Contato', 'contato', '', 'contato', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"0\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"-contato\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"orcamento site, sontato sdrummond, proposta site, proposta desenvolvimento site, fale conosco sdrummond\",\"robots\":\"\",\"secure\":0}', 53, 54, 0, '*', 0),
(121, 'main', 'com_services', 'com-services', '', 'com-services', 'index.php?option=com_services', 'component', 0, 1, 1, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:services', 0, '{}', 63, 64, 0, '', 1),
(122, 'main', 'COM_SPSIMPLEPORTFOLIO', 'com-spsimpleportfolio', '', 'com-spsimpleportfolio', 'index.php?option=com_spsimpleportfolio', 'component', 0, 1, 1, 10017, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 65, 66, 0, '', 1),
(123, 'main', 'com_clients', 'com-clients', '', 'com-clients', 'index.php?option=com_clients', 'component', 0, 1, 1, 10018, 0, '0000-00-00 00:00:00', 0, 1, 'class:clients', 0, '{}', 67, 68, 0, '', 1),
(124, 'mainmenu', 'Criação de Sites', 'criacao-de-sites-desenvolvimento-de-websites-responsivos', '', 'servicos/criacao-de-sites-desenvolvimento-de-websites-responsivos', 'index.php?option=com_content&view=article&id=1', 'component', 1, 118, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"0\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"-servicos\",\"menu-meta_description\":\"Possu\\u00edmos uma equipe profissional e capacitada para entender sua empresa e planejar a melhor op\\u00e7\\u00e3o em cria\\u00e7\\u00e3o de site. Nossos sites s\\u00e3o exclusivos e planejados de forma a atender seus clientes e proporcionar o retorno esperado para esse investimento.\",\"menu-meta_keywords\":\"criacao de site, desenvolvimento de site, site responsivo, site responsive, site mobile, site para celular\",\"robots\":\"\",\"secure\":0}', 44, 45, 0, '*', 0),
(125, 'mainmenu', 'Otimização de Sites', 'otimizacao-de-layout-e-conteudo-de-sites', '', 'servicos/otimizacao-de-layout-e-conteudo-de-sites', 'index.php?option=com_content&view=article&id=5', 'component', 1, 118, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"0\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"-servicos\",\"menu-meta_description\":\"Otimizamos seu site, tornando-o relevante para buscadores e usu\\u00e1rios, por possuir um conte\\u00fado de qualidade, boa arquitetura das informa\\u00e7\\u00f5es, um layout inovador alinhado a suas cores, conceitos e objetivos, de alta performance.\",\"menu-meta_keywords\":\"otimizacao de site BH, seo BH, otimizacao de sites, posicionamento google, google organico, otimizacao layout, tecnicas seo, melhoria de site\",\"robots\":\"\",\"secure\":0}', 46, 47, 0, '*', 0),
(126, 'mainmenu', 'Ranqueamento no Google', 'seo-ranqueamento-de-sites-junto-ao-google', '', 'servicos/seo-ranqueamento-de-sites-junto-ao-google', 'index.php?option=com_content&view=article&id=6', 'component', 1, 118, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"0\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"-servicos\",\"menu-meta_description\":\"Monitoramos a evolu\\u00e7\\u00e3o da sua campanha e de seus an\\u00fancios, alteramos as palavras-chave de acordo com os objetivos tra\\u00e7ados, sendo esses servi\\u00e7os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc\\u00ea e\\/ou sua empresa.\",\"menu-meta_keywords\":\"google adwords, posicionamento google, ranqueamento google, google meu negocio, google analytics, campanha google, google organico, investimento google, anuncio google\",\"robots\":\"\",\"secure\":0}', 48, 49, 0, '*', 0),
(136, 'main', 'AcyMailing', 'acymailing', '', 'acymailing', 'index.php?option=com_acymailing', 'component', 0, 1, 1, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acymailing.png', 0, '{}', 69, 84, 0, '', 1),
(137, 'main', 'Users', 'users', '', 'acymailing/users', 'index.php?option=com_acymailing&ctrl=subscriber', 'component', 0, 136, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-users.png', 0, '{}', 70, 71, 0, '', 1),
(138, 'main', 'Lists', 'lists', '', 'acymailing/lists', 'index.php?option=com_acymailing&ctrl=list', 'component', 0, 136, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acylist.png', 0, '{}', 72, 73, 0, '', 1),
(139, 'main', 'Newsletters', 'newsletters', '', 'acymailing/newsletters', 'index.php?option=com_acymailing&ctrl=newsletter', 'component', 0, 136, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-newsletter.png', 0, '{}', 74, 75, 0, '', 1),
(140, 'main', 'Templates', 'templates', '', 'acymailing/templates', 'index.php?option=com_acymailing&ctrl=template', 'component', 0, 136, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acytemplate.png', 0, '{}', 76, 77, 0, '', 1),
(141, 'main', 'Queue', 'queue', '', 'acymailing/queue', 'index.php?option=com_acymailing&ctrl=queue', 'component', 0, 136, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-process.png', 0, '{}', 78, 79, 0, '', 1),
(142, 'main', 'Statistics', 'statistics', '', 'acymailing/statistics', 'index.php?option=com_acymailing&ctrl=stats', 'component', 0, 136, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-stats.png', 0, '{}', 80, 81, 0, '', 1),
(143, 'main', 'Configuration', 'configuration', '', 'acymailing/configuration', 'index.php?option=com_acymailing&ctrl=cpanel', 'component', 0, 136, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acyconfig.png', 0, '{}', 82, 83, 0, '', 1),
(144, 'main', 'COM_XCF', 'com-xcf', '', 'com-xcf', 'index.php?option=com_xcf', 'component', 0, 1, 1, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_xcf/assets/images/s_com_xcf.png', 0, '{}', 85, 90, 0, '', 1),
(145, 'main', 'COM_XCF_TITLE_GROUPS', 'com-xcf-title-groups', '', 'com-xcf/com-xcf-title-groups', 'index.php?option=com_xcf&view=groups', 'component', 0, 144, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 86, 87, 0, '', 1),
(146, 'main', 'COM_XCF_TITLE_FIELDS', 'com-xcf-title-fields', '', 'com-xcf/com-xcf-title-fields', 'index.php?option=com_xcf&view=fields', 'component', 0, 144, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 88, 89, 0, '', 1);

CREATE TABLE `sd17_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site');

CREATE TABLE `sd17_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(88, 55, 'Site Information', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"0\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(89, 56, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{\"rssurl\":\"https:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(94, 63, 'Slideshow CK', '', '', 1, 'position-2', 635, '2017-04-26 22:34:22', '2017-03-10 18:12:03', '0000-00-00 00:00:00', 1, 'mod_slideshowck', 1, 0, '{\"slidesssource\":\"slidesmanager\",\"slides\":\"[{|qq|imgname|qq|:|qq|images\\/banners\\/criacao_desenvolvimento_sites_websites.jpg|qq|,|qq|imgcaption|qq|:|qq|Desenvolvimento de Websites Responsivos|qq|,|qq|imgtitle|qq|:|qq|Sites Responsivos|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/sdrummond2017\\/images\\/banners\\/criacao_desenvolvimento_sites_websites.jpg|qq|,|qq|imglink|qq|:|qq|index.php\\/servicos\\/criacao-de-sites-desenvolvimento-de-websites-responsivos|qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/banners\\/parceiro_google.jpg|qq|,|qq|imgcaption|qq|:|qq|Ranqueamento de Sites com a Cria\\u00e7\\u00e3o de Campanhas|qq|,|qq|imgtitle|qq|:|qq|Google Adwords|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/sdrummond2017\\/images\\/banners\\/parceiro_google.jpg|qq|,|qq|imglink|qq|:|qq|index.php\\/servicos\\/seo-ranqueamento-de-sites-junto-ao-google|qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/banners\\/otimizacao_sites_seo_google_organico.jpg|qq|,|qq|imgcaption|qq|:|qq|Otimiza\\u00e7\\u00e3o de Layout e Conte\\u00fado de Sites|qq|,|qq|imgtitle|qq|:|qq|SEO|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/sdrummond2017\\/images\\/banners\\/otimizacao_sites_seo_google_organico.jpg|qq|,|qq|imglink|qq|:|qq|index.php\\/servicos\\/otimizacao-de-layout-e-conteudo-de-sites|qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]\",\"theme\":\"default\",\"skin\":\"camera_amber_skin\",\"alignment\":\"center\",\"loader\":\"none\",\"width\":\"auto\",\"height\":\"auto\",\"navigation\":\"2\",\"thumbnails\":\"0\",\"thumbnailwidth\":\"100\",\"thumbnailheight\":\"75\",\"pagination\":\"0\",\"effect\":[\"simpleFade\"],\"time\":\"7000\",\"transperiod\":\"1500\",\"captioneffect\":\"fadeIn\",\"portrait\":\"0\",\"autoAdvance\":\"1\",\"hover\":\"1\",\"displayorder\":\"shuffle\",\"limitslides\":\"\",\"fullpage\":\"0\",\"imagetarget\":\"_parent\",\"usemobileimage\":\"0\",\"mobileimageresolution\":\"640\",\"loadjquery\":\"1\",\"loadjqueryeasing\":\"1\",\"loadjquerymobile\":\"1\",\"autocreatethumbs\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"articlelength\":\"150\",\"articlelink\":\"title\",\"articletitle\":\"h3\",\"showarticletitle\":\"1\",\"captionstylesusefont\":\"1\",\"captionstylestextgfont\":\"Droid Sans\",\"captionstylesfontsize\":\"1.1em\",\"captionstylesfontcolor\":\"\",\"captionstylesfontweight\":\"normal\",\"captionstylesdescfontsize\":\"0.8em\",\"captionstylesdescfontcolor\":\"\",\"captionstylesusemargin\":\"1\",\"captionstylesmargintop\":\"0\",\"captionstylesmarginright\":\"0\",\"captionstylesmarginbottom\":\"0\",\"captionstylesmarginleft\":\"0\",\"captionstylespaddingtop\":\"0\",\"captionstylespaddingright\":\"0\",\"captionstylespaddingbottom\":\"0\",\"captionstylespaddingleft\":\"0\",\"captionstylesusebackground\":\"1\",\"captionstylesbgcolor1\":\"\",\"captionstylesbgopacity\":\"0.6\",\"captionstylesbgimage\":\"\",\"captionstylesbgpositionx\":\"left\",\"captionstylesbgpositiony\":\"top\",\"captionstylesbgimagerepeat\":\"repeat\",\"captionstylesusegradient\":\"1\",\"captionstylesbgcolor2\":\"\",\"captionstylesuseroundedcorners\":\"1\",\"captionstylesroundedcornerstl\":\"5\",\"captionstylesroundedcornerstr\":\"5\",\"captionstylesroundedcornersbr\":\"5\",\"captionstylesroundedcornersbl\":\"5\",\"captionstylesuseshadow\":\"1\",\"captionstylesshadowcolor\":\"\",\"captionstylesshadowblur\":\"3\",\"captionstylesshadowspread\":\"0\",\"captionstylesshadowoffsetx\":\"0\",\"captionstylesshadowoffsety\":\"0\",\"captionstylesshadowinset\":\"0\",\"captionstylesuseborders\":\"1\",\"captionstylesbordercolor\":\"\",\"captionstylesborderwidth\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(95, 65, 'Telefone Topo', '', '<div class=\"telefone\"><a href=\"tel:+553125230501\"><i class=\"fa fa-phone\"></i> (31) 2523-0501</a></div>\r\n<div class=\"redes-sociais\"><a href=\"https://www.facebook.com/sdrummondtecnologia\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a> <a href=\"https://plus.google.com/107125047179277738685?hl=pt_BR\" target=\"_blank\"><i class=\"fa fa-google-plus\"></i></a> <a href=\"https://twitter.com/_SDrummond\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></div>', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-telefone\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(96, 67, 'O que fazemos', '', '', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_services', 1, 0, '{\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"-servico\",\"style\":\"0\"}', 0, '*'),
(97, 69, 'Sdrummond', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_article_single', 1, 0, '{\"title\":\"2\",\"link_titles\":\"0\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"0\",\"readmore_title\":\"saiba\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(98, 75, 'Depoimentos', '', '', 1, 'position-8', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_depoimentos', 1, 0, '{\"catid\":\"8\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(99, 76, 'Logo rodapé', '', '<p><a href=\"index.php\"><img src=\"images/sdrummond_logo_negativo.png\" alt=\"sdrummond logo negativo\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></a></p>', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-logo-rodape\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(100, 77, 'Menu Map', '', '', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"-menu-map\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-menu-map\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(101, 78, 'Contate-nos', '', '<p><a href=\"tel:+553125230501\">(31) 2523-0501</a> | <a href=\"tel:+5531992789954\">(31) 99278-9954</a></p>\r\n<p>contato@sdrummond.com.br</p>\r\n<div class=\"redes-sociais\">\r\n<p>Acompanhe-nos</p>\r\n<p>\r\n<a href=\"https://www.facebook.com/sdrummondtecnologia\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a> \r\n<a href=\"https://plus.google.com/107125047179277738685?hl=pt_BR\" target=\"_blank\"><i class=\"fa fa-google-plus\"></i></a> \r\n<a href=\"https://twitter.com/_SDrummond\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a>\r\n</p>\r\n</div>', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-contate\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(102, 79, 'Onde Estamos', '', '<div class=\"maps\"><a href=\"https://goo.gl/maps/k1NUSG6L3QE2\" target=\"_blank\">Visite-nos&nbsp;<i class=\"fa fa-map-marker\"></i></a></div>\r\n<p>Rua Izabel Bueno, 1480 | Sala 207<br /> Bairro Santa Rosa, Belo Horizonte - MG<br /> CEP.: 31.255-754</p>\r\n<div class=\"google\"><a href=\"https://www.google.com/partners/agency?id=2245425147\" target=\"_blank\"><img src=\"images/google.png\" alt=\"Google Partners\" /></a></div>', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-onde-estamos\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(103, 80, 'Banner Empresa', '', '<h1>Sdrummond</h1>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-banner-int sdrummond\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(104, 81, 'Banner Criação de Sites', '', '<h1>Criação de Sites</h1>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-banner-int criacao-sites\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(105, 82, 'Banner Otimização de Sites', '', '<h1>Otimização de Sites</h1>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-banner-int otimizacao-sites\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(106, 83, 'Banner Google Adwords', '', '<h1>Google Adwords</h1>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-banner-int google-adwords\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(107, 84, 'Banner Serviços', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banner_int', 1, 0, '{\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(108, 85, 'Banner Contato', '', '<h1>Fale Conosco</h1>', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"-banner-int fale-conosco\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(109, 0, 'AcyMailing Module', '', '', 0, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_acymailing', 1, 1, '', 0, '*');

CREATE TABLE `sd17_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(79, 0),
(86, 0),
(88, 0),
(89, 0),
(94, 101),
(95, 0),
(96, 101),
(97, 101),
(98, 101),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 117),
(104, 124),
(105, 125),
(106, 126),
(107, 119),
(108, 120),
(109, 0);

CREATE TABLE `sd17_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1);

CREATE TABLE `sd17_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16'),
(10017, '1.1-2015-23-04'),
(10041, '1.0.1');

CREATE TABLE `sd17_services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `published` tinyint(3) NOT NULL,
  `checked_out` int(10) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `ordering` int(10) NOT NULL,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sd17_services` (`id`, `name`, `alias`, `image`, `link`, `subtitle`, `description`, `published`, `checked_out`, `checked_out_time`, `created`, `created_by`, `modified`, `modified_by`, `ordering`, `publish_up`, `publish_down`) VALUES
(1, 'Criação de Sites', 'criacao-de-sites', 'images/servicos/desenvolvimento_criacao_sites.png', 'index.php/servicos/criacao-de-sites-desenvolvimento-de-websites-responsivos', 'Desenvolvimento de Websites Responsivos', '<p>Cria&ccedil;&atilde;o de sites exclusivos, din&acirc;micos, modernos. Aumente as possibilidades de neg&oacute;cio com um site bonito, bem apresent&aacute;vel que conven&ccedil;a seus clientes que a sua empresa &eacute; a melhor op&ccedil;&atilde;o para eles.</p>', 1, 0, '0000-00-00 00:00:00', '2017-03-13 16:53:54', 635, '2017-03-15 18:55:52', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Otimização', 'otimizacao', 'images/servicos/otimizacao_sites.png', 'index.php/servicos/otimizacao-de-layout-e-conteudo-de-sites', 'Otimização de Layout e Conteúdo de Sites', '<p>N&atilde;o basta apenas ter um site, ele tem que ser encontrado pelos seus clientes. A Otimiza&ccedil;&atilde;o de Sites (SEO) posiciona seu site nas primeiras posi&ccedil;&otilde;es do Google e aumenta a visibilidade da sua empresa.</p>', 1, 0, '0000-00-00 00:00:00', '2017-03-13 17:00:37', 635, '2017-03-15 18:56:29', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Google Adwords', 'google-adwords', 'images/servicos/seo_google_adwords_campanhas.png', 'index.php/servicos/seo-ranqueamento-de-sites-junto-ao-google', 'Ranqueamento de Sites junto ao Google', '<p>Criamos Campanhas no Google com Links Patrocinados, fazendo com que seus an&uacute;ncios sejam exibidos na primeira p&aacute;gina das pesquisas do Google, de acordo com seus produtos e servi&ccedil;os.</p>', 1, 0, '0000-00-00 00:00:00', '2017-03-13 17:03:28', 635, '2017-03-15 18:56:13', 635, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

CREATE TABLE `sd17_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('0490e6026df8600f97faf4c0a9765669', 0, 1, '1653953524', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTo3O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1MzMzOTtzOjQ6Imxhc3QiO2k6MTY1Mzk1MzQ5NTtzOjM6Im5vdyI7aToxNjUzOTUzNTI0O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('0797a8d00e547f48af3ac3d5899a8592', 0, 1, '1653943310', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMxMDtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMxMDtzOjM6Im5vdyI7aToxNjUzOTQzMzEwO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('09b140bf34fbbbe2bee48f6c649c2f8d', 0, 1, '1653954433', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1NDQzMjtzOjQ6Imxhc3QiO2k6MTY1Mzk1NDQzMjtzOjM6Im5vdyI7aToxNjUzOTU0NDMyO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('1477ae1d354cb3a5ee01fc4a23b01b49', 0, 1, '1653943310', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMxMDtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMxMDtzOjM6Im5vdyI7aToxNjUzOTQzMzEwO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('19ed75f2da9f7f84a7b4a11a3c12f257', 0, 1, '1653952003', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1MjAwMjtzOjQ6Imxhc3QiO2k6MTY1Mzk1MjAwMjtzOjM6Im5vdyI7aToxNjUzOTUyMDAyO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('20c867a3fa7f8e970f927aaa6fa22f1c', 0, 1, '1653948025', 'joomla|s:896:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0ODAxNDtzOjQ6Imxhc3QiO2k6MTY1Mzk0ODAxNTtzOjM6Im5vdyI7aToxNjUzOTQ4MDI1O31zOjU6InRva2VuIjtzOjMyOiJ1WWl1QXpJSVZMWk52b3NUZVk1N0dhSmFnR2NLM2ZNTCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJjb21fY29udGFjdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250YWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('3042e38d8a08d0a7034557671d705e8b', 1, 1, '1653928893', 'joomla|s:784:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkyODg4ODtzOjQ6Imxhc3QiO2k6MTY1MzkyODg5MTtzOjM6Im5vdyI7aToxNjUzOTI4ODkzO31zOjU6InRva2VuIjtzOjMyOiIwVDdBbzdIVUoxSUdyS3duZ0tPQ2lzV1ZWS2JjTEdzaiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('3713a9d36cb249cf1d55872a1cee898a', 0, 1, '1653934097', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkzNDA5NztzOjQ6Imxhc3QiO2k6MTY1MzkzNDA5NztzOjM6Im5vdyI7aToxNjUzOTM0MDk3O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('373081ddd3dba543279c3c43c81a1b3f', 0, 1, '1653931770', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkzMTc3MDtzOjQ6Imxhc3QiO2k6MTY1MzkzMTc3MDtzOjM6Im5vdyI7aToxNjUzOTMxNzcwO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('49ce16828bb4c5d741715bca0f6168d7', 0, 1, '1653954403', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTozODtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2NTM5NDk3NjE7czo0OiJsYXN0IjtpOjE2NTM5NTQ0MDE7czozOiJub3ciO2k6MTY1Mzk1NDQwMzt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
('4ea3cabc54916da8ff65f6cf1673a787', 1, 1, '1653944601', 'joomla|s:784:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0NDU5NTtzOjQ6Imxhc3QiO2k6MTY1Mzk0NDU5OTtzOjM6Im5vdyI7aToxNjUzOTQ0NjAxO31zOjU6InRva2VuIjtzOjMyOiJWYlZXWTJiTHJrWU8xYW1IaVJQWVdXRlcwNjVJb3B0WiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('504937e65e438e3b465df1942e0b19e9', 0, 1, '1653949097', 'joomla|s:712:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0OTA5MDtzOjQ6Imxhc3QiO2k6MTY1Mzk0OTA5MztzOjM6Im5vdyI7aToxNjUzOTQ5MDk3O31zOjU6InRva2VuIjtzOjMyOiIyYXFYNzlpcjRnS1JwaW1ZMFR2VVdlNGdwb0dlYkV0ZSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
('514449ccf6234e50ebd73b683a2014d3', 0, 1, '1653953632', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTo3O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1MzUzOTtzOjQ6Imxhc3QiO2k6MTY1Mzk1MzYyNjtzOjM6Im5vdyI7aToxNjUzOTUzNjMyO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('551758a570f9f1fcfe6ac8036c6fd45e', 0, 1, '1653932428', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkzMjQyODtzOjQ6Imxhc3QiO2k6MTY1MzkzMjQyODtzOjM6Im5vdyI7aToxNjUzOTMyNDI4O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('5634333b572e432119b52df1bfbabf95', 0, 1, '1653946663', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0NjY2MztzOjQ6Imxhc3QiO2k6MTY1Mzk0NjY2MztzOjM6Im5vdyI7aToxNjUzOTQ2NjYzO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('57618ff98d9e3359bcffcc0ef1b58b7c', 0, 1, '1653949887', 'joomla|s:716:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyNztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2NTM5NDk3MTk7czo0OiJsYXN0IjtpOjE2NTM5NDk4NTc7czozOiJub3ciO2k6MTY1Mzk0OTg4Nzt9czo1OiJ0b2tlbiI7czozMjoiNW44cEJleUJoMXNpRGRmMHJ1dUFNNWUwTTlPUFVYdVUiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('615bbf19e91531316faff1a2fed4e1c5', 0, 1, '1653948326', 'joomla|s:896:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0ODMxNTtzOjQ6Imxhc3QiO2k6MTY1Mzk0ODMxNjtzOjM6Im5vdyI7aToxNjUzOTQ4MzI2O31zOjU6InRva2VuIjtzOjMyOiI4Y1VzUFlBTnBod1ZSdFk3WDNONFVlckV1MzkxOWU2ZSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJjb21fY29udGFjdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250YWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('6766bf0729f292dbe448e6fc21754cf9', 1, 1, '1653944006', 'joomla|s:784:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0Mzk5ODtzOjQ6Imxhc3QiO2k6MTY1Mzk0NDAwMjtzOjM6Im5vdyI7aToxNjUzOTQ0MDA2O31zOjU6InRva2VuIjtzOjMyOiJyUnpTSW1HMmhZVkkzZWdOcklWNlBjRFdwZmw5UjBUQSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('67a611b4cc4a210c006653f4a555a7ff', 0, 1, '1653952425', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1MjQyNTtzOjQ6Imxhc3QiO2k6MTY1Mzk1MjQyNTtzOjM6Im5vdyI7aToxNjUzOTUyNDI1O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('6cd5cdfec0870f4168bee3e8f77c7d50', 1, 0, '1653950756', 'joomla|s:6656:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyNjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2NTM5NTA1MDY7czo0OiJsYXN0IjtpOjE2NTM5NTA3NTU7czozOiJub3ciO2k6MTY1Mzk1MDc1Njt9czo1OiJ0b2tlbiI7czozMjoiQ3hSRXBCTFJoVFZ5RUxCY2J1OGFlYUJwVnRwVjRMcTIiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMDoiY29tX2NvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJjb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZ2xvYmFsIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO2E6OTE6e3M6Nzoib2ZmbGluZSI7czoxOiIwIjtzOjE1OiJvZmZsaW5lX21lc3NhZ2UiO3M6Nzg6IkVzdGUgc2l0ZSBlc3TDoSBmb3JhIGRvIGFyIHBhcmEgbWFudXRlbsOnw6NvLjxiciAvPlRlbnRlIG5vdmFtZW50ZSBtYWlzIHRhcmRlLiI7czoyMzoiZGlzcGxheV9vZmZsaW5lX21lc3NhZ2UiO3M6MToiMSI7czoxMzoib2ZmbGluZV9pbWFnZSI7czowOiIiO3M6ODoic2l0ZW5hbWUiO3M6NTE6IlNkcnVtbW9uZCBTb2x1w6fDtWVzIGVtIFRlY25vbG9naWEgLSAoMzEpIDI1MjMtMDUwMSI7czo2OiJlZGl0b3IiO3M6MzoiamNlIjtzOjc6ImNhcHRjaGEiO3M6MToiMCI7czoxMDoibGlzdF9saW1pdCI7czoyOiIyMCI7czo2OiJhY2Nlc3MiO3M6MToiMSI7czo1OiJkZWJ1ZyI7czoxOiIwIjtzOjEwOiJkZWJ1Z19sYW5nIjtzOjE6IjAiO3M6NjoiZGJ0eXBlIjtzOjY6Im15c3FsaSI7czo0OiJob3N0IjtzOjk6ImxvY2FsaG9zdCI7czo0OiJ1c2VyIjtzOjExOiJzZHJ1bTAzOV9kYiI7czo4OiJwYXNzd29yZCI7czo2OiJzZDE1ZGIiO3M6MjoiZGIiO3M6MjI6InNkcnVtMDM5X3NkcnVtbW9uZF9uZXciO3M6ODoiZGJwcmVmaXgiO3M6NToic2QxN18iO3M6OToibGl2ZV9zaXRlIjtzOjA6IiI7czo2OiJzZWNyZXQiO3M6MTY6IndSbGtkZkh1SDBHT3ZMR1IiO3M6NDoiZ3ppcCI7czoxOiIwIjtzOjE1OiJlcnJvcl9yZXBvcnRpbmciO3M6NDoibm9uZSI7czo3OiJoZWxwdXJsIjtzOjgwOiJodHRwczovL2hlbHAuam9vbWxhLm9yZy9wcm94eT9rZXlyZWY9SGVscHttYWpvcn17bWlub3J9OntrZXlyZWZ9Jmxhbmc9e2xhbmdjb2RlfSI7czo4OiJmdHBfaG9zdCI7czowOiIiO3M6ODoiZnRwX3BvcnQiO3M6MDoiIjtzOjg6ImZ0cF91c2VyIjtzOjA6IiI7czo4OiJmdHBfcGFzcyI7czowOiIiO3M6ODoiZnRwX3Jvb3QiO3M6MDoiIjtzOjEwOiJmdHBfZW5hYmxlIjtzOjE6IjAiO3M6Njoib2Zmc2V0IjtzOjM6IlVUQyI7czoxMDoibWFpbG9ubGluZSI7czoxOiIxIjtzOjY6Im1haWxlciI7czo0OiJzbXRwIjtzOjg6Im1haWxmcm9tIjtzOjI0OiJjb250YXRvQHNkcnVtbW9uZC5jb20uYnIiO3M6ODoiZnJvbW5hbWUiO3M6OToiU2RydW1tb25kIjtzOjg6InNlbmRtYWlsIjtzOjE4OiIvdXNyL3NiaW4vc2VuZG1haWwiO3M6ODoic210cGF1dGgiO3M6MToiMSI7czo4OiJzbXRwdXNlciI7czoyNDoiY29udGF0b0BzZHJ1bW1vbmQuY29tLmJyIjtzOjg6InNtdHBwYXNzIjtzOjExOiJzZDE1Y29udGF0byI7czo4OiJzbXRwaG9zdCI7czoxNjoic2RydW1tb25kLmNvbS5iciI7czoxMDoic210cHNlY3VyZSI7czozOiJzc2wiO3M6ODoic210cHBvcnQiO3M6MzoiNDY1IjtzOjc6ImNhY2hpbmciO3M6MToiMCI7czoxMzoiY2FjaGVfaGFuZGxlciI7czo0OiJmaWxlIjtzOjk6ImNhY2hldGltZSI7czozOiI1MDAiO3M6MjA6ImNhY2hlX3BsYXRmb3JtcHJlZml4IjtzOjE6IjAiO3M6ODoiTWV0YURlc2MiO3M6MTk5OiJPZmVyZWNlbW9zIHNvbHXDp8O1ZXMgd2ViIGVmZXRpdmFzLCBjb20gY3VtcGxpY2lkYWRlIG5hIGVudHJlZ2EsIHZhbG9yZXMgYWNlc3PDrXZlaXMsIGFsw6ltIGRlIGNvbnRhciBjb20gdW1hIGVxdWlwZSBkZSBwcm9maXNzaW9uYWlzIGNhcGFjaXRhZG9zIHBhcmEgbyBkZXNlbnZvbHZpbWVudG8gZSBleGVjdcOnw6NvIGRlIHNldXMgcHJvamV0b3MuIjtzOjg6Ik1ldGFLZXlzIjtzOjE1NDoiY3JpYWNhbyBkZSBzaXRlIEJILCBvdGltaXphY2FvIGRlIHNpdGUgQkgsIGNhbXBhbmhhIGFkd29yZHMgQkgsIGNhbXBhbmhhIGdvb2dsZSBCSCwgY3JpYWNhbyBkZSBzaXRlLCBvdGltaXphY2FvIGRlIHNpdGUsIGNhbXBhbmhhIGFkd29yZHMsIGNhbXBhbmhhIGdvb2dsZSI7czo5OiJNZXRhVGl0bGUiO3M6MToiMSI7czoxMDoiTWV0YUF1dGhvciI7czoxOiIwIjtzOjExOiJNZXRhVmVyc2lvbiI7czoxOiIwIjtzOjY6InJvYm90cyI7czowOiIiO3M6Mzoic2VmIjtzOjE6IjEiO3M6MTE6InNlZl9yZXdyaXRlIjtzOjE6IjEiO3M6MTA6InNlZl9zdWZmaXgiO3M6MToiMCI7czoxMjoidW5pY29kZXNsdWdzIjtzOjE6IjAiO3M6MTA6ImZlZWRfbGltaXQiO3M6MjoiMTAiO3M6MTA6ImZlZWRfZW1haWwiO3M6NDoibm9uZSI7czo4OiJsb2dfcGF0aCI7czo0ODoiQzpceGFtcHBcaHRkb2NzXHNkcnVtbW9uZDIwMTdcYWRtaW5pc3RyYXRvci9sb2dzIjtzOjg6InRtcF9wYXRoIjtzOjMzOiJDOlx4YW1wcFxodGRvY3Ncc2RydW1tb25kMjAxNy90bXAiO3M6ODoibGlmZXRpbWUiO3M6MzoiNTAwIjtzOjE1OiJzZXNzaW9uX2hhbmRsZXIiO3M6ODoiZGF0YWJhc2UiO3M6MTY6Im1lbWNhY2hlX3BlcnNpc3QiO3M6MToiMSI7czoxNzoibWVtY2FjaGVfY29tcHJlc3MiO3M6MToiMCI7czoyMDoibWVtY2FjaGVfc2VydmVyX2hvc3QiO3M6OToibG9jYWxob3N0IjtzOjIwOiJtZW1jYWNoZV9zZXJ2ZXJfcG9ydCI7czo1OiIxMTIxMSI7czoxNzoibWVtY2FjaGVkX3BlcnNpc3QiO3M6MToiMSI7czoxODoibWVtY2FjaGVkX2NvbXByZXNzIjtzOjE6IjAiO3M6MjE6Im1lbWNhY2hlZF9zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6MjE6Im1lbWNhY2hlZF9zZXJ2ZXJfcG9ydCI7czo1OiIxMTIxMSI7czoxMzoicmVkaXNfcGVyc2lzdCI7czoxOiIxIjtzOjE3OiJyZWRpc19zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6MTc6InJlZGlzX3NlcnZlcl9wb3J0IjtzOjQ6IjYzNzkiO3M6MTc6InJlZGlzX3NlcnZlcl9hdXRoIjtzOjA6IiI7czoxNToicmVkaXNfc2VydmVyX2RiIjtzOjE6IjAiO3M6MTI6InByb3h5X2VuYWJsZSI7czoxOiIwIjtzOjEwOiJwcm94eV9ob3N0IjtzOjA6IiI7czoxMDoicHJveHlfcG9ydCI7czowOiIiO3M6MTA6InByb3h5X3VzZXIiO3M6MDoiIjtzOjEwOiJwcm94eV9wYXNzIjtzOjA6IiI7czoxMToibWFzc21haWxvZmYiO3M6MToiMCI7czoxMDoiTWV0YVJpZ2h0cyI7czowOiIiO3M6MTk6InNpdGVuYW1lX3BhZ2V0aXRsZXMiO3M6MToiMCI7czo5OiJmb3JjZV9zc2wiO3M6MToiMiI7czoyODoic2Vzc2lvbl9tZW1jYWNoZV9zZXJ2ZXJfaG9zdCI7czo5OiJsb2NhbGhvc3QiO3M6Mjg6InNlc3Npb25fbWVtY2FjaGVfc2VydmVyX3BvcnQiO3M6NToiMTEyMTEiO3M6Mjk6InNlc3Npb25fbWVtY2FjaGVkX3NlcnZlcl9ob3N0IjtzOjk6ImxvY2FsaG9zdCI7czoyOToic2Vzc2lvbl9tZW1jYWNoZWRfc2VydmVyX3BvcnQiO3M6NToiMTEyMTEiO3M6MTI6ImZyb250ZWRpdGluZyI7czoxOiIxIjtzOjEzOiJjb29raWVfZG9tYWluIjtzOjA6IiI7czoxMToiY29va2llX3BhdGgiO3M6MDoiIjtzOjg6ImFzc2V0X2lkIjtpOjE7czo3OiJmaWx0ZXJzIjthOjk6e2k6MTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6Ik5IIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6OTthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NjthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjI6IkJMIjtzOjExOiJmaWx0ZXJfdGFncyI7czowOiIiO3M6MTc6ImZpbHRlcl9hdHRyaWJ1dGVzIjtzOjA6IiI7fWk6NzthOjM6e3M6MTE6ImZpbHRlcl90eXBlIjtzOjQ6Ik5PTkUiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aToyO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiTkgiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTozO2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo0O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo1O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6MjoiQkwiO3M6MTE6ImZpbHRlcl90YWdzIjtzOjA6IiI7czoxNzoiZmlsdGVyX2F0dHJpYnV0ZXMiO3M6MDoiIjt9aTo4O2E6Mzp7czoxMToiZmlsdGVyX3R5cGUiO3M6NDoiTk9ORSI7czoxMToiZmlsdGVyX3RhZ3MiO3M6MDoiIjtzOjE3OiJmaWx0ZXJfYXR0cmlidXRlcyI7czowOiIiO319fX19fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiNjM1Ijt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 635, 'sdrummond'),
('79fdfb1ed93dae4b80f434bc22d27a20', 0, 1, '1653953647', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aTo1O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1MzMxNjtzOjQ6Imxhc3QiO2k6MTY1Mzk1MzM0NTtzOjM6Im5vdyI7aToxNjUzOTUzNjQ3O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('8abcbd6436872a703512c1b63545ab91', 0, 1, '1653954532', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1NDUzMjtzOjQ6Imxhc3QiO2k6MTY1Mzk1NDUzMjtzOjM6Im5vdyI7aToxNjUzOTU0NTMyO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('8d2d67166b07254619ebc5b8509a5373', 0, 1, '1653953505', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1MzUwNTtzOjQ6Imxhc3QiO2k6MTY1Mzk1MzUwNTtzOjM6Im5vdyI7aToxNjUzOTUzNTA1O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('9005a702f403b0cfc0116d5a2ff93995', 0, 1, '1653943310', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMxMDtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMxMDtzOjM6Im5vdyI7aToxNjUzOTQzMzEwO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('991e708f3b7d40bfaaf5d79ec04caebd', 0, 1, '1653929549', 'joomla|s:896:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkyOTUzOTtzOjQ6Imxhc3QiO2k6MTY1MzkyOTU0MTtzOjM6Im5vdyI7aToxNjUzOTI5NTQ5O31zOjU6InRva2VuIjtzOjMyOiJiNE9vc2FNT0kyZWduZ2dmRlFDaE5YY1NxU29tekZKQSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJjb21fY29udGFjdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250YWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('b715e91f6d019cca9040c7753d497abd', 0, 1, '1653943311', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMxMTtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMxMTtzOjM6Im5vdyI7aToxNjUzOTQzMzExO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('b914a694785de60d2e37e720ea8e39ac', 0, 1, '1653943309', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMwOTtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMwOTtzOjM6Im5vdyI7aToxNjUzOTQzMzA5O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('c4abdef213229420a8162dc0da25369a', 0, 1, '1653947386', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0NzM4NjtzOjQ6Imxhc3QiO2k6MTY1Mzk0NzM4NjtzOjM6Im5vdyI7aToxNjUzOTQ3Mzg2O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('c613c86c83c8bb2c8f12a0b187f29bf9', 0, 1, '1653943310', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMxMDtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMxMDtzOjM6Im5vdyI7aToxNjUzOTQzMzEwO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('cce792c95efa4e0e1bcdff9397542e2b', 0, 1, '1653936453', 'joomla|s:784:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkzNjQ0OTtzOjQ6Imxhc3QiO2k6MTY1MzkzNjQ0OTtzOjM6Im5vdyI7aToxNjUzOTM2NDUzO31zOjU6InRva2VuIjtzOjMyOiJIODBnamJvMTZqQW5mdXQwNHlaU3JQcTN5RldsQnJhZyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('cdc104dc42801a77664df90694cb9b6f', 0, 1, '1653946074', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0NjA3NDtzOjQ6Imxhc3QiO2k6MTY1Mzk0NjA3NDtzOjM6Im5vdyI7aToxNjUzOTQ2MDc0O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('d55b18adcd7f97ee10b2487096c129e7', 0, 1, '1653938150', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkzODE1MDtzOjQ6Imxhc3QiO2k6MTY1MzkzODE1MDtzOjM6Im5vdyI7aToxNjUzOTM4MTUwO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('da388c0ab1a00f2306d57829370f609b', 0, 1, '1653950349', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1MDM0OTtzOjQ6Imxhc3QiO2k6MTY1Mzk1MDM0OTtzOjM6Im5vdyI7aToxNjUzOTUwMzQ5O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('dc147dd07fd0e99c39982da7ba60b829', 0, 1, '1653950755', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1MDc1NTtzOjQ6Imxhc3QiO2k6MTY1Mzk1MDc1NTtzOjM6Im5vdyI7aToxNjUzOTUwNzU1O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('dcd33ac72a7dd969f4d8b70694bbe196', 0, 1, '1653929260', 'joomla|s:896:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkyOTI0OTtzOjQ6Imxhc3QiO2k6MTY1MzkyOTI1MTtzOjM6Im5vdyI7aToxNjUzOTI5MjYwO31zOjU6InRva2VuIjtzOjMyOiJaNXpreFo0N1l2SjNPV1B6VndCYjQ0SUJVQkJpTWFuMSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJjb21fY29udGFjdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250YWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('e13e3cbe29c5e2fef1d8c961f3ea0a5f', 0, 1, '1653932562', 'joomla|s:896:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkzMjU1MjtzOjQ6Imxhc3QiO2k6MTY1MzkzMjU1MztzOjM6Im5vdyI7aToxNjUzOTMyNTYyO31zOjU6InRva2VuIjtzOjMyOiJtS21JUXFUdkdlTGhwVGxNbjVYQ1o5N2VKb21WMHZZZyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJjb21fY29udGFjdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250YWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('e7f423d3e70742bb1e6ad88cd38196f9', 1, 0, '1653953505', 'joomla|s:1940:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozMTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2NTM5NTMzNTc7czo0OiJsYXN0IjtpOjE2NTM5NTM1MDQ7czozOiJub3ciO2k6MTY1Mzk1MzUwNTt9czo1OiJ0b2tlbiI7czozMjoid29PYW90ZVNCSGEyYTNteHkyRUh2VUZYSjBOamc0ajQiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjM6e3M6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO3M6NDoidHlwZSI7TjtzOjQ6ImxpbmsiO047fX19czoxMToiY29tX3BsdWdpbnMiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoicGx1Z2lucyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo2OiJmaWx0ZXIiO2E6NDp7czo2OiJzZWFyY2giO3M6MDoiIjtzOjc6ImVuYWJsZWQiO3M6MDoiIjtzOjY6ImZvbGRlciI7czowOiIiO3M6NjoiYWNjZXNzIjtzOjA6IiI7fXM6NDoibGlzdCI7YTo0OntzOjEyOiJmdWxsb3JkZXJpbmciO3M6ODoibmFtZSBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6OToic29ydFRhYmxlIjtzOjQ6Im5hbWUiO3M6MTQ6ImRpcmVjdGlvblRhYmxlIjtzOjM6IkFTQyI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6NjA7fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJwbHVnaW4iO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6MTAwNDc7fXM6NDoiZGF0YSI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtzOjM6IjYzNSI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 635, 'sdrummond'),
('ee77cc47e3545f531c18e24a910cf679', 0, 1, '1653950082', 'joomla|s:896:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk1MDA3MztzOjQ6Imxhc3QiO2k6MTY1Mzk1MDA3NDtzOjM6Im5vdyI7aToxNjUzOTUwMDgyO31zOjU6InRva2VuIjtzOjMyOiJVYmdyeEhGWkJlaDBVNEFORlZvaTIySzE3aEJwMElHeCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJjb21fY29udGFjdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250YWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MTtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
('f39349a422ce0a99993152c53d8e3a3c', 0, 1, '1653933683', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1MzkzMzY4MztzOjQ6Imxhc3QiO2k6MTY1MzkzMzY4MztzOjM6Im5vdyI7aToxNjUzOTMzNjgzO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('fd4d96601805a6488a9df6b99bd59c3f', 0, 1, '1653943309', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMwOTtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMwOTtzOjM6Im5vdyI7aToxNjUzOTQzMzA5O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('ff270e495b9d71778818403698d45203', 0, 1, '1653943310', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMxMDtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMxMDtzOjM6Im5vdyI7aToxNjUzOTQzMzEwO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('ff95e1f3cbe200710d40b34b53ac287f', 0, 1, '1653943309', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMwOTtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMwOTtzOjM6Im5vdyI7aToxNjUzOTQzMzA5O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('ff9bf8ef1c9f2b6667916d9918c417b9', 0, 1, '1653943311', 'joomla|s:644:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY1Mzk0MzMxMTtzOjQ6Imxhc3QiO2k6MTY1Mzk0MzMxMTtzOjM6Im5vdyI7aToxNjUzOTQzMzExO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, '');

CREATE TABLE `sd17_spsimpleportfolio_items` (
  `spsimpleportfolio_item_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(55) NOT NULL,
  `image` text NOT NULL,
  `image1` text NOT NULL,
  `image2` text NOT NULL,
  `image3` text NOT NULL,
  `image4` text NOT NULL,
  `image5` text NOT NULL,
  `image6` text NOT NULL,
  `banner` text NOT NULL,
  `video` text NOT NULL,
  `description` mediumtext,
  `service` text NOT NULL,
  `spsimpleportfolio_tag_id` text NOT NULL,
  `url` text NOT NULL,
  `featured` int(11) NOT NULL,
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `language` varchar(255) NOT NULL DEFAULT '*',
  `access` int(5) NOT NULL DEFAULT '1',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` bigint(20) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sd17_spsimpleportfolio_items` (`spsimpleportfolio_item_id`, `title`, `alias`, `image`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `banner`, `video`, `description`, `service`, `spsimpleportfolio_tag_id`, `url`, `featured`, `keywords`, `enabled`, `language`, `access`, `ordering`, `created_by`, `created_on`, `modified_by`, `modified_on`, `locked_by`, `locked_on`) VALUES
(1, 'Suzana Sartori', 'suzana-sartori', 'images/portfolio/suzana_sartori/suzana_sartori_logo.jpg', 'images/portfolio/suzana_sartori/suzana_sartori.jpg', '', '', '', '', '', 'images/portfolio/suzana_sartori/suzana_sartori_banner.jpg', '', '<p>Site de im&oacute;veis responsivo, desenvolvido alinhado aos objetivos da empresa, utilizando cores fortes de acordo com as caracter&iacute;sticas e conceitos adotados, que visa uma aproxima&ccedil;&atilde;o maior de seus clientes.</p>', 'Criação do Layout, Desenvolvimento do Website', '[\"1\"]', 'http://www.suzanasartori.com.br', 1, 'criacao site imobiliaria, desenvolvimento site imobiliaria', 1, '*', 1, 0, 635, '2017-03-14 13:20:13', 635, '2017-10-24 14:46:08', 0, '0000-00-00 00:00:00'),
(2, 'Pooltrack', 'pooltrack', 'images/portfolio/pooltrack/pooltrack_logo.jpg', 'images/portfolio/pooltrack/pooltrack1.jpg', 'images/portfolio/pooltrack/pooltrack2.jpg', 'images/portfolio/pooltrack/pooltrack3.jpg', '', '', '', 'images/portfolio/pooltrack/pooltrack.jpg', '', '<p>Site de empresa de seguran&ccedil;a de ve&iacute;culos responsivo, desenvolvido alinhado aos objetivos da empresa, utilizando as cores adotadas para a cria&ccedil;&atilde;o de seu logotipo, de acordo com os servi&ccedil;os prestados, visando uma aproxima&ccedil;&atilde;o maior de seus clientes.</p>', 'Criação do Layout, Desenvolvimento do Website', '[\"2\"]', 'http://www.pooltrack.com.br/Site/index.php', 0, 'criacao site seguradora, desenvolvimento site seguradora', 1, '*', 1, 0, 635, '2017-03-16 18:39:41', 635, '2017-04-04 20:32:46', 0, '0000-00-00 00:00:00'),
(3, 'Distribuidora Maia', 'distribuidora-maia', 'images/portfolio/distribuidora_maia/distribuidora_maia_logo.jpg', 'images/portfolio/distribuidora_maia/distribuidora_maia1.jpg', 'images/portfolio/distribuidora_maia/distribuidora_maia2.jpg', 'images/portfolio/distribuidora_maia/distribuidora_maia3.jpg', '', '', '', 'images/portfolio/distribuidora_maia/distribuidora_maia.jpg', '', '<p>Site de empresa distribuidora de produtos descart&eacute;veis e materiais de limpeza responsivo, desenvolvido para aumentar sua visibilidade no ramo do neg&oacute;cio, utilizando as cores adotadas para a cria&ccedil;&atilde;o de seu logotipo, de acordo com os produtos ofertados, visando uma aproxima&ccedil;&atilde;o maior de seus clientes, cria&ccedil;&atilde;o de fanpage no facebook.</p>', 'Criação do Layout, Desenvolvimento do Website,\r\nPublicidade junto ao Facebook', '[\"3\"]', 'http://distribuidoramaiabh.com.br/', 0, 'criacao site embalagem, criacao site produtos limpeza, desenvolvimento site embalagem, desenvolvimento site produtos limpeza', 1, '*', 1, 0, 635, '2017-03-16 19:08:06', 635, '2017-04-04 20:33:13', 0, '0000-00-00 00:00:00'),
(4, 'Accix', 'accix', 'images/portfolio/accix/accix_logo.jpg', 'images/portfolio/accix/accix1.jpg', 'images/portfolio/accix/accix2.jpg', 'images/portfolio/accix/accix3.jpg', '', '', '', 'images/portfolio/accix/accix.jpg', '', '<p>Site de empresa de recarga e venda de cartuchos e toners, aluguel de impressoras e cofres, venda e instala&ccedil;&atilde;o de fechaduras responsivo, desenvolvido para aumentar sua visibilidade no ramo do neg&oacute;cio, utilizando as cores adotadas para a cria&ccedil;&atilde;o de seu logotipo, de acordo com os produtos e servi&ccedil;os ofertados, visando uma aproxima&ccedil;&atilde;o maior de seus clientes.</p>', 'Criação do Layout, Desenvolvimento do Website', '[\"4\"]', 'http://accix.com.br/', 0, 'criacao site recarga cartucho, criacao site aluguel impressora, desenvolvimento site recarga cartucho, desenvolvimento site aluguel impressora', 1, '*', 1, 0, 635, '2017-03-16 20:27:20', 635, '2017-04-04 20:33:36', 0, '0000-00-00 00:00:00'),
(5, 'Gráfion', 'grafion', 'images/portfolio/grafion/grafion.jpg', 'images/portfolio/grafion/grafion1.jpg', 'images/portfolio/grafion/grafion2.jpg', 'images/portfolio/grafion/grafion3.jpg', 'images/portfolio/grafion/grafion4.jpg', '', '', 'images/portfolio/grafion/grafion_banner.jpg', '', '<p>Desenvolvimento de um site inovador, responsivo com efeitos e anima&ccedil;&otilde;es, incorporando gifs animados, focando na mostra de seus servi&ccedil;os prestados e exibindo seu portf&oacute;lio de projetos realizados</p>', 'Desenvolvimento do Website responsivo com animações', '[\"5\"]', 'http://grafion.com.br/', 0, '', 1, '*', 1, 0, 635, '2017-04-04 20:04:44', 635, '2017-04-04 20:50:39', 0, '0000-00-00 00:00:00'),
(6, 'Olimex', 'olimex', 'images/portfolio/olimex/olimex3.jpg', 'images/portfolio/olimex/olimex.jpg', 'images/portfolio/olimex/olimex1.jpg', 'images/portfolio/olimex/olimex2.jpg', 'images/portfolio/olimex/olimex4.jpg', '', '', 'images/portfolio/olimex/banner-olimex.jpg', '', '<p><span style=\"font-family: hind_siliguriregular, Verdana, Arial; font-size: 18px; font-style: normal; font-weight: normal;\">Site de representa&ccedil;&atilde;o de pe&ccedil;as automotivas, desenvolvido alinhado aos objetivos da empresa, utilizando cores fortes de acordo com as caracter&iacute;sticas e conceitos adotados, que visa uma aproxima&ccedil;&atilde;o maior de seus clientes e upgrade em suas vendas.</span></p>', 'Desenvolvimento e otimização do website.', '[\"6\"]', 'http://www.olimex.com.br/', 1, '', 1, '*', 1, 0, 635, '2017-07-04 14:56:40', 635, '2017-07-04 15:06:53', 0, '0000-00-00 00:00:00'),
(7, 'BH Consórcio', 'bh-consorcio', 'images/portfolio/bh_consorsio/bh_consorcio_logo.jpg', 'images/portfolio/bh_consorsio/bh_consorcio.jpg', '', '', '', '', '', 'images/portfolio/bh_consorsio/bh_consorcio_banner.jpg', '', '<p><span style=\"font-family: hind_siliguriregular, Verdana, Arial; font-size: 18px; font-style: normal; font-weight: normal;\">Site para cota&ccedil;&atilde;o e contrata&ccedil;&atilde;o de cons&oacute;rcio responsivo, desenvolvido alinhado aos objetivos da empresa, utilizando cores e imagens de acordo com as caracter&iacute;sticas e conceitos adotados, que visa uma aproxima&ccedil;&atilde;o maior de seus clientes.</span></p>', 'Desenvolvimento do Website', '[\"7\"]', 'http://bhconsorcio.com.br/', 1, 'criacao site consorcio, desenvolvimento site consorcio', 1, '*', 1, 0, 635, '2017-10-24 13:21:43', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 'Postal Filatelia', 'postal-filatelia', 'images/portfolio/postal_filatelia/postal_filatelia_logo.jpg', 'images/portfolio/postal_filatelia/postal_filatelia.jpg', '', '', '', '', '', 'images/portfolio/postal_filatelia/postal_filatelia_banner.jpg', '', '<p><span style=\"font-family: hind_siliguriregular, Verdana, Arial; font-size: 18px; font-style: normal; font-weight: normal;\">E-commerce de Selos responsivo, desenvolvido alinhado aos objetivos da empresa, utilizando cores e detalhes antiquados de acordo com as caracter&iacute;sticas e conceitos adotados, que visa uma aproxima&ccedil;&atilde;o maior de seus clientes.</span></p>', 'Criação do Layout, Desenvolvimento do E-commerce', '[\"8\"]', 'http://postalfilatelia.com.br/', 1, 'criacao ecommerce selos, \r\ncriacao ecommerce, desenvolvimento ecommerce  selos, desenvolvimento ecommerce', 1, '*', 1, 0, 635, '2017-10-24 14:21:31', 635, '2017-10-24 14:46:25', 0, '0000-00-00 00:00:00'),
(9, 'Clarissa Araujo', 'clarissa-araujo', 'images/portfolio/clarissa_araujo/clarissa_araujo_logo.jpg', 'images/portfolio/clarissa_araujo/clarissa_araujo.jpg', '', '', '', '', '', 'images/portfolio/clarissa_araujo/clarissa_araujo_banner.jpg', '', '<p><span style=\"font-family: hind_siliguriregular, Verdana, Arial; font-size: 18px; font-style: normal; font-weight: normal;\">Site de nutricionista responsivo, desenvolvido alinhado aos objetivos da empresa, utilizando cores, caracter&iacute;sticas e conceitos adotados, que visa uma aproxima&ccedil;&atilde;o maior de seus pacientes.</span></p>', 'Criação do Layout, Desenvolvimento do Website', '[\"9\"]', 'http://clarissaaraujo.com.br/', 1, 'criacao site nutricionista, desenvolvimento site nutricionista', 1, '*', 1, 0, 635, '2017-10-24 14:45:34', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 'Sargento Rodrigues', 'deputado-sargento-rodrigues', 'images/clientes/sargento_rodrigues.jpg', 'images/portfolio/sargento_rodrigues/sargento_rodrigues1.jpg', 'images/portfolio/sargento_rodrigues/sargento_rodrigues2.jpg', 'images/portfolio/sargento_rodrigues/sargento_rodrigues3.jpg', 'images/portfolio/sargento_rodrigues/sargento_rodrigues4.jpg', '', '', 'images/portfolio/sargento_rodrigues/sargento_rodrigues_banner.jpg', '', '<p>Site com foco em pol&iacute;tica com design responsivo, desenvolvido alinhado aos objetivos do Deputado Sargento Rodrigues, utilizando as cores adotadas para a cria&ccedil;&atilde;o de seu logotipo, visando uma aproxima&ccedil;&atilde;o maior de seus eleitores.</p>', 'Desenvolvimento do Website', '[\"10\"]', '', 1, '', 1, '*', 1, 0, 635, '2018-03-23 20:29:31', 635, '2018-03-23 20:53:42', 635, '2018-03-23 20:53:43');

CREATE TABLE `sd17_spsimpleportfolio_tags` (
  `spsimpleportfolio_tag_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(55) NOT NULL,
  `language` varchar(255) NOT NULL DEFAULT '*'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sd17_spsimpleportfolio_tags` (`spsimpleportfolio_tag_id`, `title`, `alias`, `language`) VALUES
(1, 'Imóveis', 'imoveis', '*'),
(2, 'Seguradora', 'seguradora', '*'),
(3, 'Distribuidora', 'distribuidora', '*'),
(4, 'Impressoras', 'impressoras', '*'),
(5, 'Editora', 'editora', '*'),
(6, 'Representação de Peças Automotivas', 'representacao-de-pecas-automotivas', '*'),
(7, 'Consórcio', 'consorcio', '*'),
(8, 'E-commerce', 'e-commerce', '*'),
(9, 'Nutricionista', 'nutricionista', '*'),
(10, 'Política', 'politica', '*');

CREATE TABLE `sd17_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 3, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 635, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 635, '2013-11-16 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

CREATE TABLE `sd17_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'cirrus-green', 0, '1', 'cirrus-green - Padrão', '{\"logoimage\":\"1\",\"logo\":\"images\\/sdrummond_logo.png\",\"sitetitle\":\"Sdrummond\",\"sitedescription\":\"Tecnologias\"}');

CREATE TABLE `sd17_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(2, 5, 1, 0),
(3, 6, 1, 0);

CREATE TABLE `sd17_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

INSERT INTO `sd17_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(2, 'com_content.article', 'Otimização de Sites', 'otimizacao-de-sites', '<p><img src=\"images/servicos/otimizacao_sites_seo_google_organico.jpg\" alt=\"otimizacao sites seo google organico\" style=\"margin: 0px 0px 20px 20px; float: right;\" />Otimizamos seu site, tornando-o relevante para buscadores e usu&aacute;rios, por possuir um conte&uacute;do de qualidade, boa arquitetura das informa&ccedil;&otilde;es, um layout inovador alinhado a suas cores, conceitos e objetivos, de alta performance.</p>\r\n<p>N&atilde;o basta apenas ter um site, ele tem que ser encontrado pelos p&uacute;blico alvo. Considerando isso, n&oacute;s da Sdrummond aplicamos t&eacute;cnicas de SEO(Search Engine Optimization) a fim de melhorar a relev&acirc;ncia do site diante dos mecanismos de busca. Essas melhorias est&atilde;o relacionadas ao c&oacute;digo, estrutura, programa&ccedil;&atilde;o e conte&uacute;dos, focando em seus produtos e servi&ccedil;os ofertados, para que seu p&uacute;blico encontre-o quando utilizar sites de busca como o Google, Yahoo e Bing.</p>\r\n<p>Quer obter resultados promissores, aumentando seu crescimento e de seu neg&oacute;cio, contate-nos e vamos conversar.</p>', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"xcf\":{\"og_title\":\"Otimiza\\u00e7\\u00e3o de Sites\",\"og_description\":\"Otimizamos seu site, tornando-o relevante para buscadores e usu\\u00e1rios, por possuir um conte\\u00fado de qualidade, boa arquitetura das informa\\u00e7\\u00f5es, um layout inovador alinhado a suas cores, conceitos e objetivos, de alta performance.\",\"og_image\":\"images\\/servicos\\/otimizacao_sites_seo_google_organico.jpg\",\"og_type\":\"\",\"og_url\":\"https:\\/\\/sdrummond.com.br\\/servicos\\/otimizacao-de-layout-e-conteudo-de-sites\"}}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 635, '', '2013-11-16 00:00:00', 635, '2018-01-30 16:48:13', '*', '2013-11-16 00:00:00', '0000-00-00 00:00:00', 5, 87, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 960, 5, 1, '', '', 2, '', 1),
(3, 'com_content.article', 'Ranqueamento de Sites', 'ranqueamento-de-sites', '<p><img src=\"images/servicos/links_patrocinados_campanha_google_adwords.jpg\" alt=\"links patrocinados campanha google adwords\" style=\"margin: 0px 0px 20px 20px; float: right;\" />Preparado para aparecer nas primeiras posi&ccedil;&otilde;es do Google? Somos parceiros Google Partners e criamos campanhas atrav&eacute;s do Google Adwords com links patrocinados, que s&atilde;o a publicidade online para seu site.</p>\r\n<p>Esses links consistem em an&uacute;ncios nas p&aacute;ginas de pesquisas, de acordo com palavras-chave preestabelecidas de forma a levar seu cliente a encontrar no seu site o que ele procura.</p>\r\n<p>O valor dos an&uacute;ncios s&atilde;o calculados a partir dos clicks que seu site recebe. N&oacute;s da Sdrummond, administramos a sua conta no Google Adwords e tra&ccedil;amos as estrat&eacute;gias necess&aacute;rias para melhorar a efici&ecirc;ncia e efic&aacute;cia do seu an&uacute;ncio. Monitoramos a evolu&ccedil;&atilde;o da sua campanha e de seus an&uacute;ncios, alteramos as palavras-chave de acordo com os objetivos tra&ccedil;ados, sendo esses servi&ccedil;os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc&ecirc; e/ou sua empresa.</p>\r\n<p>Contate-nos para que possamos apresentar-lhe o funcionamento de nosso trabalho e como podemos aumentar seu crescimento.</p>', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"xcf\":{\"og_title\":\"Ranqueamento de Sites\",\"og_description\":\"N\\u00f3s da Sdrummond, administramos a sua conta no Google Adwords e tra\\u00e7amos as estrat\\u00e9gias necess\\u00e1rias para melhorar a efici\\u00eancia e efic\\u00e1cia do seu an\\u00fancio. Monitoramos a evolu\\u00e7\\u00e3o da sua campanha e de seus an\\u00fancios, alteramos as palavras-chave de acordo com os objetivos tra\\u00e7ados, sendo esses servi\\u00e7os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc\\u00ea e\\/ou sua empresa.\",\"og_image\":\"images\\/servicos\\/links_patrocinados_campanha_google_adwords.jpg\",\"og_type\":\"article\",\"og_url\":\"https:\\/\\/sdrummond.com.br\\/servicos\\/seo-ranqueamento-de-sites-junto-ao-google\"}}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 635, '', '2013-11-16 00:00:00', 635, '2018-01-30 18:23:26', '*', '2013-11-16 00:00:00', '0000-00-00 00:00:00', 6, 89, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 976, 5, 0, '', '', 2, '', 1);

CREATE TABLE `sd17_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2013-11-16 00:00:00', 635, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{\"id\":2,\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":2,\"level\":1,\"path\":\"joomla\",\"title\":\"Joomla\",\"alias\":\"joomla\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"849\",\"created_time\":\"2013-11-16 00:00:00\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}', 0),
(2, 1, 1, 'Initial content', '2013-11-16 00:00:00', 635, 4539, '4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f', '{\"id\":1,\"asset_id\":54,\"title\":\"Getting Started\",\"alias\":\"getting-started\",\"introtext\":\"<p>It\'s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\\"Submit Article\\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\\"Template Settings\\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\\"Site Settings\\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\\"Site Administrator\\\" link on the \\\"User Menu\\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\\\"https:\\/\\/docs.joomla.org\\\" target=\\\"_blank\\\">Joomla! documentation site<\\/a> and on the<a href=\\\"http:\\/\\/forum.joomla.org\\\" target=\\\"_blank\\\"> Joomla! forums<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"849\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(3, 2, 1, '', '2017-03-13 18:58:50', 635, 2729, '2fdb79ee1bf1099caebf20df95385fff7f26e3e5', '{\"id\":2,\"asset_id\":68,\"title\":\"Sdrummond\",\"alias\":\"sdrummond\",\"introtext\":\"<p>N&oacute;s da SDRUMMOND oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Sites exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.<\\/p>\\r\\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e\\/ou p&uacute;blico alvo.<\\/p>\\r\\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.\",\"fulltext\":\"<\\/p>\\r\\n<p>teste<\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-13 18:58:50\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-13 18:58:50\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-03-13 18:58:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(4, 2, 1, '', '2017-03-13 19:00:09', 635, 2847, 'dd9c00de6a5ab96ad2f71e85ac2ce096cb3fc0b5', '{\"id\":2,\"asset_id\":\"68\",\"title\":\"Sdrummond\",\"alias\":\"sdrummond\",\"introtext\":\"<p>N&oacute;s da SDRUMMOND oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Sites exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.<\\/p>\\r\\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e\\/ou p&uacute;blico alvo.<\\/p>\\r\\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>teste<\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-13 18:58:50\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-13 19:00:09\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-13 18:58:50\",\"publish_up\":\"2017-03-13 18:58:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sites_campanhas_adwords.png\\\",\\\"float_intro\\\":\\\"left\\\",\\\"image_intro_alt\\\":\\\"criacao e desenvolvimento de sites e campanhas adwords\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(5, 2, 1, '', '2017-03-13 21:28:29', 635, 2865, '8ebc890191b0421b805e174899f5815bba240a85', '{\"id\":2,\"asset_id\":\"68\",\"title\":\"Sdrummond\",\"alias\":\"sdrummond\",\"introtext\":\"<p>N&oacute;s da <strong>SDRUMMOND<\\/strong> oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Sites exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.<\\/p>\\r\\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e\\/ou p&uacute;blico alvo.<\\/p>\\r\\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>teste<\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-13 18:58:50\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-13 21:28:29\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-13 21:12:30\",\"publish_up\":\"2017-03-13 18:58:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sites_campanhas_adwords.png\\\",\\\"float_intro\\\":\\\"left\\\",\\\"image_intro_alt\\\":\\\"criacao e desenvolvimento de sites e campanhas adwords\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(6, 8, 5, '', '2017-03-14 19:47:10', 635, 559, 'b74fdf3fe44d4d8f1af3228a903b1c1546622f4d', '{\"id\":8,\"asset_id\":72,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Depoimentos\",\"alias\":\"depoimentos\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"635\",\"created_time\":\"2017-03-14 19:47:10\",\"modified_user_id\":null,\"modified_time\":\"2017-03-14 19:47:10\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(7, 3, 1, '', '2017-03-14 19:49:22', 635, 2071, 'e56543bfe6fd8f1c1a75552a7366acb9772d3079', '{\"id\":3,\"asset_id\":73,\"title\":\"Cl\\u00e9ber\",\"alias\":\"cleber\",\"introtext\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis tortor sagittis, congue arcu eu, viverra massa. Cras facilisis semper odio non mollis. Maecenas auctor ligula dui, non aliquam massa sodales a. Phasellus vitae egestas ipsum. Sed justo purus, hendrerit vel pellentesque non, vestibulum eu tellus.<\\/p>\\r\\n<h4>Cl\\u00e9ber<\\/h4>\\r\\n<h5>ACCIX- Tecnologia Ltda.<\\/h5>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-14 19:49:22\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-14 19:49:22\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-03-14 19:49:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(8, 3, 1, '', '2017-03-14 19:49:30', 635, 2092, '36f07b710ed4a6fefe7a86aa2ac212b1b9b70267', '{\"id\":3,\"asset_id\":\"73\",\"title\":\"Cl\\u00e9ber\",\"alias\":\"cleber\",\"introtext\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis tortor sagittis, congue arcu eu, viverra massa. Cras facilisis semper odio non mollis. Maecenas auctor ligula dui, non aliquam massa sodales a. Phasellus vitae egestas ipsum. Sed justo purus, hendrerit vel pellentesque non, vestibulum eu tellus.<\\/p>\\r\\n<h4>Cl&eacute;ber<\\/h4>\\r\\n<h5>ACCIX- Tecnologia Ltda.<\\/h5>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-14 19:49:22\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-14 19:49:30\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-14 19:49:22\",\"publish_up\":\"2017-03-14 19:49:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(9, 3, 1, '', '2017-03-14 19:49:43', 635, 2092, '159529dc367d52b644d06d037d502a30cb55a7ea', '{\"id\":3,\"asset_id\":\"73\",\"title\":\"Cl\\u00e9ber\",\"alias\":\"cleber\",\"introtext\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis tortor sagittis, congue arcu eu, viverra massa. Cras facilisis semper odio non mollis. Maecenas auctor ligula dui, non aliquam massa sodales a. Phasellus vitae egestas ipsum. Sed justo purus, hendrerit vel pellentesque non, vestibulum eu tellus.<\\/p>\\r\\n<h4>Cl&eacute;ber<\\/h4>\\r\\n<h5>ACCIX- Tecnologia Ltda.<\\/h5>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-03-14 19:49:22\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-14 19:49:43\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-14 19:49:35\",\"publish_up\":\"2017-03-14 19:49:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(10, 4, 1, '', '2017-03-14 19:50:03', 635, 2060, 'f8ced3077c7e82ad3b868b92d9b8cf8875f5a60a', '{\"id\":4,\"asset_id\":74,\"title\":\"Cl\\u00e9ber (2)\",\"alias\":\"cleber-2\",\"introtext\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis tortor sagittis, congue arcu eu, viverra massa. Cras facilisis semper odio non mollis. Maecenas auctor ligula dui, non aliquam massa sodales a. Phasellus vitae egestas ipsum. Sed justo purus, hendrerit vel pellentesque non, vestibulum eu tellus.<\\/p>\\r\\n<h4>Cl&eacute;ber<\\/h4>\\r\\n<h5>ACCIX- Tecnologia Ltda.<\\/h5>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"8\",\"created\":\"2017-03-14 19:49:22\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-14 19:50:03\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-03-14 19:49:22\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(11, 4, 1, '', '2017-03-14 19:50:33', 635, 2119, '17d084fda100d9d09306433d4dbe772eb859b303', '{\"id\":4,\"asset_id\":\"74\",\"title\":\"Cl\\u00e9ber Jos\\u00e9\",\"alias\":\"cleber-jose\",\"introtext\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis tortor sagittis, congue arcu eu, viverra massa. Cras facilisis semper odio non mollis. Maecenas auctor ligula dui, non aliquam massa sodales a. Phasellus vitae egestas ipsum. Sed justo purus, hendrerit vel pellentesque non, vestibulum eu tellus.<\\/p>\\r\\n<h4>Cl&eacute;ber Jos&eacute;<\\/h4>\\r\\n<h5>ACCIX- Tecnologia Ltda.<\\/h5>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-03-14 19:49:22\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-14 19:50:33\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-14 19:50:03\",\"publish_up\":\"2017-03-14 19:49:22\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(12, 2, 1, '', '2017-03-15 18:26:10', 635, 4658, '1af7a4525021316641e6f60e74c221ea36e7ce50', '{\"id\":2,\"asset_id\":\"68\",\"title\":\"Sdrummond\",\"alias\":\"sdrummond\",\"introtext\":\"<p>N&oacute;s da <strong>SDRUMMOND<\\/strong> oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Sites exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.<\\/p>\\r\\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e\\/ou p&uacute;blico alvo.<\\/p>\\r\\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p><img src=\\\"images\\/escritorio_sdrummond_tecnologias.jpg\\\" alt=\\\"escritorio sdrummond tecnologias\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Desde 2011 no mercado de desenvolvimento de softwares e websites, a SDrummond tem conquistado clientes de diversas &aacute;reas. Oferecemos solu&ccedil;&otilde;es web efetivas, com cumplicidade na entrega, valores acess&iacute;veis, al&eacute;m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu&ccedil;&atilde;o de seus projetos.<\\/p>\\r\\n<p>Seguimos rigoroso padr&atilde;o de qualidade e pontualidade em nossos produtos e servi&ccedil;os. A cada ano, conquistamos maior reconhecimento no setor de desenvolvimento web e vamos nos firmando como refer&ecirc;ncia entre as empresas do ramo.<\\/p>\\r\\n<p>Oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Nossos projetos s&atilde;o exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.<\\/p>\\r\\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e\\/ou p&uacute;blico alvo.<\\/p>\\r\\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.<\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-13 18:58:50\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-15 18:26:10\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-15 18:23:31\",\"publish_up\":\"2017-03-13 18:58:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sites_campanhas_adwords.png\\\",\\\"float_intro\\\":\\\"left\\\",\\\"image_intro_alt\\\":\\\"criacao e desenvolvimento de sites e campanhas adwords\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(13, 1, 1, '', '2017-03-15 19:26:34', 635, 3465, 'caff7eccb6f1febaa4b8bb7aa565ad49ae3410f6', '{\"id\":1,\"asset_id\":\"61\",\"title\":\"Cria\\u00e7\\u00e3o de Sites\",\"alias\":\"criacao-de-sites\",\"introtext\":\"<p><img src=\\\"images\\/servicos\\/criacao_desenvolvimento_sites_websites_responsivos.jpg\\\" alt=\\\"criacao desenvolvimento sites websites responsivos\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Tendo em vista a evolu&ccedil;&atilde;o do mercado, o desenvolvimento de um site, ou website, tem se tornado o principal instrumento de comunica&ccedil;&atilde;o, informa&ccedil;&atilde;o, capta&ccedil;&atilde;o de clientes, relacionamentos pessoais e profissionais, reclama&ccedil;&atilde;o, vendas e muito mais, e que ainda conta com o a premissa de um alt&iacute;ssimo alcance e custo baixo em rela&ccedil;&atilde;o ao seu benef&iacute;cio. Com a cria&ccedil;&atilde;o de um website bem feito, bem apresent&aacute;vel e funcional, voc&ecirc; atinge o p&uacute;blico que deseja, 24 horas por dia, esteja ele em qualquer lugar do mundo.<\\/p>\\r\\n<p>Possu&iacute;mos uma equipe profissional e capacitada para entender sua empresa e planejar a melhor op&ccedil;&atilde;o em cria&ccedil;&atilde;o de site. Nossos sites s&atilde;o exclusivos e planejados de forma a atender seus clientes e proporcionar o retorno esperado para esse investimento.<\\/p>\\r\\n<p>Al&eacute;m disso, para o site ser competitivo, ele deve ser constru&iacute;do com o que h&aacute; de mais moderno em termo de tecnologias, o que inclusive vem mudando constantemente. Seguindo tais evolu&ccedil;&otilde;es nos mantemos atualizados para levar o que h&aacute; de mais novo no mundo digital, para melhorar a apar&ecirc;ncia, a funcionalidade, a usabilidade e visibilidade do seu site.<\\/p>\\r\\n<p>Se a sua empresa ainda n&atilde;o possui um site, ou se voc&ecirc; entende que ele pode ou precisa ser melhorado, entre em contato e solicite um or&ccedil;amento.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-15 19:26:34\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-15 18:57:41\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"239\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(14, 1, 2, '', '2017-03-15 22:10:27', 635, 1653, 'fe1d73ce76f3752b9c7ac8a2a8df599b1f72b0d0', '{\"id\":1,\"name\":\"Sdrummond\",\"alias\":\"sdrummond\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"\",\"default_con\":0,\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"ordering\":1,\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"0\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"635\",\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":false,\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-03-15 22:10:27\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-15 22:10:27\",\"modified_by\":null,\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":1,\"hits\":null}', 0),
(15, 1, 2, '', '2017-03-15 22:14:27', 635, 1672, 'c917d11d0f9ce18305f581b97f4243348cf96b0d', '{\"id\":1,\"name\":\"Sdrummond\",\"alias\":\"sdrummond\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-15 22:14:17\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"\\\",\\\"show_email_copy\\\":\\\"\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"635\",\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":false,\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-03-15 22:10:27\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-15 22:14:27\",\"modified_by\":\"635\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":2,\"hits\":\"3\"}', 0),
(16, 1, 2, '', '2017-03-15 22:14:48', 635, 1674, '51e9b58a394e3bb2f8747ef164ca09e3223f502a', '{\"id\":1,\"name\":\"Sdrummond\",\"alias\":\"sdrummond\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-15 22:14:34\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"1\\\",\\\"show_email_copy\\\":\\\"0\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":\"635\",\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":false,\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-03-15 22:10:27\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-15 22:14:48\",\"modified_by\":\"635\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":4,\"hits\":\"5\"}', 0);
INSERT INTO `sd17_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(17, 5, 1, '', '2017-03-16 14:11:28', 635, 3431, '36656fa824fb6734f3b7bcf4e37193b73395cffd', '{\"id\":5,\"asset_id\":86,\"title\":\"Cria\\u00e7\\u00e3o de Sites (2)\",\"alias\":\"criacao-de-sites-2\",\"introtext\":\"<p><img src=\\\"images\\/servicos\\/criacao_desenvolvimento_sites_websites_responsivos.jpg\\\" alt=\\\"criacao desenvolvimento sites websites responsivos\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Tendo em vista a evolu&ccedil;&atilde;o do mercado, o desenvolvimento de um site, ou website, tem se tornado o principal instrumento de comunica&ccedil;&atilde;o, informa&ccedil;&atilde;o, capta&ccedil;&atilde;o de clientes, relacionamentos pessoais e profissionais, reclama&ccedil;&atilde;o, vendas e muito mais, e que ainda conta com o a premissa de um alt&iacute;ssimo alcance e custo baixo em rela&ccedil;&atilde;o ao seu benef&iacute;cio. Com a cria&ccedil;&atilde;o de um website bem feito, bem apresent&aacute;vel e funcional, voc&ecirc; atinge o p&uacute;blico que deseja, 24 horas por dia, esteja ele em qualquer lugar do mundo.<\\/p>\\r\\n<p>Possu&iacute;mos uma equipe profissional e capacitada para entender sua empresa e planejar a melhor op&ccedil;&atilde;o em cria&ccedil;&atilde;o de site. Nossos sites s&atilde;o exclusivos e planejados de forma a atender seus clientes e proporcionar o retorno esperado para esse investimento.<\\/p>\\r\\n<p>Al&eacute;m disso, para o site ser competitivo, ele deve ser constru&iacute;do com o que h&aacute; de mais moderno em termo de tecnologias, o que inclusive vem mudando constantemente. Seguindo tais evolu&ccedil;&otilde;es nos mantemos atualizados para levar o que h&aacute; de mais novo no mundo digital, para melhorar a apar&ecirc;ncia, a funcionalidade, a usabilidade e visibilidade do seu site.<\\/p>\\r\\n<p>Se a sua empresa ainda n&atilde;o possui um site, ou se voc&ecirc; entende que ele pode ou precisa ser melhorado, entre em contato e solicite um or&ccedil;amento.<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-16 14:11:28\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(18, 5, 1, '', '2017-03-16 14:24:11', 635, 2853, 'af8dfdd86b2a6fe967b66a4dc5218b07cff33bf4', '{\"id\":5,\"asset_id\":\"86\",\"title\":\"Otimiza\\u00e7\\u00e3o de Sites\",\"alias\":\"otimizacao-de-sites\",\"introtext\":\"<p><img src=\\\"images\\/servicos\\/otimizacao_sites_seo_google_organico.jpg\\\" alt=\\\"otimizacao sites seo google organico\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Otimizamos seu site, tornando-o relevante para buscadores e usu&aacute;rios, por possuir um conte&uacute;do de qualidade, boa arquitetura das informa&ccedil;&otilde;es, um layout inovador alinhado a suas cores, conceitos e objetivos, de alta performance.<\\/p>\\r\\n<p>N&atilde;o basta apenas ter um site, ele tem que ser encontrado pelos p&uacute;blico alvo. Considerando isso, n&oacute;s da Sdrummond aplicamos t&eacute;cnicas de SEO(Search Engine Optimization) a fim de melhorar a relev&acirc;ncia do site diante dos mecanismos de busca. Essas melhorias est&atilde;o relacionadas ao c&oacute;digo, estrutura, programa&ccedil;&atilde;o e conte&uacute;dos, focando em seus produtos e servi&ccedil;os ofertados, para que seu p&uacute;blico encontre-o quando utilizar sites de busca como o Google, Yahoo e Bing.<\\/p>\\r\\n<p>Quer obter resultados promissores, aumentando seu crescimento e de seu neg&oacute;cio, contate-nos e vamos conversar.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-16 14:24:11\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-16 14:11:28\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(19, 6, 1, '', '2017-03-16 14:42:50', 635, 2821, '2f8123c5ebf50ea58d6e491159662ad6ed91aaaf', '{\"id\":6,\"asset_id\":88,\"title\":\"Otimiza\\u00e7\\u00e3o de Sites (2)\",\"alias\":\"otimizacao-de-sites-2\",\"introtext\":\"<p><img src=\\\"images\\/servicos\\/otimizacao_sites_seo_google_organico.jpg\\\" alt=\\\"otimizacao sites seo google organico\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Otimizamos seu site, tornando-o relevante para buscadores e usu&aacute;rios, por possuir um conte&uacute;do de qualidade, boa arquitetura das informa&ccedil;&otilde;es, um layout inovador alinhado a suas cores, conceitos e objetivos, de alta performance.<\\/p>\\r\\n<p>N&atilde;o basta apenas ter um site, ele tem que ser encontrado pelos p&uacute;blico alvo. Considerando isso, n&oacute;s da Sdrummond aplicamos t&eacute;cnicas de SEO(Search Engine Optimization) a fim de melhorar a relev&acirc;ncia do site diante dos mecanismos de busca. Essas melhorias est&atilde;o relacionadas ao c&oacute;digo, estrutura, programa&ccedil;&atilde;o e conte&uacute;dos, focando em seus produtos e servi&ccedil;os ofertados, para que seu p&uacute;blico encontre-o quando utilizar sites de busca como o Google, Yahoo e Bing.<\\/p>\\r\\n<p>Quer obter resultados promissores, aumentando seu crescimento e de seu neg&oacute;cio, contate-nos e vamos conversar.<\\/p>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-16 14:42:50\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(20, 6, 1, '', '2017-03-16 15:19:20', 635, 3081, 'cfa16c1d7592e105668842683a83c051cf0789d3', '{\"id\":6,\"asset_id\":\"88\",\"title\":\"Ranqueamento de Sites\",\"alias\":\"ranqueamento-de-sites\",\"introtext\":\"<p><img src=\\\"images\\/servicos\\/links_patrocinados_campanha_google_adwords.jpg\\\" alt=\\\"links patrocinados campanha google adwords\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Preparado para aparecer nas primeiras posi&ccedil;&otilde;es do Google? Somos parceiros Google Partners e criamos campanhas atrav&eacute;s do Google Adwords com links patrocinados, que s&atilde;o a publicidade online para seu site.<\\/p>\\r\\n<p>Esses links consistem em an&uacute;ncios nas p&aacute;ginas de pesquisas, de acordo com palavras-chave preestabelecidas de forma a levar seu cliente a encontrar no seu site o que ele procura.<\\/p>\\r\\n<p>O valor dos an&uacute;ncios s&atilde;o calculados a partir dos clicks que seu site recebe. N&oacute;s da Sdrummond, administramos a sua conta no Google Adwords e tra&ccedil;amos as estrat&eacute;gias necess&aacute;rias para melhorar a efici&ecirc;ncia e efic&aacute;cia do seu an&uacute;ncio. Monitoramos a evolu&ccedil;&atilde;o da sua campanha e de seus an&uacute;ncios, alteramos as palavras-chave de acordo com os objetivos tra&ccedil;ados, sendo esses servi&ccedil;os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc&ecirc; e\\/ou sua empresa.<\\/p>\\r\\n<p>Contate-nos para que possamos apresentar-lhe o funcionamento de nosso trabalho e como podemos aumentar seu crescimento.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-16 15:19:20\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-16 14:42:50\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(21, 1, 2, '', '2017-03-20 14:57:21', 635, 1695, 'badbc5ae08fa969daa22ba929634a1f68f39e5b3', '{\"id\":1,\"name\":\"Sdrummond\",\"alias\":\"sdrummond\",\"con_position\":\"\",\"address\":\"\",\"suburb\":\"\",\"state\":\"\",\"country\":\"\",\"postcode\":\"\",\"telephone\":\"\",\"fax\":\"\",\"misc\":\"\",\"image\":\"\",\"email_to\":\"contato@sdrummond.com.br\",\"default_con\":0,\"published\":\"1\",\"checked_out\":\"635\",\"checked_out_time\":\"2017-03-20 14:56:52\",\"ordering\":\"1\",\"params\":\"{\\\"show_contact_category\\\":\\\"\\\",\\\"show_contact_list\\\":\\\"\\\",\\\"presentation_style\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_name\\\":\\\"\\\",\\\"show_position\\\":\\\"\\\",\\\"show_email\\\":\\\"\\\",\\\"show_street_address\\\":\\\"\\\",\\\"show_suburb\\\":\\\"\\\",\\\"show_state\\\":\\\"\\\",\\\"show_postcode\\\":\\\"\\\",\\\"show_country\\\":\\\"\\\",\\\"show_telephone\\\":\\\"\\\",\\\"show_mobile\\\":\\\"\\\",\\\"show_fax\\\":\\\"\\\",\\\"show_webpage\\\":\\\"\\\",\\\"show_misc\\\":\\\"\\\",\\\"show_image\\\":\\\"\\\",\\\"allow_vcard\\\":\\\"\\\",\\\"show_articles\\\":\\\"\\\",\\\"articles_display_num\\\":\\\"\\\",\\\"show_profile\\\":\\\"\\\",\\\"show_links\\\":\\\"\\\",\\\"linka_name\\\":\\\"\\\",\\\"linka\\\":false,\\\"linkb_name\\\":\\\"\\\",\\\"linkb\\\":false,\\\"linkc_name\\\":\\\"\\\",\\\"linkc\\\":false,\\\"linkd_name\\\":\\\"\\\",\\\"linkd\\\":false,\\\"linke_name\\\":\\\"\\\",\\\"linke\\\":false,\\\"contact_layout\\\":\\\"\\\",\\\"show_email_form\\\":\\\"1\\\",\\\"show_email_copy\\\":\\\"0\\\",\\\"banned_email\\\":\\\"\\\",\\\"banned_subject\\\":\\\"\\\",\\\"banned_text\\\":\\\"\\\",\\\"validate_session\\\":\\\"\\\",\\\"custom_reply\\\":\\\"\\\",\\\"redirect\\\":\\\"\\\"}\",\"user_id\":0,\"catid\":\"4\",\"access\":\"1\",\"mobile\":\"\",\"webpage\":false,\"sortname1\":\"\",\"sortname2\":\"\",\"sortname3\":\"\",\"language\":\"*\",\"created\":\"2017-03-15 22:10:27\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2017-03-20 14:57:21\",\"modified_by\":\"635\",\"metakey\":\"\",\"metadesc\":\"\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"xreference\":\"\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"version\":6,\"hits\":\"38\"}', 0),
(22, 5, 1, '', '2018-01-30 16:47:16', 635, 3387, 'efd415d121bfe5c0e86759bb06264a4871db6510', '{\"id\":5,\"asset_id\":\"86\",\"title\":\"Otimiza\\u00e7\\u00e3o de Sites\",\"alias\":\"otimizacao-de-sites\",\"introtext\":\"<p><img src=\\\"images\\/servicos\\/otimizacao_sites_seo_google_organico.jpg\\\" alt=\\\"otimizacao sites seo google organico\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Otimizamos seu site, tornando-o relevante para buscadores e usu&aacute;rios, por possuir um conte&uacute;do de qualidade, boa arquitetura das informa&ccedil;&otilde;es, um layout inovador alinhado a suas cores, conceitos e objetivos, de alta performance.<\\/p>\\r\\n<p>N&atilde;o basta apenas ter um site, ele tem que ser encontrado pelos p&uacute;blico alvo. Considerando isso, n&oacute;s da Sdrummond aplicamos t&eacute;cnicas de SEO(Search Engine Optimization) a fim de melhorar a relev&acirc;ncia do site diante dos mecanismos de busca. Essas melhorias est&atilde;o relacionadas ao c&oacute;digo, estrutura, programa&ccedil;&atilde;o e conte&uacute;dos, focando em seus produtos e servi&ccedil;os ofertados, para que seu p&uacute;blico encontre-o quando utilizar sites de busca como o Google, Yahoo e Bing.<\\/p>\\r\\n<p>Quer obter resultados promissores, aumentando seu crescimento e de seu neg&oacute;cio, contate-nos e vamos conversar.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2018-01-30 16:47:16\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2018-01-30 16:46:19\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"xcf\\\":{\\\"og_title\\\":\\\"Otimiza\\\\u00e7\\\\u00e3o de Sites\\\",\\\"og_description\\\":\\\"Otimizamos seu site, tornando-o relevante para buscadores e usu\\\\u00e1rios, por possuir um conte\\\\u00fado de qualidade, boa arquitetura das informa\\\\u00e7\\\\u00f5es, um layout inovador alinhado a suas cores, conceitos e objetivos, de alta performance.\\\",\\\"og_image\\\":\\\"images\\\\\\/servicos\\\\\\/otimizacao_sites_seo_google_organico.jpg\\\",\\\"og_type\\\":\\\"\\\",\\\"og_url\\\":\\\"https:\\\\\\/\\\\\\/sdrummond.com.br\\\\\\/servicos\\\\\\/otimizacao-de-layout-e-conteudo-de-sites\\\"}}\",\"version\":4,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"959\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(23, 6, 1, '', '2018-01-30 18:10:31', 635, 3688, '605882868584db0196aec6ba27e786615df08c40', '{\"id\":6,\"asset_id\":\"88\",\"title\":\"Ranqueamento de Sites\",\"alias\":\"ranqueamento-de-sites\",\"introtext\":\"<p><img src=\\\"images\\/servicos\\/links_patrocinados_campanha_google_adwords.jpg\\\" alt=\\\"links patrocinados campanha google adwords\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Preparado para aparecer nas primeiras posi&ccedil;&otilde;es do Google? Somos parceiros Google Partners e criamos campanhas atrav&eacute;s do Google Adwords com links patrocinados, que s&atilde;o a publicidade online para seu site.<\\/p>\\r\\n<p>Esses links consistem em an&uacute;ncios nas p&aacute;ginas de pesquisas, de acordo com palavras-chave preestabelecidas de forma a levar seu cliente a encontrar no seu site o que ele procura.<\\/p>\\r\\n<p>O valor dos an&uacute;ncios s&atilde;o calculados a partir dos clicks que seu site recebe. N&oacute;s da Sdrummond, administramos a sua conta no Google Adwords e tra&ccedil;amos as estrat&eacute;gias necess&aacute;rias para melhorar a efici&ecirc;ncia e efic&aacute;cia do seu an&uacute;ncio. Monitoramos a evolu&ccedil;&atilde;o da sua campanha e de seus an&uacute;ncios, alteramos as palavras-chave de acordo com os objetivos tra&ccedil;ados, sendo esses servi&ccedil;os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc&ecirc; e\\/ou sua empresa.<\\/p>\\r\\n<p>Contate-nos para que possamos apresentar-lhe o funcionamento de nosso trabalho e como podemos aumentar seu crescimento.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2018-01-30 18:10:31\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2018-01-30 18:05:19\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"xcf\\\":{\\\"og_title\\\":\\\"Ranqueamento de Sites\\\",\\\"og_description\\\":\\\"N\\\\u00f3s da Sdrummond, administramos a sua conta no Google Adwords e tra\\\\u00e7amos as estrat\\\\u00e9gias necess\\\\u00e1rias para melhorar a efici\\\\u00eancia e efic\\\\u00e1cia do seu an\\\\u00fancio. Monitoramos a evolu\\\\u00e7\\\\u00e3o da sua campanha e de seus an\\\\u00fancios, alteramos as palavras-chave de acordo com os objetivos tra\\\\u00e7ados, sendo esses servi\\\\u00e7os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc\\\\u00ea e\\\\\\/ou sua empresa.\\\",\\\"og_image\\\":\\\"\\\",\\\"og_type\\\":\\\"\\\",\\\"og_url\\\":\\\"\\\"}}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"972\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(24, 6, 1, '', '2018-01-30 18:22:56', 635, 3850, 'f476c2f75be7971c6bb707c575a2d95d7cf0e5d9', '{\"id\":6,\"asset_id\":\"88\",\"title\":\"Ranqueamento de Sites\",\"alias\":\"ranqueamento-de-sites\",\"introtext\":\"<p><img src=\\\"images\\/servicos\\/links_patrocinados_campanha_google_adwords.jpg\\\" alt=\\\"links patrocinados campanha google adwords\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Preparado para aparecer nas primeiras posi&ccedil;&otilde;es do Google? Somos parceiros Google Partners e criamos campanhas atrav&eacute;s do Google Adwords com links patrocinados, que s&atilde;o a publicidade online para seu site.<\\/p>\\r\\n<p>Esses links consistem em an&uacute;ncios nas p&aacute;ginas de pesquisas, de acordo com palavras-chave preestabelecidas de forma a levar seu cliente a encontrar no seu site o que ele procura.<\\/p>\\r\\n<p>O valor dos an&uacute;ncios s&atilde;o calculados a partir dos clicks que seu site recebe. N&oacute;s da Sdrummond, administramos a sua conta no Google Adwords e tra&ccedil;amos as estrat&eacute;gias necess&aacute;rias para melhorar a efici&ecirc;ncia e efic&aacute;cia do seu an&uacute;ncio. Monitoramos a evolu&ccedil;&atilde;o da sua campanha e de seus an&uacute;ncios, alteramos as palavras-chave de acordo com os objetivos tra&ccedil;ados, sendo esses servi&ccedil;os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc&ecirc; e\\/ou sua empresa.<\\/p>\\r\\n<p>Contate-nos para que possamos apresentar-lhe o funcionamento de nosso trabalho e como podemos aumentar seu crescimento.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2018-01-30 18:22:56\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2018-01-30 18:10:31\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"xcf\\\":{\\\"og_title\\\":\\\"Ranqueamento de Sites\\\",\\\"og_description\\\":\\\"N\\\\u00f3s da Sdrummond, administramos a sua conta no Google Adwords e tra\\\\u00e7amos as estrat\\\\u00e9gias necess\\\\u00e1rias para melhorar a efici\\\\u00eancia e efic\\\\u00e1cia do seu an\\\\u00fancio. Monitoramos a evolu\\\\u00e7\\\\u00e3o da sua campanha e de seus an\\\\u00fancios, alteramos as palavras-chave de acordo com os objetivos tra\\\\u00e7ados, sendo esses servi\\\\u00e7os ou produtos ofertados e estamos prontos para gerar os melhores resultados para voc\\\\u00ea e\\\\\\/ou sua empresa.\\\",\\\"og_image\\\":\\\"images\\\\\\/servicos\\\\\\/links_patrocinados_campanha_google_adwords.jpg\\\",\\\"og_type\\\":\\\"article\\\",\\\"og_url\\\":\\\"https:\\\\\\/\\\\\\/sdrummond.com.br\\\\\\/servicos\\\\\\/seo-ranqueamento-de-sites-junto-ao-google\\\"}}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"973\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(25, 1, 1, '', '2018-01-30 18:29:47', 635, 4068, '7befff556ff3a44d2bcf20f24c5ee476031aafe3', '{\"id\":1,\"asset_id\":\"61\",\"title\":\"Cria\\u00e7\\u00e3o de Sites\",\"alias\":\"criacao-de-sites\",\"introtext\":\"<p><img src=\\\"images\\/servicos\\/criacao_desenvolvimento_sites_websites_responsivos.jpg\\\" alt=\\\"criacao desenvolvimento sites websites responsivos\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Tendo em vista a evolu&ccedil;&atilde;o do mercado, o desenvolvimento de um site, ou website, tem se tornado o principal instrumento de comunica&ccedil;&atilde;o, informa&ccedil;&atilde;o, capta&ccedil;&atilde;o de clientes, relacionamentos pessoais e profissionais, reclama&ccedil;&atilde;o, vendas e muito mais, e que ainda conta com o a premissa de um alt&iacute;ssimo alcance e custo baixo em rela&ccedil;&atilde;o ao seu benef&iacute;cio. Com a cria&ccedil;&atilde;o de um website bem feito, bem apresent&aacute;vel e funcional, voc&ecirc; atinge o p&uacute;blico que deseja, 24 horas por dia, esteja ele em qualquer lugar do mundo.<\\/p>\\r\\n<p>Possu&iacute;mos uma equipe profissional e capacitada para entender sua empresa e planejar a melhor op&ccedil;&atilde;o em cria&ccedil;&atilde;o de site. Nossos sites s&atilde;o exclusivos e planejados de forma a atender seus clientes e proporcionar o retorno esperado para esse investimento.<\\/p>\\r\\n<p>Al&eacute;m disso, para o site ser competitivo, ele deve ser constru&iacute;do com o que h&aacute; de mais moderno em termo de tecnologias, o que inclusive vem mudando constantemente. Seguindo tais evolu&ccedil;&otilde;es nos mantemos atualizados para levar o que h&aacute; de mais novo no mundo digital, para melhorar a apar&ecirc;ncia, a funcionalidade, a usabilidade e visibilidade do seu site.<\\/p>\\r\\n<p>Se a sua empresa ainda n&atilde;o possui um site, ou se voc&ecirc; entende que ele pode ou precisa ser melhorado, entre em contato e solicite um or&ccedil;amento.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2018-01-30 18:29:47\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2018-01-30 18:27:38\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"xcf\\\":{\\\"og_title\\\":\\\"Cria\\\\u00e7\\\\u00e3o de Sites\\\",\\\"og_description\\\":\\\"Possu\\\\u00edmos uma equipe profissional e capacitada para entender sua empresa e planejar a melhor op\\\\u00e7\\\\u00e3o em cria\\\\u00e7\\\\u00e3o de site. Nossos sites s\\\\u00e3o exclusivos e planejados de forma a atender seus clientes e proporcionar o retorno esperado para esse investimento.\\\",\\\"og_image\\\":\\\"images\\\\\\/servicos\\\\\\/criacao_desenvolvimento_sites_websites_responsivos.jpg\\\",\\\"og_type\\\":\\\"article\\\",\\\"og_url\\\":\\\"https:\\\\\\/\\\\\\/sdrummond.com.br\\\\\\/servicos\\\\\\/criacao-de-sites-desenvolvimento-de-websites-responsivos\\\"}}\",\"version\":3,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1406\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(26, 2, 1, '', '2018-01-30 18:34:14', 635, 5274, 'dc6f55946656618c5e0aa616e935fb010212571b', '{\"id\":2,\"asset_id\":\"68\",\"title\":\"Sdrummond\",\"alias\":\"sdrummond\",\"introtext\":\"<p>N&oacute;s da <strong>SDRUMMOND<\\/strong> oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Sites exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.<\\/p>\\r\\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e\\/ou p&uacute;blico alvo.<\\/p>\\r\\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p><img src=\\\"images\\/escritorio_sdrummond_tecnologias.jpg\\\" alt=\\\"escritorio sdrummond tecnologias\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Desde 2011 no mercado de desenvolvimento de softwares e websites, a SDrummond tem conquistado clientes de diversas &aacute;reas. Oferecemos solu&ccedil;&otilde;es web efetivas, com cumplicidade na entrega, valores acess&iacute;veis, al&eacute;m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu&ccedil;&atilde;o de seus projetos.<\\/p>\\r\\n<p>Seguimos rigoroso padr&atilde;o de qualidade e pontualidade em nossos produtos e servi&ccedil;os. A cada ano, conquistamos maior reconhecimento no setor de desenvolvimento web e vamos nos firmando como refer&ecirc;ncia entre as empresas do ramo.<\\/p>\\r\\n<p>Oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Nossos projetos s&atilde;o exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.<\\/p>\\r\\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e\\/ou p&uacute;blico alvo.<\\/p>\\r\\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.<\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-13 18:58:50\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2018-01-30 18:34:14\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2018-01-30 18:33:07\",\"publish_up\":\"2017-03-13 18:58:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sites_campanhas_adwords.png\\\",\\\"float_intro\\\":\\\"left\\\",\\\"image_intro_alt\\\":\\\"criacao e desenvolvimento de sites e campanhas adwords\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"xcf\\\":{\\\"og_title\\\":\\\"Sdrummond  Solu\\\\u00e7\\\\u00f5es em Tecnologias\\\",\\\"og_description\\\":\\\"Desde 2011 no mercado de desenvolvimento de softwares e websites, a SDrummond tem conquistado clientes de diversas \\\\u00e1reas. Oferecemos solu\\\\u00e7\\\\u00f5es web efetivas, com cumplicidade na entrega, valores acess\\\\u00edveis, al\\\\u00e9m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu\\\\u00e7\\\\u00e3o de seus projetos.\\\",\\\"og_image\\\":\\\"images\\\\\\/escritorio_sdrummond_tecnologias.jpg\\\",\\\"og_type\\\":\\\"article\\\",\\\"og_url\\\":\\\"https:\\\\\\/\\\\\\/sdrummond.com.br\\\\\\/sdrummond-tecnologias\\\"}}\",\"version\":7,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"673\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(27, 2, 1, '', '2018-01-30 18:34:52', 635, 5274, '772c081afaa8b3ab443770bb5c7bbb00c511f245', '{\"id\":2,\"asset_id\":\"68\",\"title\":\"Sdrummond\",\"alias\":\"sdrummond\",\"introtext\":\"<p>N&oacute;s da <strong>SDRUMMOND<\\/strong> oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Sites exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.<\\/p>\\r\\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e\\/ou p&uacute;blico alvo.<\\/p>\\r\\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p><img src=\\\"images\\/escritorio_sdrummond_tecnologias.jpg\\\" alt=\\\"escritorio sdrummond tecnologias\\\" style=\\\"margin: 0px 0px 20px 20px; float: right;\\\" \\/>Desde 2011 no mercado de desenvolvimento de softwares e websites, a SDrummond tem conquistado clientes de diversas &aacute;reas. Oferecemos solu&ccedil;&otilde;es web efetivas, com cumplicidade na entrega, valores acess&iacute;veis, al&eacute;m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu&ccedil;&atilde;o de seus projetos.<\\/p>\\r\\n<p>Seguimos rigoroso padr&atilde;o de qualidade e pontualidade em nossos produtos e servi&ccedil;os. A cada ano, conquistamos maior reconhecimento no setor de desenvolvimento web e vamos nos firmando como refer&ecirc;ncia entre as empresas do ramo.<\\/p>\\r\\n<p>Oferecemos v&aacute;rios servi&ccedil;os como: Desenvolvimento de Sites, Blogs, Portais, Imobili&aacute;rias e muito mais. Nossos projetos s&atilde;o exclusivos, planejados individualmente para atender o que voc&ecirc; ou sua empresa precisa.<\\/p>\\r\\n<p>Nossos sites s&atilde;o desenvolvidos com as principais t&eacute;cnicas de SEO (Otimiza&ccedil;&atilde;o de Sites), o que aumenta as possibilidades dele atingir as primeiras p&aacute;ginas do Google. O que importa para a Sdrummond &eacute; ter um cliente satisfeito e obtendo sucesso com os nossos servi&ccedil;os dentro de seu mercado e\\/ou p&uacute;blico alvo.<\\/p>\\r\\n<p>Oferecemos solu&ccedil;&otilde;es para empresas de todos os tamanhos e segmentos. Com foco em proporcionar aos clientes resultados significativos e imediatos, a Sdrummond conta com profissionais qualificados e recursos de ponta, que permite o desenvolvimento das melhores solu&ccedil;&otilde;es, atrav&eacute;s de an&aacute;lise de cada cliente e suas necessidades espec&iacute;ficas.<\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-03-13 18:58:50\",\"created_by\":\"635\",\"created_by_alias\":\"\",\"modified\":\"2018-01-30 18:34:52\",\"modified_by\":\"635\",\"checked_out\":\"635\",\"checked_out_time\":\"2018-01-30 18:34:41\",\"publish_up\":\"2017-03-13 18:58:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sites_campanhas_adwords.png\\\",\\\"float_intro\\\":\\\"left\\\",\\\"image_intro_alt\\\":\\\"criacao e desenvolvimento de sites e campanhas adwords\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"xcf\\\":{\\\"og_title\\\":\\\"SDrummond  Solu\\\\u00e7\\\\u00f5es em Tecnologias\\\",\\\"og_description\\\":\\\"Desde 2011 no mercado de desenvolvimento de softwares e websites, a SDrummond tem conquistado clientes de diversas \\\\u00e1reas. Oferecemos solu\\\\u00e7\\\\u00f5es web efetivas, com cumplicidade na entrega, valores acess\\\\u00edveis, al\\\\u00e9m de contar com uma equipe de profissionais capacitados para o desenvolvimento e execu\\\\u00e7\\\\u00e3o de seus projetos.\\\",\\\"og_image\\\":\\\"images\\\\\\/escritorio_sdrummond_tecnologias.jpg\\\",\\\"og_type\\\":\\\"article\\\",\\\"og_url\\\":\\\"https:\\\\\\/\\\\\\/sdrummond.com.br\\\\\\/sdrummond-tecnologias\\\"}}\",\"version\":8,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"675\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);

CREATE TABLE `sd17_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

CREATE TABLE `sd17_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

INSERT INTO `sd17_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 0, 0, ''),
(5, 'Slideshow CK Update', 'extension', 'http://update.joomlack.fr/mod_slideshowck_update.xml', 0, 0, ''),
(6, 'jQuery Easy auto updater', 'extension', 'http://www.barejoomlatemplates.com/autoupdates/jqueryeasy/jqueryeasy-update.xml', 0, 0, ''),
(7, 'AcyMailing', 'extension', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 0, 0, ''),
(8, 'mediahof', 'collection', 'http://extensions.mediahof.de/extensions.xml', 1, 0, ''),
(9, 'XCF Update Site', 'extension', 'https://www.themexpert.com/index.php?option=com_digicom&task=responses&source=release&format=xml&provider=joomla&pid=114', 1, 0, ''),
(10, 'JCH Optimize Updates', 'extension', 'https://www.jch-optimize.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&file=extension.xml', 1, 0, '');

CREATE TABLE `sd17_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

INSERT INTO `sd17_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(3, 10002),
(4, 28),
(5, 10004),
(5, 10013),
(6, 10020),
(7, 10023),
(8, 10040),
(9, 10045),
(10, 10046);

CREATE TABLE `sd17_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

CREATE TABLE `sd17_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(635, 'Sdrummond', 'sdrummond', 'wanderson@sdrummond.com.br', '$2y$10$EP1JKWTzHknwrS8/VwMcve7adEfyRX5MTcPHOPTfEKjDuuy8zNLKi', 0, 1, '2017-03-10 17:35:46', '2022-05-30 23:29:52', '0', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);

CREATE TABLE `sd17_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `sd17_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

CREATE TABLE `sd17_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_user_usergroup_map` (`user_id`, `group_id`) VALUES
(635, 8);

CREATE TABLE `sd17_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_utf8_conversion` (`converted`) VALUES
(2);

CREATE TABLE `sd17_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sd17_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

CREATE TABLE `sd17_wf_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sd17_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,fontselect,fontsizeselect,fontcolor', 1, 1, 0, '0000-00-00 00:00:00', ''),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect', 0, 3, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toggle\":\"0\"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect', 0, 4, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}');

CREATE TABLE `sd17_xcf_fields` (
  `id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `group` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sd17_xcf_fields` (`id`, `asset_id`, `title`, `group`, `type`, `name`, `description`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`) VALUES
(1, 93, 'OG Title', '1', 'J_TEXT', 'og_title', '', 1, 1, 0, '0000-00-00 00:00:00', 635),
(2, 94, 'OG Description', '1', 'J_TEXTAREA', 'og_description', '', 2, 1, 0, '0000-00-00 00:00:00', 635),
(3, 95, 'OG Image', '1', 'J_IMAGE', 'og_image', '', 3, 1, 0, '0000-00-00 00:00:00', 635),
(4, 96, 'OG Type', '1', 'J_TEXT', 'og_type', '', 4, 1, 0, '0000-00-00 00:00:00', 635),
(5, 97, 'OG URL', '1', 'J_TEXT', 'og_url', '', 5, 1, 0, '0000-00-00 00:00:00', 635);

CREATE TABLE `sd17_xcf_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `description` text NOT NULL,
  `event` varchar(255) NOT NULL,
  `hidden_field` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sd17_xcf_groups` (`id`, `asset_id`, `name`, `type`, `category`, `description`, `event`, `hidden_field`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`) VALUES
(1, 92, 'Open Graph', '1', 0, '', 'beforeDisplayContent', '', 1, 1, 0, '0000-00-00 00:00:00', 635);

CREATE TABLE `sd17_xcf_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `show` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sd17_xcf_types` (`id`, `name`, `type`, `show`) VALUES
(1, 'Joomla Article', 'com_content.article', 1);


ALTER TABLE `sd17_acymailing_action`
  ADD PRIMARY KEY (`action_id`);

ALTER TABLE `sd17_acymailing_config`
  ADD PRIMARY KEY (`namekey`);

ALTER TABLE `sd17_acymailing_fields`
  ADD PRIMARY KEY (`fieldid`),
  ADD UNIQUE KEY `namekey` (`namekey`),
  ADD KEY `orderingindex` (`published`,`ordering`);

ALTER TABLE `sd17_acymailing_filter`
  ADD PRIMARY KEY (`filid`);

ALTER TABLE `sd17_acymailing_forward`
  ADD PRIMARY KEY (`subid`,`mailid`);

ALTER TABLE `sd17_acymailing_geolocation`
  ADD PRIMARY KEY (`geolocation_id`),
  ADD KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`),
  ADD KEY `geolocation_ip_created` (`geolocation_ip`,`geolocation_created`);

ALTER TABLE `sd17_acymailing_history`
  ADD KEY `subid` (`subid`,`date`),
  ADD KEY `dateindex` (`date`),
  ADD KEY `actionindex` (`action`,`mailid`);

ALTER TABLE `sd17_acymailing_list`
  ADD PRIMARY KEY (`listid`),
  ADD KEY `typeorderingindex` (`type`,`ordering`),
  ADD KEY `useridindex` (`userid`),
  ADD KEY `typeuseridindex` (`type`,`userid`);

ALTER TABLE `sd17_acymailing_listcampaign`
  ADD PRIMARY KEY (`campaignid`,`listid`);

ALTER TABLE `sd17_acymailing_listmail`
  ADD PRIMARY KEY (`listid`,`mailid`);

ALTER TABLE `sd17_acymailing_listsub`
  ADD PRIMARY KEY (`listid`,`subid`),
  ADD KEY `subidindex` (`subid`),
  ADD KEY `listidstatusindex` (`listid`,`status`);

ALTER TABLE `sd17_acymailing_mail`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `senddate` (`senddate`),
  ADD KEY `typemailidindex` (`type`,`mailid`),
  ADD KEY `useridindex` (`userid`);

ALTER TABLE `sd17_acymailing_queue`
  ADD PRIMARY KEY (`subid`,`mailid`),
  ADD KEY `listingindex` (`senddate`,`subid`),
  ADD KEY `mailidindex` (`mailid`),
  ADD KEY `orderingindex` (`priority`,`senddate`,`subid`);

ALTER TABLE `sd17_acymailing_rules`
  ADD PRIMARY KEY (`ruleid`),
  ADD KEY `ordering` (`published`,`ordering`);

ALTER TABLE `sd17_acymailing_stats`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `senddateindex` (`senddate`);

ALTER TABLE `sd17_acymailing_subscriber`
  ADD PRIMARY KEY (`subid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userid` (`userid`),
  ADD KEY `queueindex` (`enabled`,`accept`,`confirmed`);

ALTER TABLE `sd17_acymailing_tag`
  ADD PRIMARY KEY (`tagid`),
  ADD KEY `useridindex` (`userid`);

ALTER TABLE `sd17_acymailing_tagmail`
  ADD PRIMARY KEY (`tagid`,`mailid`);

ALTER TABLE `sd17_acymailing_template`
  ADD PRIMARY KEY (`tempid`),
  ADD UNIQUE KEY `namekey` (`namekey`),
  ADD KEY `orderingindex` (`ordering`);

ALTER TABLE `sd17_acymailing_url`
  ADD PRIMARY KEY (`urlid`),
  ADD KEY `url` (`url`(250));

ALTER TABLE `sd17_acymailing_urlclick`
  ADD PRIMARY KEY (`urlid`,`mailid`,`subid`),
  ADD KEY `dateindex` (`date`),
  ADD KEY `mailidindex` (`mailid`),
  ADD KEY `subidindex` (`subid`);

ALTER TABLE `sd17_acymailing_userstats`
  ADD PRIMARY KEY (`mailid`,`subid`),
  ADD KEY `senddateindex` (`senddate`),
  ADD KEY `subidindex` (`subid`);

ALTER TABLE `sd17_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

ALTER TABLE `sd17_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

ALTER TABLE `sd17_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `sd17_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

ALTER TABLE `sd17_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

ALTER TABLE `sd17_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `sd17_clients`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sd17_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

ALTER TABLE `sd17_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

ALTER TABLE `sd17_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

ALTER TABLE `sd17_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

ALTER TABLE `sd17_content_rating`
  ADD PRIMARY KEY (`content_id`);

ALTER TABLE `sd17_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

ALTER TABLE `sd17_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

ALTER TABLE `sd17_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

ALTER TABLE `sd17_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

ALTER TABLE `sd17_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

ALTER TABLE `sd17_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

ALTER TABLE `sd17_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

ALTER TABLE `sd17_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

ALTER TABLE `sd17_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

ALTER TABLE `sd17_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

ALTER TABLE `sd17_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

ALTER TABLE `sd17_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

ALTER TABLE `sd17_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

ALTER TABLE `sd17_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `sd17_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

ALTER TABLE `sd17_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

ALTER TABLE `sd17_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

ALTER TABLE `sd17_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `sd17_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

ALTER TABLE `sd17_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

ALTER TABLE `sd17_overrider`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sd17_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

ALTER TABLE `sd17_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

ALTER TABLE `sd17_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

ALTER TABLE `sd17_services`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sd17_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

ALTER TABLE `sd17_spsimpleportfolio_items`
  ADD PRIMARY KEY (`spsimpleportfolio_item_id`);

ALTER TABLE `sd17_spsimpleportfolio_tags`
  ADD PRIMARY KEY (`spsimpleportfolio_tag_id`);

ALTER TABLE `sd17_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

ALTER TABLE `sd17_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

ALTER TABLE `sd17_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

ALTER TABLE `sd17_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

ALTER TABLE `sd17_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

ALTER TABLE `sd17_updates`
  ADD PRIMARY KEY (`update_id`);

ALTER TABLE `sd17_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

ALTER TABLE `sd17_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

ALTER TABLE `sd17_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

ALTER TABLE `sd17_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

ALTER TABLE `sd17_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `sd17_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

ALTER TABLE `sd17_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

ALTER TABLE `sd17_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

ALTER TABLE `sd17_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

ALTER TABLE `sd17_wf_profiles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sd17_xcf_fields`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sd17_xcf_groups`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sd17_xcf_types`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `sd17_acymailing_action`
  MODIFY `action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_acymailing_fields`
  MODIFY `fieldid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `sd17_acymailing_filter`
  MODIFY `filid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_acymailing_geolocation`
  MODIFY `geolocation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_acymailing_list`
  MODIFY `listid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `sd17_acymailing_mail`
  MODIFY `mailid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `sd17_acymailing_rules`
  MODIFY `ruleid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_acymailing_subscriber`
  MODIFY `subid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

ALTER TABLE `sd17_acymailing_tag`
  MODIFY `tagid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_acymailing_template`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `sd17_acymailing_url`
  MODIFY `urlid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=99;

ALTER TABLE `sd17_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `sd17_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `sd17_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `sd17_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `sd17_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `sd17_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10049;

ALTER TABLE `sd17_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `sd17_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `sd17_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

ALTER TABLE `sd17_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `sd17_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

ALTER TABLE `sd17_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

ALTER TABLE `sd17_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `sd17_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `sd17_spsimpleportfolio_items`
  MODIFY `spsimpleportfolio_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `sd17_spsimpleportfolio_tags`
  MODIFY `spsimpleportfolio_tag_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `sd17_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `sd17_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `sd17_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `sd17_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

ALTER TABLE `sd17_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `sd17_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

ALTER TABLE `sd17_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

ALTER TABLE `sd17_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `sd17_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

ALTER TABLE `sd17_wf_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `sd17_xcf_fields`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `sd17_xcf_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `sd17_xcf_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
