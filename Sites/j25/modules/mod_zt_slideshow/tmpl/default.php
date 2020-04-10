<?php
/**
 * @package ZT Slideshow module for Joomla! 1.6
 * @author http://www.zootemplate.com
 * @copyright (C) 2011- zootemplate.Com
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/
// no direct access
defined('_JEXEC') or die('Restricted access');

JHTML::_('stylesheet','ztslideshow.css','modules/mod_zt_slideshow/assets/css/');
?>
<?php
	$id 		= $module->id;
	$height 	= $params->get('height');
	$width 		= $params->get('width');
	$background = $params->get('background');
?>
<style type="text/css">
#mySlideshow<?php echo $id; ?>,
#mySlideshowSet<?php echo $id; ?>,
#flickrSlideshow<?php echo $id; ?>
{
	width: <?php echo $width; ?>px;
	height: <?php echo $height; ?>px;
	z-index: 5;
}

#flickrSlideshow<?php echo $id; ?>
{
	width: 500px;
	height: 334px;
}

#mySlideshow<?php echo $id; ?> img.thumbnail, 
#mySlideshowSet<?php echo $id; ?> img.thumbnail
{
	display: none;
}

.jdSlideshow
{
	overflow: hidden;
	position: relative;
}

.jdSlideshow img
{
	border: 0;
	margin: 0;
}

.jdSlideshow .slideElement
{
	width: 100%;
	height: 100%;
	background-color: #<?php echo $background; ?>;
	background-repeat: no-repeat;
	background-position: center center;
	background-image: url('modules/mod_zt_slideshow/assets/images/loading.gif');
}

.jdSlideshow .loadingElement
{
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	top: 0;
	background-color: #<?php echo $background; ?>;
	background-repeat: no-repeat;
	background-position: center center;
	background-image: url('modules/mod_zt_slideshow/assets/images/loading.gif');
}
</style>
<script type="text/javascript">
	function startSlideshow<?php echo $module->id; ?>() {
		var mySlideshow<?php echo $module->id; ?> = new gallery($('mySlideshow<?php echo $module->id; ?>'), {
			timed: <?php if($params->get('autorun')==1) : echo "true"; else :echo "false"; endif; ?>,
			defaultTransition: "<?php echo $params->get('transition'); ?>",
			baseClass: 'jdSlideshow',
			embedLinks: <?php if($params->get('linkable')) : echo "true"; else : echo "false"; endif; ?>,
			showArrows: <?php if($params->get('arrows')) : echo "true"; else : echo "false"; endif; ?>,
			showInfopane: <?php if($params->get('showtitle') || $params->get('showdescription')) : echo "true"; else : echo "false"; endif; ?>,
			showCarousel: false,
			fadeDuration: <?php echo $params->get('duration',500); ?>,
			delay: <?php echo $params->get('delay',5000); ?>
		});
	}
	window.addEvent('domready',startSlideshow<?php echo $module->id; ?>);
</script>
<div style="display: none;"><a href="http://www.zootemplate.com" title="Joomla Templates">Joomla Templates</a> and Joomla Extensions by zootemplate.Com</div>
<div id="mySlideshow<?php echo $module->id; ?>">
<?php foreach($slides as $slide) :?>
<div class="imageElement">
	<h3><?php if($params->get('showtitle')) : echo $slide->title; else : echo ""; endif; ?></h3>
	<p><?php if($params->get('showdescription')) : echo $slide->description; else : echo ""; endif; ?></p>
	<a href="<?php echo $slide->link; ?>" class="open" target="<?php if($params->get('newwindow')) : echo "_blank"; else :  echo ""; endif; ?>" title="<?php echo $slide->title; ?>"></a>
	<img src="<?php echo $slide->path; ?>" class="full" alt="<?php echo $slide->title; ?>" />
	<img src="<?php echo $slide->path; ?>" class="thumbnail" width="100" height="100" alt="<?php echo $slide->title; ?>" />
</div>
<?php endforeach; ?>
</div>