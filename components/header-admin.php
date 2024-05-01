<header class="section">
  <a class="logo" href="/phpblog/admin/">
    <?php
    $req_uri = $_SERVER['REQUEST_URI'];
    if ($req_uri != "/phpblog/admin/" && $req_uri != "/phpblog/admin/index.php") {
      echo "<i class=\"ri-arrow-left-s-line\"></i>Back";
    } else {
      echo "Dashboard";
    }
    ?>
  </a>
  <a class="social-links" href="/phpblog/admin/logout.php">
    <i class="ri-logout-circle-fill"></i>
    <h3>LogOut</h3>
  </a>
</header>
