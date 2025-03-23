<?php 
    include "../db_conn.php";

if(isset($_POST['fname']) && 
   isset($_POST['uname']) && 
   isset($_POST['pass']) &&
   isset($_POST['mail']) &&
   isset($_POST['adresse']) &&
   isset($_POST['sexe']) &&
   isset($_POST['pays']) &&
   isset($_POST['date'])){


    $fname = $_POST['fname'];
    $uname = $_POST['uname'];
    $mail = $_POST['mail'];
    $pass = $_POST['pass'];
    $adresse = $_POST['adresse'];
    $sexe = $_POST['sexe'];
    $pays = $_POST['pays'];
    $date = $_POST['date'];
    

    $data = "fname=".$fname."&uname=".$uname;
    
    if (empty($fname)) {
        $em = "Full name is required";
        header("Location: ../index.php?error=$em&$data");
        exit;
    } else if(empty($uname)){
        $em = "User name is required";
        header("Location: ../index.php?error=$em&$data");
        exit;
    } else if(empty($pass)){
        $em = "Password is required";
        header("Location: ../index.php?error=$em&$data");
        exit;
    } else {

        // hashing the password
        $pass = password_hash($pass, PASSWORD_DEFAULT);

        $sql = "INSERT INTO internautes (fname, username, mail, password, adresse, sexe, pays, date) 
                VALUES(?,?,?,?,?,?,?,?)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$fname, $uname, $mail, $pass, $adresse, $sexe, $pays, $date]);

        header("Location: ../index.php?success=Your account has been created successfully");
        exit;
    }


} else {
    header("Location: ../index.php?error=error");
    exit;
}
