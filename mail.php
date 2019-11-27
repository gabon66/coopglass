<?php
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

print_r($request);



$mensaje ='
<html>
<head>
  <title>Consulta por item  : '.$request->id.'</title>
</head>
<body>
  <h2>Consulta por item : '.$request->id.' desde la web</h2>
  <h3>Nombre :'.$request->name.'<h3>
  <p>Mail :'.$request->mail.'</p>
  <p>Telefono :'.$request->telefono.'</p>
  <p>Mensaje :'.$request->mensaje.'</p>
</body>
</html>';



$para      = 'gabriel.adrian.felipe@gmail.com';
$titulo    = 'prueba';
$cabeceras = 'From: info@coopglass.com' . "\r\n" .
            'MIME-Version: 1.0' . "\r\n".
            'Content-type: text/html; charset=iso-8859-1' . "\r\n".
            'Reply-To: '.$request->mail."\r\n" .
            'X-Mailer: PHP/' . phpversion();

$result=mail($para, $titulo, $mensaje, $cabeceras);

/*if ($result) {
    $json = json_decode(array("result"=>"ok"));
}else{
    $json = json_decode(array("result"=>"fail"));
}

echo json_encode($json, JSON_PRETTY_PRINT);
*/
//var_dump($result);

?>