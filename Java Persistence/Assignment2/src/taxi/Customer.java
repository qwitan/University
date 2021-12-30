package taxi;

import jakarta.persistence.*;

@Entity
@Table(name="Customer")
public class Customer {		//class declaration
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)		//generated id
	@Basic(optional=false)
	private int customer_Id;
	
	@Basic(optional=false)		//declaration and initialization of attributes
	private String surname;
	
	@Basic(optional=false)
	private String firstname;
	
	@Basic(optional=false)
	private String address;
	
	@Basic(optional=false)
	@Column(columnDefinition="CHAR(5) NOT NULL")
	private String postalcode;
	
	@Basic(optional=false)
	private String city;

	public int getCustomer_Id() {		//auto-generated getters and setters
		return customer_Id;
	}

	public void setCustomer_Id(int customer_Id) {
		this.customer_Id = customer_Id;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostalcode() {
		return postalcode;
	}

	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	
	
}
