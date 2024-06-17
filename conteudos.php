<?php
 include_once 'conexao.php';

 $conteudosid = $_GET['id'];
 $tiposdeterapiaid = $_GET['id'];
 $psiconocotidianoid = $_GET['id'];
 $porquedevemosfazerid = $_GET['id'];
 $comoasociedadeid = $_GET['id'];

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
    <h2><?php echo $row['tiposid'];?><?php echo $row ['titulotop'];?></a></h2>
    <p><?php echo  $row['tiposid'];?><?php echo $row ['texto'];?></a></p>
    <img><?php echo  $row['tiposid'];?><?php echo $row ['img'];?></a></img>

  </div>

  <?php>
  $sql= "SELECT * FROM psiconocotidiano WHERE psicoid =$psiconocotidianoid";
  $result = mysqli_query($conexao, $sql);
  $row = mysqli_fetch_array($result);
 ?>
  <div class= "body">
    <h2><?php echo $row['psicoid'];?><?php echo $row ['titulotop'];?></a></h2>
    <p><?php echo  $row['psicoid'];?><?php echo $row ['texto'];?></a></p>
    <img><?php echo  $row['psicoid'];?><?php echo $row ['img'];?></a></img>
  </div>

  <?php>
  $sql= "SELECT * FROM porquedevemosfazer WHERE porqueid =$porquedevemosfazerid";
  $result = mysqli_query($conexao, $sql);
  $row = mysqli_fetch_array($result);
 ?>
  <div class= "body">
    <h2><?php echo $row['porqueid'];?><?php echo $row ['titulotop'];?></a></h2>
    <p><?php echo  $row['porqueid'];?><?php echo $row ['texto'];?></a></p>
    <img><?php echo  $row['porqueid'];?><?php echo $row ['img'];?></a></img>
  </div>

  <?php>
  $sql= "SELECT * FROM comoasociedade WHERE comoid =$comoasociedadeid";
  $result = mysqli_query($conexao, $sql);
  $row = mysqli_fetch_array($result);
 ?>
  <div class= "body">
    <h2><?php echo $row['comoid'];?><?php echo $row ['titulotop'];?></a></h2>
    <p><?php echo  $row['comoid'];?><?php echo $row ['texto'];?></a></p>
    <img><?php echo  $row['comoid'];?><?php echo $row ['img'];?></a></img>
  </div>

  <?php>
  $sql= "SELECT * FROM duvidas WHERE comoid =$duvidasid";
  $result = mysqli_query($conexao, $sql);
  $row = mysqli_fetch_array($result);
 ?>
  <div class= "body">
    <h2><?php echo $row['duvidasid'];?><?php echo $row ['titulotop'];?></a></h2>
    <p><?php echo  $row['duvidasid'];?><?php echo $row ['texto'];?></a></p>
    <img><?php echo  $row['duvidasd'];?><?php echo $row ['img'];?></a></img>
  </div>

  
  
  <?php