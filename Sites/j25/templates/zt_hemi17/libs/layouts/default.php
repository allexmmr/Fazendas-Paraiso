<?php

/**

 * @copyright	Copyright (C) 2008 - 2011 ZooTemplate.com. All rights reserved.

 * @license		GNU/GPL, see LICENSE.php

 * Joomla! is free software. This version may have been modified pursuant

 * to the GNU General Public License, and as distributed it includes or

 * is derivative of works licensed under the GNU General Public License or

 * other free or open source software licenses.

 * See COPYRIGHT.php for copyright notices and details.

 */

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>">

<head>

	<jdoc:include type="head" />

	<?php JHTML::_('behavior.mootools'); ?>



	<?php if($ztTools->getParam('zt_fontfeature')) : ?>

	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz' rel='stylesheet' type='text/css' />

	<?php endif; ?>



	<?php

		$document = JFactory::getDocument();

		$document->addStyleSheet($ztTools->baseurl() . 'templates/system/css/system.css');

		$document->addStyleSheet($ztTools->baseurl() . 'templates/system/css/general.css');

		$document->addStyleSheet($ztTools->templateurl() . 'css/default.css');

		$document->addStyleSheet($ztTools->templateurl() . 'css/template.css');

		$document->addStyleSheet($ztTools->templateurl() . 'css/rainbow.css');

		$document->addStyleSheet($ztTools->templateurl() . 'css/patterns.css');

		

		if($ztrtl == 'rtl') {

			$document->addStyleSheet($ztTools->templateurl() . 'css/template_rtl.css');

			$document->addStyleSheet($ztTools->templateurl() . 'css/typo_rtl.css');

		} else {

			$document->addStyleSheet($ztTools->templateurl() . 'css/typo.css');

		}

		

		if($ztTools->getParam('zt_fontfeature')) {

			$document->addStyleSheet($ztTools->templateurl() . 'css/fonts.css');

		}

		

		if($this->params->get('zt_change_color')) {

			$document->addScript($ztTools->templateurl() . 'js/zt.script.js');

			$document->addScript($ztTools->templateurl() . 'js/rainbow.js');

			$document->addScript($ztTools->templateurl() . 'js/ladypop.js');

		}

		

	?>

	<link rel="stylesheet" href="<?php echo $ztTools->templateurl(); ?>css/modules.css" type="text/css" />

	<link rel="stylesheet" href="<?php echo $ztTools->templateurl(); ?>css/css3.php?url=<?php echo $ztTools->templateurl(); ?>" type="text/css" />

	<script type="text/javascript">

		var baseurl = "<?php echo $ztTools->baseurl() ; ?>";

		var ztpathcolor = '<?php echo $ztTools->templateurl(); ?>css/colors/';

		var tmplurl = '<?php echo $ztTools->templateurl();?>';

		var CurrentFontSize = parseInt('<?php echo $ztTools->getParam('zt_font');?>');

	</script>

	<!--[if lte IE 6]>

	<link rel="stylesheet" href="<?php echo $ztTools->templateurl(); ?>css/ie6.css" type="text/css" />

	<script type="text/javascript" src="<?php echo $ztTools->templateurl() ?>js/ie_png.js"></script>

	<script type="text/javascript">

	window.addEvent ('load', function() {

	   ie_png.fix('.png');

	});

	</script>

	<![endif]-->

	<!--[if lte IE 7]>

	<link rel="stylesheet" href="<?php echo $ztTools->templateurl(); ?>css/ie7.css" type="text/css" />

	<![endif]-->



<?php

	include_once (dirname(__FILE__).DS.'header.php');

?>



</head>

<body id="bd" class="fs<?php echo $ztTools->getParam('zt_font'); ?> <?php echo $ztTools->getParam('zt_display'); ?> <?php echo $ztTools->getParam('zt_display_style'); ?> <?php echo $ztrtl; ?>">



