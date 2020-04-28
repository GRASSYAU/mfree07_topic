<!--  以下為點擊出現的畫面  -->
    <!-- 增加 -->
    <div id="addEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form method="POST" action="./insert.php" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h4 class="modal-title">Add ?</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" name="username" id="username" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label >password</label>
                            <input type="text" name="pwd" id="pwd" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name" id="name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <select name="gender" id="gender" class="form-control">
                            <option value="男" class="form-control" selected>男</option>
                            <option value="女" class="form-control">女</option>
                        </div>
                        <div class="form-group">
                            <label>Image</label>
                            <input type="file" name="userlogo" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Phone</label>
                            <input type="text" name="phoneNumber" id="phoneNumber" value="" maxlength="10" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Card</label>
                            <input type="text" name="card" id="card" value="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Birthday</label>
                            <input type="date" name="birthday" value="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <textarea  name="address" id="address" value="" maxlength="50" class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <select name="isActivated" id="isActivated" class="form-control">
                            <option value="0" class="form-control" selected>未開通</option>
                            <option value="1" class="form-control">開通</option>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-success" value="新增">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- 修改 -->
    <!-- <div id="editEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
            <?php
    //SQL 敘述
        $sql = "SELECT `id`, `username`, `pwd`, `name`, `gender`,`userlogo`,
                        `phoneNumber`, `card`, `birthday`,`address`
            FROM `users` 
            WHERE `id` = ?";
    //設定繫結值
    $arrParam = [(int)$_GET['editId']];
    //查詢
    $stmt = $pdo->prepare($sql);
    $stmt->execute($arrParam);
        if($stmt->rowCount() > 0){
            $arr = $stmt->fetchAll(PDO::FETCH_ASSOC)[0];
        }
    ?>
                <form method="POST" action="./updateEdit.php">
                    <div class="modal-header">
                        <h4 class="modal-title">Edit ?</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <textarea class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Phone</label>
                            <input type="text" class="form-control" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-info" value="Save">
                    </div>
                </form>
                <input type="hidden" name="editId" value="<?php echo (int)$_GET['editId']; ?>">
            </div>
        </div>
    </div> -->

    <!-- 刪除 -->
    <div id="deleteEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form method="POST" action="./delete.php" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h4 class="modal-title">Delete ？</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure you want to delete these Records?</p>
                        <p class="text-warning"><small>This action cannot be undone.</small></p>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-danger" value="Delete">
                    </div>
                </form>
            </div>
        </div>
    </div>