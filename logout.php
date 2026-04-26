<?php
session_start();
session_unset();
session_destroy();

header("Location: projeto.php?p=home");
exit;