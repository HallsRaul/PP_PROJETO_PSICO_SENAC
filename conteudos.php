<?php
 include_once 'conexao.php';

 $conteudosid = $_GET['id'];
?>
<?php>
  $sql= "SELECT * FROM conteudos WHERE conteudosid =$conteudosid";
  $result = mysqli_query($conexao, $sql);
  $result = mysql_query("SELECT * FROM tiposdeterapia");
  $row = mysqli_fetch_array($result);
 ?>
  <div class= "body">
    <h2><a href= "conteudos.php?id<?php echo $row['conteudosid'];?>"><?php echo $row ['titulo'];?></a></h2>
    <img href="conteudos.php?id<?php echo  $row['conteudosid'];?>"><?php echo $row ['img'];?></a></img>
    <p href= "conteudos.php?id<?php echo  $row['conteudosid'];?>"><?php echo $row ['texto'];?></a></p>
    <p> oi<?php echo $row['tiposid'];?><?php echo $row ['titulo'];?></p>
    
    
  </div>

  
  <?php