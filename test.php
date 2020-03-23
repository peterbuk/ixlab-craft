

<?php 

file_put_contents("testFile", "test");
$user = fileowner("testFile");
unlink("testFile");

echo $user;
    print shell_exec( 'whoami' );

echo exec('whoami');

phpinfo();
?>