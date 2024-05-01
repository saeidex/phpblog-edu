<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../styles/index.css">
  <style>
    .title,
    .summary,
    .content {
      font-family: "Hind Siliguri", system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif !important;
    }
  </style>
  <title>New Post</title>
</head>

<body>
  <?php
  include_once "../components/header-admin.php";
  ?>
  <main class="content-in section">
    <h1>New Post</h1>
    <form action="create.php" method="post">
      <label for="title">Title</label>
      <input class="title" name="title" type="text" required>
      <label for="summary">Summary</label>
      <textarea class="summary" name="summary" rows="2" type="text" required></textarea>
      <label for="content">Content</label>
      <textarea class="content" name="content" rows="5" type="textarea" required></textarea>
      <input type="submit" name="create" value="Upload">
    </form>
  </main>
</body>

</html>

<?php
include_once "config.php";

if (isset($_POST['create'])) {
  $title = $_POST['title'];
  $summary = $_POST['summary'];
  $content = $_POST['content'];

  $title = mysqli_real_escape_string($con, $title);
  $summary = mysqli_real_escape_string($con, $summary);
  $content = mysqli_real_escape_string($con, $content);

  $sqlInsert = "INSERT INTO posts(title, summary, content) VALUES('$title', '$summary', '$content');";
  $result = mysqli_query($con, $sqlInsert);
  if ($result) {
    session_start();
    $_SESSION["create"] = "Inserted Successfully!";
    header("Location: /phpblog/admin");
    exit;
  } else {
    die("Data is not inserted!");
  }
}
