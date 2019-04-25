<?php
    require_once "./head.php";
    print_r();
    if (isset($_COOKIE['userlogin'.$_GET['key']])){
        $_SESSION[$_GET['key']]=$_COOKIE['userlogin'.$_GET['key']];
        header("Location: chat_list.php?key=".$_GET['key']);
    }
?>
    <div class="container main-block d-flex justify-content-center align-items-center">
        <div class="border p-3 rounded">
            <form action="chat_list.php" method="post">
              <div class="form-group">
                  <label for="nameUser">Имя пользователя</label>
                  <input type="text" class="form-control" id="nameUser"  name="login" required>
              </div>
              <input type="hidden" name="joinchat" value="<?php echo $_GET['key']; ?>">
              <button type="submit" class="btn btn-dark float-right">Присоединится к чату</button>
            </form>
        </div>
    </div>
<?php
    require_once "./footer.php";
?>
