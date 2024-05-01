<?php
$id = $_GET["id"];
if ($id) {
  include_once "connect.php";
  $sqlDelete = "DELETE FROM posts WHERE id = $id";
  if (mysqli_query($con, $sqlDelete)) {
    session_start();
    $_SESSION["delete"] = "Deleted successfully";
    header("Location:index.php");
    exit;
  } else {
    die("Something is not right. Data is not deleted");
  }
} else {
  echo "Post not found";
}
