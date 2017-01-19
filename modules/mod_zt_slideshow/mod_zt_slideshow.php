<?php
/**
 * @package ZT Slideshow module for Joomla! 1.6
 * @author http://www.zootemplate.com
 * @copyright (C) 2011- ZooTemplate.Com
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/
// no direct access
defined('_JEXEC') or die('Restricted access');
require_once (dirname(__FILE__).DS.'helper.php');

$slides = modZTSlideshowHelper::getList($params);

if($params->get('autorun')==0)
	$autorun = "false";
else
	$autorun = "true";

require(JModuleHelper::getLayoutPath('mod_zt_slideshow'));
?>