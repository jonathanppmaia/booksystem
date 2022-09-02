<?php
    include_once 'conexao.php';
    include_once 'funcoes.php';

    #Inserindo os dados no banco
    $res = insert("alunos", $_POST);
    
    if($res){
        header("location: ../aluno_consulta.php");
    }else{
        header("location: ../aluno_consulta.php?erro=erro no cadastro");
    }
?>