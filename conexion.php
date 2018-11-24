<?php
function retornarConexion() {
  $con=mysqli_connect("localhost","root","1909","hibaloo");
  if(mysqli_connect_errno()){
    echo mysqli_connect_error();
    exit(0);
  }
  return $con;
}
?>