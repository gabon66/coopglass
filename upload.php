<?php


include('upload/src/class.upload.php');



// set variables
$dir_dest = (isset($_GET['dir']) ? $_GET['dir'] : 'tmp');
$dir_pics = (isset($_GET['pics']) ? $_GET['pics'] : $dir_dest);


$foo = new Upload($_FILES['image']);
if ($foo->uploaded) {
    // save uploaded image with no changes
    $foo->Process('images/examples/');
    if ($foo->processed) {
        echo 'original image copied';
    } else {
        echo 'error : ' . $foo->error;
    }
    // save uploaded image with a new name
    $foo->file_new_name_body = 'foo';
    $foo->Process('images/examples/');
    if ($foo->processed) {
        echo 'image renamed "foo" copied';
    } else {
        echo 'error : ' . $foo->error;
    }
    // save uploaded image with a new name,
    // resized to 100px wide
    $foo->file_new_name_body = 'image_resized';
    $foo->image_resize = true;
    $foo->image_x = 500;
    $foo->image_y = 500;
    $foo->Process('images/examples/');
    if ($foo->processed) {
        echo 'image renamed, resized x=500
           and converted to GIF';
        $foo->Clean();
    } else {
        echo 'error : ' . $foo->error;
    }
    var_dump($foo);
}
?>
<html>
<body>

<form action="" method="POST" enctype="multipart/form-data">
    <input type="file" name="image" />
    <input type="submit"/>
</form>

</body>
</html>