<?php
require_once("Config.php");
require_once("CarAR.php");

class CarAR_IMP{
    
    private $db;
    
    function __construct() {        //create a connection to the DB
        try{
            $this->db = new PDO(DSN, USER, PWD);
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e){
            echo "Connection failed: " . $e->getMessage();
        }
    }
    
    public function save(CarAR $Car){   //save a car in DB
        try {                                                                                   //prepare an SQL statement with 3 named parameters
            $query = $this->$db->prepare("
                                        INSERT INTO Car(milage, registerDate, type_idType)      
                                        VALUES(:milage, :reg_date, :id_type)
                                        ");
            $query->bindValue(":milage", $Car->getMilage(), PDO::PARAM_STR);            //bind values to named parameters
            $query->bindValue(":reg_date", $Car->getRegisterDate(), PDO::PARAM_INT);
            $query->bindValue(":id_type", $Car->getType_idType(), PDO::PARAM_INT);
            $query->execute();                                                          //execute the query
            
            $Car->setIdCar($this->db->lastInsertId());      //create an ID automatically
        } catch (PDOException $e) {
            echo "Connection failed: " . $e.getMessage();
        }
    }
    
    public function find(int $idCar){       //find car in DB
        try {
        $query = $this->db->prepare("
                                    SELECT * FROM Car WHERE idCar = :idCar
                                    ");
        $query->bindValue(":idCar", $idCar, PDO::PARAM_INT);
        $query->execute();
        while($row = $query->fetch(PDO::FETCH_ASSOC)) {                                                     //get a row from query, until there are none left
            $Car = new CarAR($row["idCar"], $row["milage"], $row["register_date"], $row["type_idType"]);
            return $Car;
        }
        } catch (PDOException $e) {
            echo "Connection failed: " . $e.getMessage();
        }
    }
    
    public function delete(CarAR $Car){     //delete car from DB
        try {
            $query = $this->db->prepare("
                                    DELETE FROM Car WHERE idCar = :idCar
                                    ");
            $query->bindValue(":idCar", $Car->getIdCar(), PDO::PARAM_INT);
            $query->execute();
        } catch (PDOException $e) {
            echo "Connection failed: " . $e.getMessage();
        }
    }
    
    
    public function searchCars($manufacturer="", $milage="",$registered=""){        //search in the DB
        
        $manufacturer = "%".$manufacturer."%";      //LIKE and %, so we can search for just substrings
        $milage = "%".$milage."%";
        $registered = "%".$registered."%";
        
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $query = $this->db->prepare("
                                    SELECT * FROM Car c JOIN Type t
                                    WHERE t.Manufacturer LIKE :manufacturer AND t.idType = c.Type_idType
                                    AND c.milage LIKE :milage
                                    AND c.RegisterDate LIKE :reg_date
                                    ");
        $query->bindValue(":manufacturer", $manufacturer, PDO::PARAM_STR);
        $query->bindValue(":milage", $milage, PDO::PARAM_STR);
        $query->bindValue(":reg_date", $registered, PDO::PARAM_STR);
        $query->execute();
        
        $Cars = array();
        $pos = 0;
        while($row = $query->fetch(PDO::FETCH_ASSOC)){
            $Car = new CarAR($row["idCar"], $row["Milage"], $row["RegisterDate"], $row["Type_idType"]);
            $Cars[$pos] = $Car;
            $pos++;
        }
        return $Cars;
    }
    
    public function getManufacturer(CarAR $Car){
        try {
            $query = $this->db->prepare("
                                    SELECT DISTINCT t.Manufacturer FROM Car c JOIN Type t
                                    WHERE c.Type_idType = t.idType AND c.idCar = :idCar
                                    ");
            $query->bindValue(":idCar", $Car->getIdCar(), PDO::PARAM_INT);
            $query->execute();
            $manufacturer = $query->fetch()[0];
            return $manufacturer;
        } catch (PDOException $e) {
            echo "Connection failed: " . $e.getMessage();
        }
    }
   
}
