<?php
header("Content-Type: text/html; chartset=utf-8");

//引入判斷是否登入機制
require_once('../../checkSession.php');

//引用資料庫連線
require_once('../../db.inc.php');

//SQL 敘述
$sql = "INSERT INTO `users` 
        (`username`, `pwd`, `name`, `gender`, `userlogo`, `phoneNumber`, `card`,`birthday`,`address`,`isActivated`) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?)";

if( $_FILES["userlogo"]["error"] === 0 ) {
    //為上傳檔案命名
    $studentImg = date("YmdHis");//時間
    
    //找出副檔名
    $extension = pathinfo($_FILES["userlogo"]["name"], PATHINFO_EXTENSION);

    //建立完整名稱
    $imgFileName = $studentImg.".".$extension;

    //若上傳成功，則將上傳檔案從暫存資料夾，移動到指定的資料夾或路徑
    if( !move_uploaded_file($_FILES["userlogo"]["tmp_name"], "./files/".$imgFileName) ) {
        header("Refresh: 3; url=./alice_seller_index.php");
        echo "圖片上傳失敗";
        exit();
    }
    //繫結用陣列
    $arr = [
        $_POST['username'],
        $_POST['pwd'],
        $_POST['name'],
        $_POST['gender'],
        $imgFileName,
        $_POST['phoneNumber'],
        $_POST['card'],
        $_POST['birthday'],
        $_POST['address'],
        $_POST['isActivated']
    ];
    
    $pdo_stmt = $pdo->prepare($sql);
    $pdo_stmt->execute($arr);
    // print_r($sql);
    // exit();
    if($pdo_stmt->rowCount() === 1) {
        header("Refresh: 1; url=./alice_seller_index.php");
        echo "新增成功";
    } else {
        header("Refresh: 1; url=./alice_seller_index.php");
        echo "新增失敗";
    }
}else{
    header("Refresh: 1; url=./alice_seller_index.php");
        echo "請夾帶圖片";
}

