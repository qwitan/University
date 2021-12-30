package taxi;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name="Type")
public class Type {		//class declaration
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)	//generates the id
	@Basic(optional=false)
	@Column(name="idType")
	private int type_Id;
	
	@Basic(optional=false)		//declaration of class attributes (columns)
	@Column(name="Manufacturer")
	private String manufacturer;
	
	@Basic(optional=false)
	@Column(name="Model")
	private String modelname;
	
	@Basic(optional=false)
	@Column(name="noSeats", columnDefinition="TINYINT(4) NOT NULL")
	private int noSeats;
	
	@OneToMany(mappedBy="type", cascade=CascadeType.ALL)	//OneToMany relationship with class Car
	private List <Car> vehicles = new ArrayList<Car>();	
	

	public int getType_Id() {		//auto-generated getters and setters
		return type_Id;
	}

	public void setType_Id(int type_Id) {
		this.type_Id = type_Id;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getModelname() {
		return modelname;
	}

	public void setModelname(String modelname) {
		this.modelname = modelname;
	}

	public int getNoSeats() {
		return noSeats;
	}

	public void setNoSeats(int noSeats) {
		this.noSeats = noSeats;
	}

	public List<Car> getVehicles() {
		return vehicles;
	}

	public void setVehicles(List<Car> vehicles) {
		this.vehicles = vehicles;
	}
	
	
}
