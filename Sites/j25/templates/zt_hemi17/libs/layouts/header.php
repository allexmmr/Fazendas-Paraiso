<?php
/**
* @version 1.7.x
* @package ZooTemplate Project
* @email webmaster@zootemplate.com
* @copyright (c) 2008 - 2011 http://www.ZooTemplate.com. All rights reserved.
*/

$groups = array('bd'=>'Body', 'zt-maintop'=>'Top', 'zt-bottom' => 'Bottom');
$value  = array();

$prefix = "hemi";

//Body Group
$value['bd']['color'] = $ztTools->getParamsValue($prefix, 'color', 'bd');

//User 1 Group
$value['zt-maintop']['color'] = $ztTools->getParamsValue($prefix, 'color', 'zt-maintop');
$value['zt-maintop']['text'] = $ztTools->getParamsValue($prefix, 'text', 'zt-maintop');
$value['zt-maintop']['link']  = $ztTools->getParamsValue($prefix, 'link', 'zt-maintop');
$value['zt-maintop']['image'] = array($ztTools->getParamsValue($prefix, 'image', 'zt-maintop'), array('pattern1', 'pattern2', 'pattern3', 'pattern4', 'pattern5', 'pattern6', 'pattern7', 'pattern8', 'pattern9', 'pattern10', 'pattern11', 'pattern12', 'pattern13', 'pattern14', 'pattern15', 'pattern16'));

//Wrapper inner
//$value['zt-maintop']['image'] = array($ztTools->getParamsValue($prefix, 'image', 'zt-maintop'), array('pattern1', 'pattern2', 'pattern3', 'pattern4', 'pattern5', 'pattern6', 'pattern7', 'pattern8', 'pattern9', 'pattern10', 'pattern11', 'pattern12', 'pattern13', 'pattern14', 'pattern15', 'pattern16'));

//Bottom Group
$value['zt-bottom']['color'] = $ztTools->getParamsValue($prefix, 'color', 'zt-bottom');
$value['zt-bottom']['text'] = $ztTools->getParamsValue($prefix, 'text', 'zt-bottom');
$value['zt-bottom']['link']  = $ztTools->getParamsValue($prefix, 'link', 'zt-bottom');

?>
<style type="text/css">
	#bd {
		background-color: <?php echo $ztTools->getParamsValue($prefix, 'color', 'bd'); ?>;
	}
	#zt-maintop {
		color: <?php echo $ztTools->getParamsValue($prefix, 'text', 'zt-maintop'); ?>;
		background-color: <?php echo $ztTools->getParamsValue($prefix, 'color', 'zt-maintop'); ?>;
	}
	#zt-userwrap1 a {
		color: <?php echo $ztTools->getParamsValue($prefix, 'link', 'zt-userwrap1'); ?>;
	}
	#zt-bottom {
		color: <?php echo $ztTools->getParamsValue($prefix, 'text', 'zt-bottom'); ?>;
		background-color: <?php echo $ztTools->getParamsValue($prefix, 'color', 'zt-bottom'); ?>;
	}
	#zt-bottom a {
		color: <?php echo $ztTools->getParamsValue($prefix, 'link', 'zt-bottom'); ?>;
	}
</style>