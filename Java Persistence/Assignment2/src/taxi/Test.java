package taxi; //encapsulates the group of classes we use for our taxi database

import java.util.List;

import jakarta.persistence.*; //manages various relational/object data mapping

public class Test {
	private static final String PERSISTENCE_UNIT_NAME = "user01_taxi"; // defines a persistence unit named  user01...
	private static EntityManagerFactory factory;

	public static void main(String[] args) {
		factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME); //searches your persistence.xml, located inside your META-INF dir
		EntityManager manager = factory.createEntityManager();					//create entity manager

		TypedQuery <Booking> tq1 = manager.createNamedQuery(		//run named query 
				"Booking.loadBookingByDriver",
				Booking.class );
		tq1.setParameter("driver", "Short");						//set named parameter "driver" to "Short"
		List bookings = tq1.getResultList();						//store results of query in a list
		for(Object i: bookings)				
			System.out.println(i.toString());						//print out each element with toString method

		java.sql.Timestamp timestamp = java.sql.Timestamp.valueOf("2019-05-30 13:17:36");	//create a timestamp for testing
		
		TypedQuery <Car> tq2 = manager.createNamedQuery(			//run named query
				"Car.loadCarByBookingTime",
				Car.class );
		tq2.setParameter("time", timestamp);						//set named parameter "time" to the created timestamp
		List cars = tq2.getResultList();
		for(Object i: cars)											//store results in a list and print them out
			System.out.println(i.toString());

	}
}
