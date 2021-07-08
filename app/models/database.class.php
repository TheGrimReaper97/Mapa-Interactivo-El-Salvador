<?php
class Database
{
    private static $connection = null;
    private static $statement = null;
    private static $id = null;
    private static $error = null;

    private static function connect()
    {
        $server = "localhost"; //Aqui se escribe el nombre del servidor en este caso seria localhost
        $database = "mapa_intera"; //Aqui se escribe el nombre de la base de datos
        $username = "root"; //Aqui se escribe el nombre de usuario en este caso se usara root
        $password = ""; //Aqui se escribe la contraseña del usuario en el caso que no tenga contraseña se deja vacio
        try
        {
            @self::$connection = new PDO("mysql:host=$server; dbname=$database; charset=utf8", $username, $password);
        }
        catch(PDOException $exection)
        {
            throw new Exception($exection->getCode());
        }
    }

    private static function desconnect()
    {
        self::$error = self::$statement->errorInfo();
        self::$connection = null;
    }

    public static function executeRow($query, $values)
    {
        self::connect();
        self::$statement = self::$connection->prepare($query);
        $state = self::$statement->execute($values);
        self::$id = self::$connection->lastInsertId();
        self::desconnect();
        return $state;
    }

    public static function getRow($query, $values)
    {
        self::connect();
        self::$statement = self::$connection->prepare($query);
        self::$statement->execute($values);
        self::desconnect();
        return self::$statement->fetch();
    }

    public static function getRows($query, $values)
    {
        self::connect();
        self::$statement = self::$connection->prepare($query);
        self::$statement->execute($values);
        self::desconnect();
        return self::$statement->fetchAll();
    }

    public static function getLastRowId()
    {
        return self::$id;
    }

    public static function getException()
    {
        if(self::$error[0] == "00000")
        {
            return false;
        }
        else
        {
            return self::$error[1];
        }
    }
}
?>