<?php 
/******************************************************
 * @package Pav Opencart Theme Framework for Opencart 1.5.x
 * @version 1.1
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Augus 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/

require( DIR_TEMPLATE.$this->config->get('config_template')."/template/common/config.tpl" );

?>
<?php echo $header; ?>

				<div class='row'>
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			    <li data-target="#myCarousel" data-slide-to="1"></li>
			    <li data-target="#myCarousel" data-slide-to="2"></li>
			    <li data-target="#myCarousel" data-slide-to="3"></li>
			  </ol>

			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			    <div class="item active">
			      <img src="image/data/banner/a1.jpg" class="img-responsive" alt="Chania">
			    </div>

			    <div class="item">
			      <img src="image/data/banner/a1.jpg" class="img-responsive" alt="Chania">
			    </div>

			    <div class="item">
			      <img src="image/data/banner/a3.jpg" class="img-responsive" alt="Flower">
			    </div>

			    <div class="item">
			      <img src="image/data/banner/a1.jpg" class="img-responsive" alt="Flower">
			    </div>
			  </div>

			  <!-- Left and right controls -->
			  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			    <i class="fa fa-angle-left fa-3x" aria-hidden="true"></i>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			    <i class="fa fa-angle-right fa-3x" aria-hidden="true"></i>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>
				
<div class="container">
<div class="row">

<?php if( $SPAN[0] ): ?>
	<aside class="col-lg-<?php echo $SPAN[0];?> col-md-<?php echo $SPAN[0];?> col-sm-12 col-xs-12">
		<?php echo $column_left; ?>
	</aside>
<?php endif; ?>
		
<section class="col-lg-<?php echo $SPAN[1];?> col-md-<?php echo $SPAN[1];?> col-sm-12 col-xs-12">         
	<div id="content">
		<?php echo $content_top; ?>
		<div style="display: none;"><?php echo $heading_title; ?></div>
		<?php echo $content_bottom; ?>
	</div>
</section>
	
<?php if( $SPAN[2] ): ?>
	<aside class="col-lg-<?php echo $SPAN[2];?> col-md-<?php echo $SPAN[2];?> col-sm-12 col-xs-12">	
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?>
</div></div>
	
<?php echo $footer; ?>