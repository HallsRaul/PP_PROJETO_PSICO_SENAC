<?php
include_once 'conexao.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" type="image/x-icon" href="./img/icone.png">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.6.0/js/bootstrap.min.js"></script>
    <title>La Vitalle</title>
  </head>
  <body>
  
  <nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand naoSelecionavel" href="index.php">LA<span class="span-amarelo">V</span>ITALLE</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="index.php">Projeto e Dúvidas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="main.php">Conteúdos<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="preciso-de-ajuda.php">Preciso de ajuda</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Sobre</a>
        </li>
      </ul>
    </div>
  </nav>
    <main>
    <?php 
          $sql = "SELECT * FROM comoasociedade";
          // executa o comando SQL no banco e retornar os dados
          $result = mysqli_query( $conexao, $sql );     
          // laco de repeticao 
          while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){       
          ?>
          <div>
          <h5><?php echo $row['comoid'];?><?php echo $row['titulotop'];?></h5>
        <p class="text-justify ml-4 mt-5"><?php echo $row['comoid'];?><?php echo $row['texto'];?></p>

          </div>

       <?php
          }
          ?>
    </main>
</body>
</html>