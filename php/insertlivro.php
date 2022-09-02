<?php
    include_once 'conexao.php';
    include_once 'funcoes.php';
  
    #Inserindo os dados no banco
    $res = insert("livros", $_POST);
    
    if($res){
        header("location: ../livro_consulta.php");
    }else{
        header("location: ../livro_consulta.php?erro=erro no cadastro do livro");
    }
?>