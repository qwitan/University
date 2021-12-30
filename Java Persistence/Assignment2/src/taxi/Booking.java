package taxi; //encapsulates the group of classes we use for our taxi database

import jakarta.persistence.*; //manages various relational data
import java.math.BigDecimal;
//query for searching bookings by drivers last name
@NamedQuery (name="Booking.loadBookingByDriver",		 //static defined query with a predefined query string named 	
query =	"SELECT b FROM Booking b, Driver d "+
		"WHERE d.surname = :driver AND d = b.driver") 

@Entity // represents a table in a relational database, so that JPA is aware that it should be stored.
@Table(name="Booking")  // table annotation, and naming in the case the name of the table in the database and the name in the entity is not the same
public class Booking {		//class declaration // class booking object which represents the data of bookings
	@Id // defines a primary key
	@GeneratedValue(strategy=GenerationType.TABLE)	// underlying persistence provider must use a database table to generate/keep the next unique primary key for the entities.
	@Basic(optional=false) //boolean parameter to disallow the marked field or property to be null 
	@Column(name="idBooking") //sets a name to the column instead of the dafault field name
	private int booking_Id; 
	
	@Basic(optional=false)		//class attributes
	@Column(name="DistanceInKM", columnDefinition="DECIMAL(5, 2)")	// sets the name and the second parameter as the datatype xxxxx.xx	
	private BigDecimal distance; //uses bigdecimal to be more precise 
	
	@Basic(optional=false)
	@Column(name="TimeInMIN", columnDefinition="INT(11) NOT NULL")
	private int duration;
	
	@Basic(optional=false)
	@Column(name="BookingTime")
	private java.sql.Timestamp bookingTime; // used to get the time of the Timestamp object
	
	@ManyToOne(cascade=CascadeType.ALL)		//ManyToOne relationship with Car as defined in the assignment // propagate (cascade) to the given Car operation
	@JoinColumn(name = "Car_idCar")  // stores the ID value in the car entity 
	private Car car;
	
	@ManyToOne(cascade=CascadeType.ALL)		//ManyToOne relationship with Driver
	@JoinColumn(name = "Driver_idDriver")
	private Driver driver;

	public int getBooking_Id() {		//auto-generated getters and setters
		return booking_Id;
	}

	public void setBooking_Id(int booking_Id) {
		this.booking_Id = booking_Id;
	}

	public BigDecimal getDistance() {
		return distance;
	}

	public void setDistance(BigDecimal distance) {
		this.distance = distance;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public java.sql.Timestamp getBookingTime() {
		return bookingTime;
	}

	public void setBookingTime(java.sql.Timestamp bookingTime) {
		this.bookingTime = bookingTime;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public Driver getDriver() {
		return driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}

	@Override
	public String toString() { // used to print the values of the given objects by overriding the method
		return "Booking [booking_Id=" + booking_Id + ", distance=" + distance + ", duration=" + duration
				+ ", bookingTime=" + bookingTime + ", car=" + car + ", driver=" + driver + "]";
	}
	
}
