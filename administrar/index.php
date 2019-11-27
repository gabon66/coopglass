<?php
include('../upload/src/class.upload.php');


//open connection to mysql db
$connection = mysqli_connect("localhost","root","root","coop_glass") or die("Error " . mysqli_error($connection));


//var_dump($_POST);

// set variables
$dir_dest = (isset($_GET['dir']) ? $_GET['dir'] : 'tmp');
$dir_pics = (isset($_GET['pics']) ? $_GET['pics'] : $dir_dest);


$foo = new Upload($_FILES['image']);


if ($foo->uploaded) {

    // save uploaded image with no changes
    $foo->Process('../images/');
    if ($foo->processed) {
        //echo 'original image copied';
    } else {
        //echo 'error : ' . $foo->error;
    }
    // save uploaded image with a new name
    $foo->file_new_name_body = 'foo';
    $foo->Process('../images/');
    if ($foo->processed) {
        //echo 'image renamed "foo" copied';
    } else {
        //echo 'error : ' . $foo->error;
    }
    // save uploaded image with a new name,


    $foo->file_new_name_body = 'image_coop_glass';
    $foo->image_resize = true;
    $foo->image_x = 500;
    $foo->image_y = 500;
    $foo->Process('../images/');
    if ($foo->processed) {
        //echo 'image renamed, resized x=500
        //  and converted to GIF';
        $foo->Clean();
    } else {
        //echo 'error : ' . $foo->error;
    }
    $image=$foo->file_dst_name;
    $sql = "INSERT INTO product(name,img,descript)VALUES('".$_POST['name']."','".$image."','".$_POST['descript']."')";
    $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));
}
?>

<!DOCTYPE html>
<html lang="es" ng-app="App">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CoopGlass</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/boostrap_custom.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/shop-homepage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>


<div class="container" ng-controller="ListAdminController">



    <div class="jumbotron">
        <form action="index.php" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="exampleInputEmail1">Nombre</label>
                <input type="text" name="name" class="form-control" id="name" placeholder="Nombre">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Descripcion</label>
                <input type="text" name="descript" class="form-control" id="descript" placeholder="Descripcion">
            </div>
            <div class="form-group">
                <label for="exampleInputFile">Foto Producto</label>
                <input type="file" name="image" id="file">
            </div>
            <button type="submit" class="btn btn-success" >Guardar</button>
        </form>


    </div>




    <div class="jumbotron">
        <p>Listado de productos :</p>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>Nombre</th>
                <th>Imagen</th>
                <th>Accion</th>
            </tr>
            </thead>
            <tbody>
            <tr ng-repeat="product in products ">
                <td>{{ $index }}</td>
                <td>{{ product.name}}</td>
                <td>{{ product.img}}</td>
                <td><button type="button" class="btn btn-danger" ng-click="delete(product.id)">Eliminar</button>
                    <button type="button" class="btn btn-success" ng-click="openModal(product)">Ver / Editar</button>
                </td>
            </tr>
            </tbody>
        </table>


    </div>

    <script type="text/ng-template" id="modal_product">
        <div class="modal-header">
            <div class="col-xs-4">
                <input type="text" name="descript" ng-model="name" class="form-control" id="nombre" placeholder="Nombre">
            </div>
            <div class="col-xs-8">
                <input type="text" name="descript" ng-model="descript" class="form-control" id="descript" placeholder="Descripcion">
            </div>
        </div>

        <div class="modal-body"  align="center">
            <div class="jumbotron">
                <img ng-src="../images/{{ img }}" style="width: 300px ;height:300px;" class="img-thumbnail"  alt="">
            </div>
        </div>

        <div class="modal-footer">
            <button class="btn btn-success" ng-click="save()">Guardar</button>
            <button class="btn btn-primary" ng-click="close()">Cerrar</button>
        </div>
    </script>

    <script type="text/ng-template" id="modal_product_new">
        <div class="modal-header">
            <h3 class="modal-title">Nuevo producto</h3>
        </div>

        <div class="modal-body"  align="center">
            <div class="jumbotron">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nombre</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Nombre">
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">Foto Producto</label>
                    <input type="file" id="exampleInputFile">
                </div>
            </div>
        </div>

        <div class="modal-footer">
            <button class="btn btn-primary" ng-click="saveNew()">Guardar</button>
            <button class="btn btn-primary" ng-click="close()">Cerrar</button>
        </div>
    </script>



</div>


</body>
<script src="../js/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular-animate.js"></script>
<script src="../js/ui-bootstrap-tpls-1.2.2.min.js"></script>
<script src="../js/app.js"></script>
</html>