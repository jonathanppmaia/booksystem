<?php
    include_once 'conexao.php';
    include_once 'funcoes.php';

    
    #Deletando dados de Alunos
    $res = delete("alunos", array("id_aluno"=>$_POST['id_aluno']));
    
    if($res){
        header("location: ../aluno_consulta.php");
    }else{
        header("location: ../aluno_consulta.php?erro=erro ao deletar");
    }
?>