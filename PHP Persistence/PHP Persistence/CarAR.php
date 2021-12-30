<?php 

require_once("Config.php");

class CarAR{    //declaration of class and variables
	
	private $idCar;
	private $milage;
	private $registerDate;
	private $type_idType;
    
	
	public function __construct($idCar = 0, $milage="", $registerDate="", $type_idType=""){        //constructor
	    $this->idCar = $idCar;
	    $this->milage = $milage;
	    $this->registerDate = $registerDate;
	    $this->type_idType = $type_idType;
	}
	

    /**
     * @return mixed                        //getters and setters
     */
    public function getIdCar()
    {
        return $this->idCar;
    }

    /**
     * @return mixed
     */
    public function getMilage()
    {
        return $this->milage;
    }

    /**
     * @return mixed
     */
    public function getRegisterDate()
    {
        return $this->registerDate;
    }

    /**
     * @return mixed
     */
    public function getType_idType()
    {
        return $this->type_idType;
    }

    /**
     * @param mixed $idCar
     */
    public function setIdCar($idCar)
    {
        $this->idCar = $idCar;
    }

    /**
     * @param mixed $milage
     */
    public function setMilage($milage)
    {
        $this->milage = $milage;
    }

    /**
     * @param mixed $registerDate
     */
    public function setRegisterDate($registerDate)
    {
        $this->registerDate = $registerDate;
    }

    /**
     * @param mixed $type_idType
     */
    public function setType_idType($type_idType)
    {
        $this->type_idType = $type_idType;
    }
		
	
}

?>