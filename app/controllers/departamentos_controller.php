<?php
require_once("../models/database.class.php");
require_once("../models/departamentos.class.php");
header('Access-Control-Allow-Origin: *');

try
{

    $departamento = new Departamentos;

    if($_SERVER['REQUEST_METHOD'] == 'GET')
    {
        if(isset( $_GET['nombre'] ) )
        {
            $departamento->setNombreDepa($_GET['nombre']);
            $depar = $departamento->getDepartamento();
            if( empty( $depar ) != 1 )
            {
                echo json_encode( $depar );
            }
            else
            {
                echo json_encode( 'error' );
            }
            exit();
        }

        if(isset( $_GET['id'] ))
        {
            $departamento->setIdDepartamento( $_GET['id'] );
            $municipios = $departamento->getMunicipios();
            echo json_encode( $municipios );
            exit();
        }
    }
}
catch(Exception $error)
{
    print($error->getMessage());
}



?>