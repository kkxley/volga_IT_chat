<?php
    require_once "./head.php";
?>
    <div class="container main-block d-flex justify-content-center align-items-center">
        <div class="border p-3 rounded">
            <form action="chat_list.php" method="post">
              <div class="form-group">
                <label for="nameUser">Имя пользователя</label>
                <input type="text" class="form-control" id="nameUser"  name="login" required>
              </div>
              <input type="hidden" name="newchat" value="true">
              <button type="submit" class="btn btn-dark float-right">Начать чат</button>
            </form>
        </div>
    </div>
<?php
    require_once "./footer.php";
?>
