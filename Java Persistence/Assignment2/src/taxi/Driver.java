package taxi;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name="Driver")
public class Driver {		//class declaration
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)		//generated id
	@Basic(optional=false)
	@Column(name="idDriver")
	private int driver_Id;
	
	@Basic(optional=false)		//class attributes
	@Column(name="Surname")
	private String surname;
	
	@Basic(optional=false)
	@Column(name="Firstname")
	private String firstname;
	
	@Basic(optional=false)
	@Column(name="Mobile")
	private String mobile;
	
	@OneToMany(mappedBy="driver", cascade=CascadeType.ALL)		//OneToMany relationship with Booking
	private List <Booking> bookings = new ArrayList<>();

	public int getDriver_Id() {		//auto-generated getters and setters
		return driver_Id;
	}

	public void setDriver_Id(int driver_Id) {
		this.driver_Id = driver_Id;
	}

	public String getName() {
		return surname;
	}

	public void setName(String name) {
		this.surname = name;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public List<Booking> getBookingsDriver() {
		return bookings;
	}

	public void setBookingsDriver(List<Booking> bookingsDriver) {
		this.bookings = bookingsDriver;
	}
	
	
}
