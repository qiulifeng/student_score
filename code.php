<?php
 header("Content-type:image/jpeg");
 $img = imagecreate(80,40);
 imagecolorallocate($img,0,0,0);
 $w = imagecolorallocate($img,255,255,255); 
    $num = rand(1000,9999);
    session_start();
    $_SESSION['yz'] = $num;
  imagestring($img,5,10,10,$num,$w);
   imagejpeg($img);
   imagedestroy($img);


?>