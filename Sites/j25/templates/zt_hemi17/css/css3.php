<?php 
/*------------------------------------------------------------------------
* Copyright (c) 2008-2011 ZooTemplate. All Rights Reserved.
* @license - Copyrighted Commercial Software
* Author: ZooTemplate
* Websites:  http://www.zootemplate.com
-------------------------------------------------------------------------*/
header('Content-type: text/css; charset: UTF-8');
header('Cache-Control: must-revalidate');
header('Expires: ' . gmdate('D, d M Y H:i:s', time() + 3600) . ' GMT');
$url = $_REQUEST['url']."/css/css3.htc";
$url = str_replace("//","/",$url);
?>


#menusys_mega li.hasChild  ul a:hover ,
#menusys_mega li.hasChild  ul a:active,
#menusys_mega li.hasChild  ul a:focus,
#menusys_mega li.hasChild  ul.mega-ul  a.active:hover{
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px ;
	border-radius: 5px ;
	position: relative;
	opacity:1;
	behavior: url(<?php echo $url; ?>/css/css3.htc);
}


#option_wrapper .inner {
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	behavior: url(<?php echo $url; ?>);
}
.jv-proshow-intro a.readon,
.button,
.button-a{
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	behavior: url(<?php echo $url; ?>);
}
.jv-proshow-intro a.readon:hover,
{
	-webkit-box-shadow: #afcfe9 0px 0px 3px;
	-moz-box-shadow: #afcfe9 0px  0px 5px;
	box-shadow: #afcfe9 0px  0px 5px;
	behavior: url(<?php echo $url; ?>);
}