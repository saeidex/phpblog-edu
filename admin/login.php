<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../styles/index.css">
  <title>Login</title>
</head>

<body>
  <main class="login-main section bg-pattern">
    <form action="login.php" method="post">
      <h2>Login</h2>
      <input type="text" name="username" placeholder="Username">
      <input type="password" name="password" placeholder="Password">
      <input type="submit" value="Login" name="login">
    </form>
  </main>
</body>

</html>

<?php
if (isset($_POST['login'])) {
  $username = $_POST['username'];
  $password = $_POST['password'];
  if ($username == "admin" && $password == 123) {
    session_start();
    $_SESSION["user"] = "admin";
    header("Location: /phpblog/admin");
    exit;
  }
}
