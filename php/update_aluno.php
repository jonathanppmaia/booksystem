<?php
    include_once 'conexao.php';
    include_once 'funcoes.php';

    #Atualizando os dados no banco
    $res = update("alunos", $_POST, array("id_aluno"=>$_POST['id_aluno']));
    
    if($res){
        header("location: ../aluno_consulta.php");
    }else{
        header("location: ../aluno_consulta.php?erro=erro na atualização");
    }
?>