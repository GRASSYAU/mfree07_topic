<!--  以下為點擊出現的畫面  -->
    <!-- 增加 -->
    <div id="addEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form method="POST" action="./alice_seller_insert_api.php" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h4 class="modal-title">新增賣家</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Username / 使用者名稱</label>
                            <input type="text" name="username" id="username" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label >Password / 使用者密碼</label>
                            <input type="text" name="pwd" id="pwd" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Name / 姓名</label>
                            <input type="text" name="name" id="name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>gender / 性別</label>
                            <select name="gender" id="gender" class="form-control">
                                    <option value="1" class="form-control" selected>男</option>
                                    <option value="2" class="form-control">女</option>
                            </select>
                        </div>
                        <div class="form-group">
                        <label>Image / 使用者頭像</label>
                        <input type="file" name="userlogo" class="form-control" required>
                        </div>
                        <div class="form-group">
                        <label>Phone / 手機號碼</label>
                        <input type="text" name="phoneNumber" id="phoneNumber" value="" maxlength="10" class="form-control" required>
                        </div>
                        <!-- <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required>
                        </div> -->
                        <div class="form-group">
                        <label>Card / 信用卡號碼</label>
                        <input type="text" name="card" id="card" value="" class="form-control" required>
                        </div>
                        <div class="form-group">
                        <label>Birthday / 出生年月日</label>
                        <input type="date" name="birthday" value="" class="form-control" required>
                        </div>
                        <div class="form-group">
                        <label>Address / 地址</label>
                        <input type="text" name="address" id="address" value="" maxlength="50" class="form-control" required></ㄛ>
                        </div>
                        <div class="form-group">
                        <label>isActivated / 賣家開通狀態</label>
                        <select name="isActivated" class="form-control">
                            <option value="0" class="form-control" selected>未開通</option>
                            <option value="1"class="form-control">開通</option>
                        </select>
                        </div>
                        <div class="form-group">
                        <label>shopopen / 賣場開通狀態</label>
                        <select name="shopopen" class="form-control">
                            <option value="0" class="form-control" selected>未開通</option>
                            <option value="1"class="form-control">開通</option>
                        </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-success" value="Add">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- 修改 -->
    <div id="editEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form name="updateForm" enctype="multipart/form-data" method="POST" action="./alice_seller_updateEdit_api.php">
                    <div class="modal-header">
                        <h4 class="modal-title">編輯</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label>Username / 使用者名稱</label>
                            <input type="text" class="form-control" readonly="readonly" required name="username_e" id="username_e" value="" placeholder="使用者名稱">
                        </div>
                        <div class="form-group">
                            <label>Password / 使用者密碼</label>
                            <input type="text" class="form-control" required name="pwd_e" id="pwd_e" value="" placeholder="使用者密碼">
                        </div>
                        <div class="form-group">
                            <label>Name / 姓名</label>
                            <input type="text" class="form-control" required name="name_e" id="name_e" value="" placeholder="姓名">
                        </div>
                        <div class="form-group">
                            <label>gender / 性別</label>
                            <select name="gender_e" class="form-control">
                                <option value="1" class="gender_e" id="gender_man">男</option>
                                <option value="2" class="gender_e" id="gender_girl">女</option>
                            </select>
                        </div> 
                        <div class="form-group">
                            <label>Image / 使用者頭像</label>
                            <img id="sellerImg_d_img" src=""/>
                            <input type="file" class="form-control" name="userlogo_e" value="" placeholder="會員圖片" id="userlogo_e">
                        </div>
                        <div class="form-group">
                            <label>Phone / 手機號碼</label>
                            <input type="text" class="form-control" required name="phoneNumber_e" id="phoneNumber_e" value="" placeholder="電話">
                        </div>
                        <div class="form-group">
                            <label>Card / 信用卡號碼</label>
                            <input type="text" class="form-control" required name="card_e" id="card_e" value="" placeholder="信用卡">
                        </div>
                        <div class="form-group">
                            <label>Birthday / 出生年月日</label>
                            <input type="date" class="form-control" required name="birthday_e" id="birthday_e" value="" placeholder="出生年月日">
                        </div>
                        <div class="form-group">
                            <label>Address / 地址</label>
                            <input type="text" class="form-control" required name="address_e" id="address_e" value="" placeholder="地址">
                        </div>
                        <div class="form-group">
                            <label>isActivated / 賣家開通狀態</label>
                            <select name="isActivated_e" class="form-control">
                            <option value="0" class="form-control isActivated">未開通</option>
                            <option value="1" class="form-control isActivated" selected>開通</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>shopopen / 賣場開通狀態</label>
                            <select name="shopopen_e" class="form-control">
                            <option value="0" class="form-control shopopen" selected>未開通</option>
                            <option value="1" class="form-control shopopen">開通</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-info" id="btn_submit" value="Save">
                    </div>
                    <input type="hidden" name="sellerId_input" id="sellerId_input" value="">
                </form>
            </div>
        </div>
    </div>

    <!-- 刪除 -->
    <div id="deleteEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form name="deleteForm" method="POST" action="./alice_seller_delete_api.php" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h4 class="modal-title">刪除 ?</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>您確定要刪除這些記錄嗎 ？</p>
                        <p class="text-warning"><small>此操作無法取消</small></p>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-danger" value="Delete">
                    </div>
                    <input type="hidden" name="input_delete_sellerid" id="input_delete_sellerid" value="">
                </form>
            </div>
        </div>
    </div>

    <!-- 刪除 全部 -->
    <div id="deleteEmployeeModal_all" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form name="deleteAllForm" method="POST" action="./alice_seller_delete_all_api.php" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h4 class="modal-title">刪除所有選擇 ?</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>您確定要刪除這些記錄嗎 ？</p>
                        <p class="text-warning"><small>此操作無法取消</small></p>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-danger" value="Delete">
                    </div>
                    <input type="hidden" name="sellerinput_delete_all_id[]" id="sellerinput_delete_all_id" value="">
                </form>
            </div>
        </div>
    </div>