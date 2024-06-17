<?php
 include_once 'conexao.php';

 $conteudosid = $_GET['id'];
 $tiposdeterapia = $_GET['id'];
?>
<?php>
  $sql= "SELECT * FROM conteudos WHERE conteudosid =$conteudosid";
  $result = mysqli_query($conexao, $sql);
  $row = mysqli_fetch_array($result);
 ?>
  <div class= "body">
    <h2><?php echo $row['conteudosid'];?>"><?php echo $row ['titulo'];?></a></h2>
  </div>

  <?php>
  $sql= "SELECT * FROM tiposdeterapia WHERE tiposid =$tiposdeterapiaid";
  $result = mysqli_query($conexao, $sql);
  $row = mysqli_fetch_array($result);
 ?>
  <div class= "body">
    <h2><?php echo $row['tiposid'];?><?php echo $row ['titulo'];?></a></h2>
    <p><?php echo  $row['tiposid'];?><?php echo $row ['texto'];?></a></p>
    <img><?php echo  $row['tiposid'];?><?php echo $row ['img'];?></a></img>

  </div>

  
  <?php