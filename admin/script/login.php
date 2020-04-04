<?php

function login($username, $password) {
    // return sprintf('You are trying with username=>%s, password=>%s', $username, $password);
    $pdo = Database::getInstance()->getConnection();
    $check_exist_query = 'SELECT COUNT(*) FROM `tbl_users` WHERE user_name =:username';
    $user_set = $pdo->prepare($check_exist_query);
    $user_set -> execute(
        array(
            ':username'=>$username
        )
    );

    if($user_set->fetchColumn()>0){
        //Ckeck if match
        $check_match_query = 'SELECT * FROM `tbl_users` WHERE user_name =:username';
        $check_match_query .= ' AND user_pass=:password';
        $user_match = $pdo->prepare($check_match_query);
        $user_match -> execute(
            array(
                ':username'=>$username,
                ':password'=>$password
            )
        );        

        while($founduser = $user_match->fetch(PDO::FETCH_ASSOC)){
            $id = $founduser['user_id'];

            $_SESSION['user_id'] = $id;
            $_SESSION['user_name'] = $founduser['user_fname'];
        }

        if(isset($id)){
            redirect_to('index.php');
            return 'You logged in successfully!';
        } else {

            return 'Wrong pass';
        }
    } else {

        return 'User does not exist!';
    }
}

function confirm_logged_in(){
    if(!isset($_SESSION['user_id'])){
        redirect_to('admin_login.php');
    }
}

function logout(){
    session_destroy();
    redirect_to('admin_login.php');
}