<?php
// function alert($param)
// {
//   if (isset($_SESSION["$param"])) {
//     echo "<div class=\"section\">" . $_SESSION["$param"] . "</div>";
//     unset($_SESSION["$param"]);
//   }
// }

//* Check: user logged in or not
session_start();
$user = isset($_SESSION["user"]) ? $_SESSION["user"] : null;

if ($user != "admin") {
  header("location: login.php");
  exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../styles/index.css">
  <?php
  include_once "../components/style-title_summary_content.html";
  ?>
  <title>Manange Blogs</title>
</head>

<body>
  <?php
  include_once "../components/header-admin.php";
  ?>
  <main class="section">
    <section class="new-post">
      <a href="/phpblog/admin/create.php" class="create-post">
        <i class="ri-add-circle-fill"></i>
        <span>add post</span>
      </a>
    </section>
    <div class="posts">
      <h1>Past Posts</h1>
      <?php
      include_once "../components/post-admin.php";

      include_once "config.php";
      $sqlSelect = "SELECT id, title, summary FROM posts ORDER BY id DESC";
      $result = mysqli_query($con, $sqlSelect);

      while ($data = mysqli_fetch_array($result)) {
        $id = $data["id"];
        $title = $data["title"];
        $summary = $data["summary"];
        post($id, $title, $summary);
      }
      ?>
    </div>
  </main>
  <?php
  include_once "../components/footer.php";
  ?>
</body>

</html>
