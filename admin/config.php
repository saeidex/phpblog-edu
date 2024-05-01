<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = null;
$dbname = "phpblog";

$con = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
if (!$con) {
  die("Database Not Connected!");
}

// $this_page_url = "$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

//* utils
require_once '/xampp/htdocs/phpblog/lib/Text_LanguageDetect-1.0.0/Text/LanguageDetect.php';
function isBangla(string $param)
{
  $ld = new Text_LanguageDetect();
  $language = $ld->detectSimple($param);
  if ($language == "bengali") return true;
  return false;
}

function echoSingleClass(string $class)
{
  echo "class=\"$class\"";
}

function formatTimeInterval__ago(string $pastdate, string $currentdate = null): string
{
  $pastdate = new DateTime($pastdate);
  $currentdate = new DateTime($currentdate);
  $interval = $pastdate->diff($currentdate);

  $timeperiod = null;
  $interval->y != 0 && $timeperiod .= $interval->y . " years";
  $interval->m != 0 && $timeperiod .= $interval->m . " months";
  ($interval->d != 0 && $interval->y == 0 && $interval->m == 0) && $timeperiod .= $interval->d . " days";
  ($interval->h != 0 && $interval->y == 0 && $interval->m == 0 && $interval->d == 0) && $timeperiod .= $interval->h . " hours";
  ($interval->i != 0 && $interval->y == 0 && $interval->m == 0 && $interval->d == 0 && $interval->h == 0) && $timeperiod .= $interval->i . " minutes";
  ($interval->s != 0 && $interval->y == 0 && $interval->m == 0 && $interval->d == 0 && $interval->h == 0 && $interval->i == 0) && $timeperiod .= $interval->s . " seconds";
  $timeperiod .= " ago";

  return $timeperiod;
}
