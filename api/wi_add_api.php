<?php
header("Content-Type: text/html; chartset=utf-8");
require_once('../checkSession.php');
require_once('../db.inc.php');

// echo "<pre>";
// print_r($_POST);
// exit();

//回傳狀態
$objResponse = [];

if( $_FILES["itemImg"]["error"] === 0 ) {
    //為上傳檔案命名
    $strDatetime = "item_".date("YmdHis");
        
    //找出副檔名
    $extension = pathinfo($_FILES["itemImg"]["name"], PATHINFO_EXTENSION);

    //建立完整名稱
    $itemImg = $strDatetime.".".$extension;

    //若上傳失敗，則回報錯誤訊息
    if( move_uploaded_file($_FILES["itemImg"]["tmp_name"], "../asset/file_img/{$itemImg}") ) {
        // echo "<hr>";
        // echo "<pre>";
        // print_r($_FILES);
    } else {
        $objResponse['success'] = false;
        $objResponse['code'] = 500;
        $objResponse['info'] = "上傳圖片失敗";
        echo json_encode($objResponse, JSON_UNESCAPED_UNICODE);
        exit();
    }
} else {
    $itemImg = "";
}
// exit();

if($_POST['colorid'] == NULL){
    $_POST['colorid'] = "9";
};

//SQL 敘述
$sql = "INSERT INTO `items` (`itemName`, `itemImg`, `colorid`, `itemsbrand`, `itemstype`, `itemPrice`, `itemQty`, `itemscontent`, `itemstoreNumber`)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
//繫結用陣列
$arrParam = [
    $_POST['itemName'],
    $itemImg,
    (int)$_POST['colorid'],
    $_POST['itemsbrand'],
    $_POST['itemstype'],
    $_POST['itemPrice'],
    $_POST['itemQty'],
    $_POST['itemscontent'],
    $_POST['sellersId']
];

// echo "<pre>";   
// print_r($arrParam);
// exit();

$stmt = $pdo->prepare($sql);
$stmt->execute($arrParam);

// echo "<pre>";   
// print_r($stmt->rowCount());

if($stmt->rowCount() > 0) {
    header("Refresh: 1; url=../page/wi/wi_items_index.php");
    $objResponse['success'] = true;
    $objResponse['code'] = 200;
    $objResponse['info'] = "新增成功";
    echo json_encode($objResponse, JSON_UNESCAPED_UNICODE);
    exit();
} else {
    header("Refresh: 1; url=../page/wi/wi_items_index.php");
    $objResponse['success'] = false;
    $objResponse['code'] = 500;
    $objResponse['info'] = "沒有新增資料";
    echo json_encode($objResponse, JSON_UNESCAPED_UNICODE);
    exit();
}