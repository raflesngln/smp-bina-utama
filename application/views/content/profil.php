 <style>

.img-detail{
	height:200px;
	width:55%;
	margin-right:7px;
	float:left;
}

 </style> 
<div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div class="row">
      <?php
	foreach($list as $row){
	 ?>
     <p class="header"> <i class="fa fa-leaf"></i>  <b><?php echo $row->nm_profil;?></b></p>
  <img src="<?php echo base_url();?>assets/images/profile/<?php echo $row->gambar;?>" class="responsive-img img-detail">
  <p><?php echo $row->ket_profil;?></p>
     
      
  
  <?php } ?>
      </div>

    </div>
  </div>   