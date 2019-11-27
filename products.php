<?php
//open connection to mysql db
$connection = mysqli_connect("localhost","gabo","gabo","COOP_GLASS") or die("Error " . mysqli_error($connection));







if($_GET["action"]=="list"){
    //fetch table rows from mysql db
    $sql = "select * from product";
    $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));

//create an array
    $emparray = array();
    while($row =mysqli_fetch_assoc($result))
    {
        $emparray[] = $row;
    }
    echo json_encode($emparray);

//close the db connection
    mysqli_close($connection);
}else{

    if($_GET["action"]=="update"){
        $postdata = file_get_contents("php://input");
        $request = json_decode($postdata);

        $sql = "update  product set name ='".$request->name. "' , descript = '".$request->descript."' where id =".$_GET["id"];

        $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));
    }else{
        //fetch table rows from mysql db
        $sql = "delete from product where id =".$_GET["id"];
        $result = mysqli_query($connection, $sql) or die("Error in Selecting " . mysqli_error($connection));

    }


  }

?>