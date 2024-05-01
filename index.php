<?php
include_once "components/post.php";
include_once "admin/config.php";

$sqlSelect = "SELECT id, title, summary FROM posts";
$result = mysqli_query($con, $sqlSelect);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="styles/index.css">
  <?php
  include_once "components/style-title_summary_content.html";
  ?>
  <title>Php blog | EbrahimKhalil</title>
</head>

<body>
  <?php
  include_once "components/header.php";
  ?>
  <main>
    <section class="hero section bg-pattern">
      <img src="public/EeeK-new.svg">
    </section>
    <section class="filter section">
      <!-- <label class="chip">
        <input type="checkbox" name="icpc" value="icpc">
        <span>ICPC</span>
      </label>
      <label class="chip">
        <input type="checkbox" name="php" value="php">
        <span>PHP</span>
      </label>
      <label href="#" class="chip">
        <input type="checkbox" checked>
        <span>All Posts</span>
      </label>
      <label class="chip">
        <input type="checkbox" name="C++" value="C++">
        <span>C++</span>
      </label>
      <label class="chip">
        <input type="checkbox" name="java" value="java">
        <span>Java</span>
      </label> -->
    </section>
    <section class="blogs section">
      <?php
      while ($data = mysqli_fetch_array($result)) {
        $id = $data["id"];
        $title = $data["title"];
        $summary = $data["summary"];

        post($id, $title, $summary);
      }
      ?>
    </section>
  </main>
  <?php
  include_once "components/footer.php";
  ?>
</body>

</html>
