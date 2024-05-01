<?php
function post($id, $title, $summary)
{
?>

  <div class="post-admin">
    <div class="bg-overlay"></div>
    <div class="img-wrapper"></div>
    <div class="details">
      <h2 <?php
          if (isBangla($summary)) echoSingleClass('title'); ?>><?php echo $title ?></h2>
      <p <?php
          if (isBangla($summary)) echoSingleClass('summary'); ?>><?php echo $summary ?></p>
      <div class="actions">
        <a href="../pages/blog.php?id=<?php echo $id ?>" class="action-btn">
          <i class="ri-eye-fill"></i>
          <span>View</span>
        </a>
        <a href="../admin/edit.php?id=<?php echo $id ?>" class="edit-btn action-btn">
          <i class="ri-edit-box-fill"></i>
          <span>Edit</span>
        </a>

        <a href="../admin/delete.php?id=<?php echo $id ?>" class="action-btn delete-btn">
          <i class="ri-delete-bin-2-line"></i>
          <span>Delete</span>
        </a>

      </div>
    </div>
  </div>

<?php
}
?>
