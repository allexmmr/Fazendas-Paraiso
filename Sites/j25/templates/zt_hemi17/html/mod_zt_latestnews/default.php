<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 
$i = 0;
$count_list = count($list);
?>
<div class="latestnews" style="width:100%">
<?php foreach ($list as $item) :  ?>
	<?php $i++; ?>
	<?php if($i == $count_list) : ?>
	<div class="latestnewsitems last-item" style="width:<?php echo $item->width; ?>%">
	<?php else : ?>
	<div class="latestnewsitems" style="width:<?php echo $item->width; ?>%">
	<?php endif; ?>	
		<?php if($params->get('thumb')==1 && $item->thumb) : ?>
		<img src="<?php echo $item->thumb; ?>" border="0" alt="<?php echo $item->title; ?>" />
		<?php endif; ?>
		<?php if($params->get('showtitle')==1) : ?>
		<h4><a href="<?php echo $item->link; ?>" class="latestnews<?php echo $params->get('moduleclass_sfx'); ?>"><?php echo $item->title; ?></a></h4>
		<?php endif; ?>
		<?php if($params->get('showintro')==1) echo '<p>'.$item->introtext.'</p>'; ?>
		<?php if($params->get('showdate')==1) : ?>
		<p class="latestnewsdate"><?php echo $item->date; ?></p>
		<?php endif; ?>
		<?php if($params->get('readmore')==1) : ?>
			<a href="<?php echo $item->link; ?>" class="readmore"><span><?php echo JText::sprintf('Read more'); ?></span></a>
			<?php endif; ?>
	</div>
<?php endforeach; ?>
</div>
<div style="display: none;"><a href="http://www.zootemplate.com" title="Joomla Templates">Joomla Templates</a> and Joomla Extensions by ZooTemplate.Com</div>