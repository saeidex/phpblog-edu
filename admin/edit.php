<?php
$id = $_GET['id'];
if ($id) {
  include_once "config.php";
  $sqlEdit = "SELECT title, summary, content FROM posts WHERE id = $id";
  $result = mysqli_query($con, $sqlEdit);
  $data = mysqli_fetch_assoc($result);
  if ($data) {
    $title = $data['title'];
    $summary = $data['summary'];
    $content = $data['content'];
  } else {
    header("Location: ../pages/404.php");
    exit;
  }
} else {
  header("Location: ../pages/404.php");
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
  if (isBangla($summary)) {
    include_once "../components/style-title_summary_content.html";
  }
  ?>
  <title>Edit Post</title>
</head>

<body>
  <?php
  include_once "../components/header-admin.php";
  ?>
  <main class="content-in section">
    <h1>Edit Post</h1>
    <form action="edit.php?id=<?php echo $id ?>" method="post">
      <label for="title">Title</label>
      <input class="title" name="title" type="text" value="<?php echo $title ?>" required>
      <label for="summary">Summary</label>
      <textarea class="summary" name="summary" rows="2" type="text" required><?php echo $summary ?></textarea>
      <label for="content">Content</label>
      <textarea class="content" name="content" rows="5" type="textarea" required><?php echo $content ?></textarea>
      <input type="submit" name="update" value="update">
    </form>
  </main>
</body>

</html>

<?php
include_once "config.php";

if (isset($_POST['update'])) {
  $title = $_POST['title'];
  $summary = $_POST['summary'];
  $content = $_POST['content'];

  $sqlUpdate = "UPDATE posts SET title = '$title', summary = '$summary', content = '$content' WHERE id = $id;";
  $result = mysqli_query($con, $sqlUpdate);
  if ($result) {
    session_start();
    $_SESSION["update"] = "Updated Successfully!";
    header("Location: /admin");
    exit;
  } else {
    die("Data is not inserted!");
  }
}

// $this_page_url = "$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
