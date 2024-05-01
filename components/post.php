<?php
function post($id, $title, $summary)
{
  // include_once "/phpblog/admin/config.php";
?>

  <a class="post" href="/phpblog/pages/blog.php?id=<?php echo $id ?>">
    <div class="img-wrapper"></div>
    <h2 <?php if (isBangla($summary)) echoSingleClass('title'); ?>><?php echo $title ?></h2>
    <p <?php if (isBangla($summary)) echoSingleClass('summary'); ?>><?php echo $summary ?></p>
  </a>

<?php
}
?>
