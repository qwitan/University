package taxi; //encapsulates the group of classes we use for our taxi database

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.*; //manages various relational data


@NamedQuery (name="Car.loadCarByBookingTime",		//SQL query for searching car by booking time
query =	"SELECT c FROM Car c, Booking b "+			//static query with named parameters
		"WHERE b.bookingTime = :time AND c = b.car")

@Entity // represents a table in a relational database, so that JPA is aware that it should be stored.
@Table(name="Car") // table annotation
public class Car {		//class declaration
	@Id // defines a primary key
	@GeneratedValue(strategy=GenerationType.TABLE)		//generated id 
	@Basic(optional=false) //boolean parameter to disallow the marked field or property to be null 
	@Column(name="idCar") //sets a name to the column instead of the dafault field name
	private int car_Id;
	
	@Basic(optional=false)		//declaration of class attributes
	@Column(name="Milage")
	private String milage;
	
	@Basic(optional=false)
	@Column(name="RegisterDate")
	private java.sql.Date registered; // only date
	
	@ManyToOne					//ManyToOne relationship with Type
	@JoinColumn(name="Type_idType")
	private Type type;
	
	@OneToMany(mappedBy="car", cascade=CascadeType.ALL)		//OneToMany relationship with Booking //first attribute used to define the referencing side. 
	private List <Booking> bookings = new ArrayList<>(); // OO design principle of the interface Booking

	public int getCar_Id() {		//auto-generated getters and setters
		return car_Id;
	}

	public void setCar_Id(int car_Id) {
		this.car_Id = car_Id;
	}

	public String getMilage() {
		return milage;
	}

	public void setMilage(String milage) {
		this.milage = milage;
	}

	public java.sql.Date getRegistered() {
		return registered;
	}

	public void setRegistered(java.sql.Date registered) {
		this.registered = registered;
	}

	public List<Booking> getBookingsCar() {
		return bookings;
	}

	public void setBookingsCar(List<Booking> bookingsCar) {
		this.bookings = bookingsCar;
	}

	@Override
	public String toString() {		//auto-generated toString method
		return "Car [car_Id=" + car_Id + ", milage=" + milage + ", registered=" + registered + ", type=" + type
				+ ", bookingsCar=" + bookings + "]";
	}
	
	
}
