<?php 
/******************************************************
 * @package Pav Megamenu module for Opencart 1.5.x
 * @version 1.0
 * @author http://www.pavothemes.com
 * @copyright	Copyright (C) Feb 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license		GNU General Public License version 2
*******************************************************/
?>
<?php if( count($modules) ) : ?>
<div class="content-top">

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
				
	<?php foreach ($modules as $module) { ?>
		<?php echo $module; ?>
	<?php } ?>
</div>
<?php endif; ?>