<?php

class Departamentos
{
    private $id_deparatamento = null;
    private $nombre_depa = null;
    private $historia = null;
    private $poblacion = null;
    private $extension = null;
    private $turistico = null;
    private $info_general = null;

    public function setNombreDepa($value)
    {
        $this->nombre_depa = $value;
    }

    public function setIdDepartamento($value)
    {
        $this->id_departamento = $value;
    }

    public function getDepartamento()
    {
        $sql = "SELECT * FROM departamento WHERE nombre_depa = ?";
        $params = array($this->nombre_depa);
        return Database::getRows($sql, $params);
    }

    public function getMunicipios()
    {
        $sql = "SELECT nombre_muni FROM municipios WHERE id_departamento = ?";
        $params = array($this->id_departamento);
        return Database::getRows($sql, $params);
    }
}

?>