<div id="zt-wrapper">

	<div id="zt-wrapper-inner" class="clearfix">

	

		<div id="zt-maintop" class="<?php echo $ztTools->getParamsValue($prefix, 'image', 'zt-maintop');?>">

		<!-- HEADER -->

		<div id="zt-header" class="clearfix">

			<div id="zt-header-inner">

				<div class="zt-wrapper">

					<div id="zt-logo">

						<h1 id="logo"><a class="png" href="<?php echo $ztTools->baseurl() ; ?>" title="<?php echo $ztTools->sitename() ; ?>">

							<span><?php echo $ztTools->sitename() ; ?></span></a>

						</h1>

					</div>

					<div id="zt-mainmenu">

						<div id="zt-mainmenu-inner">

							<?php $menu->show(); ?>

						</div>

					</div>

				</div>

			</div>

		</div>

		<!-- END HEADER -->

			

		<?php if($this->countModules('slideshow')) : ?>

		<div id="zt-slideshow" class="clearfix">

			<div id="zt-slideshow-inner">

				<div class="zt-wrapper">

					<jdoc:include type="modules" name="slideshow" style="ztxhtml"/>

				</div>

			</div>

		</div>

		<?php endif; ?>



		<?php

		$spotlight = array ('user1','user2','user3','user4');

		$consl = $ztTools->calSpotlight($spotlight,$ztTools->isOP()?100:100,'%');

		if( $consl) :

		?>

		<!--# ZT-USERWRAP1-->

		<div id="zt-userwrap1" class="clearfix <?php echo $zt_slide; ?>">

			<div class="zt-wrapper">

				<div id="zt-userwrap1-inner">

					<?php if($this->countModules('user1')) : ?>

					<div id="zt-user1" class="zt-user zt-box<?php echo $consl['user1']['class']; ?>" style="width: <?php echo $consl['user1']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user1" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user2')) : ?>

					<div id="zt-user2" class="zt-user zt-box<?php echo $consl['user2']['class']; ?>" style="width: <?php echo $consl['user2']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user2" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user3')) : ?>

					<div id="zt-user3" class="zt-user zt-box<?php echo $consl['user3']['class']; ?>" style="width: <?php echo $consl['user3']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user3" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user4')) : ?>

					<div id="zt-user4" class="zt-user zt-box<?php echo $consl['user4']['class']; ?>" style="width: <?php echo $consl['user4']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user4" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>



					

				</div>

			</div>

		</div>

		<!--# END ZZT-USERWRAP1-->

		<?php endif; ?>

		

		

		<?php

		$spotlight1 = array ('user5','user6','user7','user8');

		$consl1 = $ztTools->calSpotlight($spotlight1,$ztTools->isOP()?100:100,'%');

		if( $consl1) :

		?>	

		<!--# ZT-USERWRAP2-->

		<div id="zt-userwrap2" class=" clearfix">

			<div class="zt-wrapper">

				<div id="zt-userwrap2-inner">

				

					<?php if($this->countModules('user5')) : ?>

					<div id="zt-user5" class="zt-user zt-box<?php echo $consl1['user5']['class']; ?>" style="width: <?php echo $consl1['user5']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user5" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user6')) : ?>

					<div id="zt-user6" class="zt-user zt-box<?php echo $consl1['user6']['class']; ?>" style="width: <?php echo $consl1['user6']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user6" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user7')) : ?>

					<div id="zt-user7" class="zt-user zt-box<?php echo $consl1['user7']['class']; ?>" style="width: <?php echo $consl1['user7']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user7" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user8')) : ?>

					<div id="zt-user8" class="zt-user zt-box<?php echo $consl1['user8']['class']; ?>" style="width: <?php echo $consl1['user8']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user8" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

				</div>

			</div>

		</div>

		

		

		

		<!--#END ZT-USERWRAP2-->		

		<?php endif; ?>	

		</div>

		

		<!-- MAINBODY -->

		<div id="zt-mainbody" class="clearfix <?php echo $ztTools->getPageClassSuffix(); ?>">

			<div id="zt-mainbody-inner">

				<div class="zt-wrapper">

			

					<!-- CONTAINER -->

					<div id="zt-container<?php echo $zt_width; ?>" class="clearfix">

						<?php if($this->countModules('left')) : ?>

							<div id="zt-left">

								<div class="box-t1">

									<div class="box-t2">

										<div class="box-t3"></div>

									</div>

								</div>

								<div class="box-c1">

									<div class="box-c2">

										<div id="zt-c-left" class="box-c3">

											<div id="zt-left-inner">

												<jdoc:include type="modules" name="left" style="ztxhtml2" />

											</div>

										</div>

									</div>	

								</div>		

							</div>

						<?php endif; ?>



						<div id="zt-content">

							<div class="box-t1">

								<div class="box-t2">

									<div class="box-t3"></div>

								</div>

							</div>

							<div class="box-c1">

							<div class="box-c2">

							<div class="box-c3" id="zt-c-content">

							<div id="zt-content-inner">

							

								<?php

								$spotlight1 = array ('col1','col2','col3');

								$consl1 = $ztTools->calSpotlight($spotlight1,$ztTools->isOP()?100:100,'%');

								if( $consl1) :

								?>	

								<!--# Spotlight Col 1-->

								<div id="zt-colspan1" class=" clearfix">

									<div id="zt-colspan1-inner">

									

										<?php if($this->countModules('col1')) : ?>

										<div id="zt-col1" class="zt-user zt-box<?php echo $consl1['col1']['class']; ?>" style="width: <?php echo $consl1['col1']['width']; ?>;">

											<div class="zt-box-inside">

												<jdoc:include type="modules" name="col1" style="ztxhtml" />

											</div>

										</div>

										<?php endif; ?>

										

										<?php if($this->countModules('col2')) : ?>

										<div id="zt-col2" class="zt-user zt-box<?php echo $consl1['col2']['class']; ?>" style="width: <?php echo $consl1['col2']['width']; ?>;">

											<div class="zt-box-inside">

												<jdoc:include type="modules" name="col2" style="ztxhtml" />

											</div>

										</div>

										<?php endif; ?>

										

										<?php if($this->countModules('col3')) : ?>

										<div id="zt-col3" class="zt-user zt-box<?php echo $consl1['col3']['class']; ?>" style="width: <?php echo $consl1['col3']['width']; ?>;">

											<div class="zt-box-inside">

												<jdoc:include type="modules" name="col3" style="ztxhtml" />

											</div>

										</div>

										<?php endif; ?>

										

									</div>

								</div>

								<!--# END Spotlight Col 1-->		

								<?php endif; ?>	



									

								<div id="zt-component" class="clearfix">

									<jdoc:include type="message" />

									<jdoc:include type="component" />

								</div>



								<?php

								$spotlight1 = array ('col4','col5','col6');

								$consl1 = $ztTools->calSpotlight($spotlight1,$ztTools->isOP()?100:100,'%');

								if( $consl1) :

								?>	

								<!--#Begin Spotlight Col 2-->

								<div id="zt-colspan2" class=" clearfix">

									<div id="zt-colspan2-inner">

									

										<?php if($this->countModules('col4')) : ?>

										<div id="zt-col4" class="zt-user zt-box<?php echo $consl1['col4']['class']; ?>" style="width: <?php echo $consl1['col4']['width']; ?>;">

											<div class="zt-box-inside">

												<jdoc:include type="modules" name="col4" style="ztxhtml" />

											</div>

										</div>

										<?php endif; ?>

										

										<?php if($this->countModules('col5')) : ?>

										<div id="zt-col5" class="zt-user zt-box<?php echo $consl1['col5']['class']; ?>" style="width: <?php echo $consl1['col5']['width']; ?>;">

											<div class="zt-box-inside">

												<jdoc:include type="modules" name="col5" style="ztxhtml" />

											</div>

										</div>

										<?php endif; ?>

										

										<?php if($this->countModules('col6')) : ?>

										<div id="zt-col6" class="zt-user zt-box<?php echo $consl1['col6']['class']; ?>" style="width: <?php echo $consl1['col6']['width']; ?>;">

											<div class="zt-box-inside">

												<jdoc:include type="modules" name="col6" style="ztxhtml" />

											</div>

										</div>

										<?php endif; ?>

										

									</div>

								</div>

								<!--#end Spotlight Col 2-->		

								<?php endif; ?>

							</div>

							

							</div>

							</div>									

							</div>

						</div>

						

						<?php if($this->countModules('right')) : ?>

							<div id="zt-right">

								<div class="box-t1">

									<div class="box-t2">

										<div class="box-t3"></div>

									</div>

								</div>

								<div class="box-c1">

									<div class="box-c2">

										<div class="box-c3" id="zt-c-right">

											<div id="zt-right-inner">

												<jdoc:include type="modules" name="right" style="ztxhtml2" />

											</div>

										</div>

									</div>

								</div>

							</div>

						<?php endif; ?>		

						

					</div>

					<!-- END CONTAINER -->





				</div>

			</div>		

		</div>

		<!-- END MAINBODY -->

		

		

		<div id="zt-bottom">

		<?php

		$spotlight2 = array ('user9','user10','user11','user12');

		$consl2 = $ztTools->calSpotlight($spotlight2,$ztTools->isOP()?100:99,'%');

		if( $consl2) :

		?>

		<!--#Begin Userwrap 3-->

		<div id="zt-userwrap3" class="clearfix">

			<div class="zt-wrapper">

				<div id="zt-userwrap3-inner">

				

					<?php if($this->countModules('user9')) : ?>

					<div id="zt-user9" class="zt-user zt-box<?php echo $consl2['user9']['class']; ?>" style="width: <?php echo $consl2['user9']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user9" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user10')) : ?>

					<div id="zt-user10" class="zt-user zt-box<?php echo $consl2['user10']['class']; ?>" style="width: <?php echo $consl2['user10']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user10" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user11')) : ?>

					<div id="zt-user11" class="zt-user zt-box<?php echo $consl2['user11']['class']; ?>" style="width: <?php echo $consl2['user11']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user11" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user12')) : ?>

					<div id="zt-user12" class="zt-user zt-box<?php echo $consl2['user12']['class']; ?>" style="width: <?php echo $consl2['user12']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user12" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

				</div>

			</div>

		</div>

		<!--#end Userwrap 3-->

		<?php endif; ?>	



		<?php

		$spotlight3 = array ('user13','user14','user15','user16');

		$consl3 = $ztTools->calSpotlight($spotlight3,$ztTools->isOP()?100:100,'%');

		if( $consl3) :

		?>

		<!--#Begin Userwrap 4-->

		<div id="zt-userwrap4" class="clearfix">

			<div class="zt-wrapper">

				<div id="zt-userwrap4-inner">

				

					<?php if($this->countModules('user13')) : ?>

					<div id="zt-user13" class="zt-user zt-box<?php echo $consl3['user13']['class']; ?>" style="width: <?php echo $consl3['user13']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user13" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user14')) : ?>

					<div id="zt-user14" class="zt-user zt-box<?php echo $consl3['user14']['class']; ?>" style="width: <?php echo $consl3['user14']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user14" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user15')) : ?>

					<div id="zt-user15" class="zt-user zt-box<?php echo $consl3['user15']['class']; ?>" style="width: <?php echo $consl3['user15']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user15" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

					<?php if($this->countModules('user16')) : ?>

					<div id="zt-user16" class="zt-user zt-box<?php echo $consl3['user16']['class']; ?>" style="width: <?php echo $consl3['user16']['width']; ?>;">

						<div class="zt-box-inside">

							<jdoc:include type="modules" name="user16" style="ztxhtml" />

						</div>

					</div>

					<?php endif; ?>

					

				</div>

			</div>

		</div>

		<!--#end Userwrap 4-->

		<?php endif; ?>	

		

		<!--#Begin Userwrap 5-->

		<div id="zt-userwrap5" class="clearfix">

			<div class="zt-wrapper">

				<div id="zt-userwrap5-inner">

					<?php if($this->countModules('footer')) : ?>

						<div id="zt-footer">

							<div id="zt-footer-inner"><jdoc:include type="modules" name="footer" /></div>

						</div>

					<?php endif; ?>

					

					<div id="zt-copyright" class="clearfix">

						<div id="zt-copyright-inner">

							<?php if($ztTools->getParam('zt_footer')) : ?>

							<?php echo $ztTools->getParam('zt_footer_text'); ?>

							<?php else : ?>

							© Copyright 2009-<?php $ano = date("Y"); echo "$ano" ?> <img src="/templates/zt_hemi17/images/plus.gif"> <a href="pagina-inicial.html" target="_self" title="FazParaiso.com.br">FazParaiso.com.br</a> <img src="/templates/zt_hemi17/images/plus.gif"> Todos os direitos reservados.
							<br />
                            <br />
                            Powered by <a href="http://www.poob.com.br" target="_blank"><img src="/templates/zt_hemi17/images/poob-info.png" title="Powered by Poob Info" alt="Logo Poob Info" align="middle" border="0"></a>

							<?php endif; ?>

						</div>

					</div>



					

				</div>

				

			</div>

		</div>

		<!--#End Userwrap 5-->

		</div>

		

	</div>

</div>



<jdoc:include type="modules" name="debug" />



<?php

	if($this->params->get('zt_change_color')) {

		include_once (dirname(__FILE__).DS.'footer.php');

	}

?>



</body>

</html>