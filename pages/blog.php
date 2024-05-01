<?php
session_start();
if (isset($_SESSION['user'])) {
  $commentauthor = "Admin";
} else {
  $commentauthor = "Unknown User";
}
include_once "../admin/config.php";

$id = $_GET['id'];
$sqlselect = "SELECT comments.content AS content,
comments.author AS author,
comments.commentdate AS commentdate,
posts.id AS id,
posts.title AS title,
posts.summary AS summary,
posts.content AS content
FROM phpblogsite.comments
INNER JOIN phpblogsite.posts ON comments.postid = posts.id
WHERE posts.id = 13
AND comments.postid = 13
ORDER BY comments.id DESC
";
if ($id) {
  $sqlSelect = "SELECT title, postdate, summary, content FROM posts Where id=$id;";
  $result = mysqli_query($con, $sqlSelect);
  $data = mysqli_fetch_assoc($result);

  if ($data) {
    $title = $data['title'];
    $postdate = $data['postdate'];
    $summary = $data['summary'];
    $content = $data['content'];
  } else {
    header("Location: 404.php");
    exit;
  }

  $selectcomments = "SELECT content, author, commentdate FROM comments WHERE postid=$id ORDER BY id DESC";
  $resultselectcomments = mysqli_query($con, $selectcomments);
} else {
  header("Location: 404.php");
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
  <title><?php echo $title ?></title>
</head>

<body>
  <?php
  include_once "../components/header.php";
  ?>
  <main class="section">
    <section class="title-section">
      <p class="postdate">
        <span>
          <?php
          // echo "<span class=\"highlighted\">"
          //   . substr($postdate, 0, 4)
          //   . "</span><span>"
          //   . substr($postdate, 4)
          //   . "</span>";
          echo formatTimeInterval__ago($postdate);
          ?>
        </span>
      </p>
      <h1 class="title"><?php echo $title ?></h1>
      <hr>
    </section>
    <section class="blog">
      <div class="content-wrapper">
        <h3 class="summary"><?php echo $summary ?></h3>
        <p class="content"><?php echo $content ?></p>
      </div>
      <aside class="comments-wrapper">
        <div class="comments">
          <form class="comment-box" method="post">
            <input type="text" name="comment-content" placeholder="Write your throuths..." required>
            <input type="submit" name="add-comment" value="Add Comment">
            <?php
            $today = new DateTime();
            $commenttime = $today->format('Y-m-d H:i:s');
            if (isset($_POST['add-comment'])) {
              $commentcontent = isset($_POST['comment-content']) ? $_POST['comment-content'] : null;
              $commentcontent = mysqli_real_escape_string($con, $commentcontent);

              $sqlinsertcomment = "INSERT INTO comments(postid, content, author, commentdate) VALUES($id, '$commentcontent', '$commentauthor', '$commenttime')";
              mysqli_query($con, $sqlinsertcomment);
            }
            ?>
          </form>
          <div class="all-comments">
            <h3 class="all-comments--title">All Comments</h3>
            <i onclick="window.location.href='<?php $_SERVER['REQUEST_URI'] ?>'" class="ri-refresh-line"></i>
            <div class="all-comments--display">
              <?php
              if (mysqli_num_rows($resultselectcomments) == 0) {
                echo "No comments!";
              } else {
                while ($comments = mysqli_fetch_assoc($resultselectcomments)) {
                  $commentdate = $comments['commentdate'];
                  $commentperiod = formatTimeInterval__ago($commentdate);
              ?>
                  <div class="comment">
                    <div class="user">
                      <i class="ri-message-3-line"></i>
                      <div class="user--details">
                        <h3><?php echo $comments['author'] ?></h3>
                        <span><?php echo $commentperiod ?></span>
                      </div>
                    </div>
                    <div class="comment--content">
                      <span><?php echo $comments['content'] ?></span>
                    </div>
                  </div>
              <?php
                }
              }
              ?>

            </div>
          </div>
        </div>
      </aside>
    </section>
  </main>
  <?php
  include_once "../components/footer.php";
  ?>
</body>

</html>
