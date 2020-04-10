<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
JPlugin::loadLanguage( 'tpl_SG1' );
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />
<link rel="stylesheet" href="templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
<!--[if lte IE 6]>
<link rel="stylesheet" href="templates/<?php echo $this->template ?>/css/ie6.css" type="text/css" />
<![endif]-->
</head>
<body id="page_bg">
	<div class="center">
		<div id="wrapper">
			<div id="area">
				<div id="header">
					<div id="logo">
					</div>
				</div>
				<div id="content">
					<div class="pill_m">
						<div id="pillmenu">
							<jdoc:include type="modules" name="user3" />
						</div>
					</div>
					<div id="leftcolumn" style="float: left;">
						<jdoc:include type="modules" name="left" style="rounded" />
						<?php $sg = 'banner'; include "templates.php"; ?>
					</div>
					<div id="maincolumn">
						<div class="nopad">
							<?php if($this->params->get('showComponent')) : ?>
								<jdoc:include type="component" />
							<?php endif; ?>
						</div>
				</div>
			</div>
		</div>
		<div id="bottom"></div>
		<div class="clr"></div>
	</div>
	<jdoc:include type="modules" name="debug" />
	</div>
	<div id="footer">
		<p><font class="sgf1">© Copyright 2009-<?php $ano = date("Y"); echo "$ano" ?> <img src="templates/Paraiso/images/plus.gif" alt="" width="3" height="9"> <a href="pagina-inicial.html">FazParaiso.com.br</a> <img src="templates/Paraiso/images/plus.gif" alt="" width="3" height="9"> Todos os direitos reservados.</font></p>
	</div>
<!--cacheb--><?php if (defined('JOOMLA_CACHE')) { echo JOOMLA_CACHE; } ?><!--cachee-->
</body>
</html>