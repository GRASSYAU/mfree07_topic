<?php
//引入判斷是否登入機制
require_once('../checkSession.php');

//引用資料庫連線
require_once('../db.inc.php');

// echo "<pre>";
// print_r($_FILES);
// print_r($_POST);
// echo "</pre>";
// exit();

// 先對其它欄位，進行 SQL 語法字串連接
$sql = "UPDATE `stores`, `users`
        SET 
        `stores`.`storeName` = ?,
        `stores`.`storeItemsId` = ?,
        `users`.`shopopen` = ?,
        `stores`.`storeDescription` = ?";

// 先對其它欄位進行資料繫結設定
$arrParam = [
    $_POST['yyeditName'],
    $_POST['yyeditIdSelect'],
    $_POST['isActivated'],
    $_POST['yyeditIdcontent']
];

// echo "<pre>";
// print_r($arrParam);
// exit();

//判斷檔案上傳是否正常，error = 0 為正常
if( $_FILES["storeImg_d"]["error"] === 0 ) {
    //為上傳檔案命名
    $strDatetime = date("YmdHis");
        
    //找出图片名称 & 副檔名 （皮卡丘.gif）
    $extension = pathinfo($_FILES["storeImg_d"]["name"], PATHINFO_BASENAME); // PATHINFO_EXTENSION 只有附档名 (.jpg)
                                                                             // PATHINFO_BASENAME  全部 (apple.jpg)
    // ******
    // echo "William 测试：";
    // print_r($extension);
    // exit();

    //建立完整名稱
    $storeImg = $strDatetime."_".$extension;

    // ******
    // echo "William 测试：";
    // print_r($storeImg);
    // exit();

    //若上傳成功，則將上傳檔案從暫存資料夾，移動到指定的資料夾或路徑
    if( move_uploaded_file($_FILES["storeImg_d"]["tmp_name"], "../asset/file_img/".$storeImg) ) {

        $sqlGetImg = "SELECT `storeLogo` FROM `stores` WHERE `storeId` = ? ";
        $stmtGetImg = $pdo->prepare($sqlGetImg);

        //加入繫結陣列
        $arrGetImgParam = [
            (int)$_POST['itemId_input']
        ];

        // echo "itemId_input 测试：";
        // print_r($arrGetImgParam);
        // exit();

        //執行 SQL 語法
        $stmtGetImg->execute($arrGetImgParam);

        // print_r($stmtGetImg->rowCount()); //查询笔数
        // exit();

        //若有找到 storeImg 的資料
        if($stmtGetImg->rowCount() > 0) {
            //取得指定 id 的資料 (1筆)
            $arrImg = $stmtGetImg->fetchAll(PDO::FETCH_ASSOC)[0];
            //若是 storeImg 裡面不為空值，代表過去有上傳過
            if($arrImg['storeLogo'] !== NULL){
                // 刪除實體檔案
                // "@" 不管此栏位是不是 NULL,删除就对了!
                @unlink("../asset/file_img/".$arrImg['storeLogo']);
            } 

            $sql.= ",";
            $sql.= " `storeLogo` = ? ";

            //僅對 storeImg 進行資料繫結
            $arrParam[] = $storeImg; // 第一個問號答案
        }
    }
}

//SQL 結尾
$sql.= " WHERE `stores`.`storeId` = ? AND `users`.`id` = ?";
$arrParam[] = (int)$_POST['itemId_input'];  // 第二個問號答案
$arrParam[] = (int)$_POST['yyeditIdSelect'];  // 第二個問號答案
// https://segmentfault.com/q/1010000006883251 更新 雙表格

// echo "<pre>";
// print_r($_POST['itemId_input']);
// echo "<hr>";
// print_r($arrParam);
// echo "<hr>";
// print_r($sql);
// exit();

$stmt = $pdo->prepare($sql);
$stmt->execute($arrParam);

// echo "<pre>";
// print_r($_POST['itemId_input']);
// echo "<hr>";
// print_r($arrParam);
// echo "<hr>";
// print_r($stmt);
// echo "<hr>";
// print_r($stmt->rowCount());
// exit();


if( $stmt->rowCount() > 0 ){
    header("Refresh: 1; url=../page/yy/yy_items_index.php");
    echo "更新成功";
} else {
    header("Refresh: 1; url=../page/yy/yy_items_index.php");
    echo "沒有任何更新";
}