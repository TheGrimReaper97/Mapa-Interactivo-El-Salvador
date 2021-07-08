<?php 

$Year = date("Y");

class Template {

    //Template del header de la pagina
    public static function templateHeader()
    {
        print("
        <!DOCTYPE html>
        <html lang='en'>
        <head>
            <meta charset='UTF-8'>
            <meta name='viewport' content='width=device-width, initial-scale=1.0'>
            <!-- CSS only -->
            <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' integrity='sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z' crossorigin='anonymous'>
            <link rel='stylesheet' href='app/assets/css/light-mode.css' id='theme' />

            <!-- JS, Popper.js, and jQuery -->
            <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity='sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj' crossorigin='anonymous'></script>
            <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity='sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN' crossorigin='anonymous'></script>
            <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js' integrity='sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV' crossorigin='anonymous'></script>
            <!--icono-->
            <link rel='icon' href='app/assets/img/icono mapa de El salvador.ico'>
            <!--Titulo-->
            <title>Mapa Interactivo</title>
        </head>
        <body>
            <div class='container'>
                <div class='row text-center'>
                    <div class='col-12'>
                        <h1>República de El Salvador</h1>
                        <p>El pulgarcito de América</p>
                    </div>
                </div>
                <div class='row'>
                    <div class='col-12 col-md-2'>
                        <ul class='nav flex-md-column flex-row nav-fill'>
                            <a class='navbar-brand' href='index.php'><img class='img-fluid d-none d-md-block' src='app/assets/img/icono mapa de El salvador.ico' alt=''></a>
                            <li class='nav-item'>
                                <a class='nav-link active' href='index.php'>Inicio</a>
                            </li>
                            <li class='nav-item dropdown'>
                                <a class='nav-link dropdown-toggle' data-toggle='dropdown' href='#' role='button' aria-haspopup='true' aria-expanded='false'>Departamentos</a>
                                <div class='dropdown-menu'>
                                    <a class='dropdown-item' href='departamento.php?nombre=Ahuachapan'>Ahuachapan</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=Cabañas'>Cabañas</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=Cuscatlán'>Cuscatlán</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=La Libertad'>La Libertad</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=La Paz'>La Paz</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=Sonsonate'>Sonsonate</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=San Salvador'>San Salvador</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=La Unión'>La Unión</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=Morazán'>Morazán</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=San Miguel'>San Miguel</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=San Vicente'>San Vicente</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=Usulután'>Usulután</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=Chalatenango'>Chalatenango</a>
                                    <a class='dropdown-item' href='departamento.php?nombre=Santa Ana'>Santa Ana</a>
                                </div>
                            </li>
                            <li class='nav-item'>
                                <button onclick='switchSheet1()'>Switch</button>
                            </li>
                        </ul>
                    </div>
        ");
    }

    
    public static function templateFooter()
    {
        print("
                </div>
                <div class='row' id='footer'>
                    <div class='col-12 text-center'>
                        <h6>Derechos Reservados Universidad Don Bosco 2021 </h6>
                    </div>
                </div>
            </div>
            
        <script src='app/assets/js/script.js'></script>
        </body>
        </html>
        ");
    }
}

?>