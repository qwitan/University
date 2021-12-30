// CTS2: Vasquez, Christian (3138493)

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;

public class MapReport {

	private static Connection c = null;
	private static PreparedStatement Q1 = null;
	private static PreparedStatement Q2 = null;
	private static ResultSet resultQ1 = null;
	private static ResultSet resultQ2 = null;

	private static final String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String connectionDescriptor =
			"jdbc:sqlserver://i-mssql-01.informatik.hs-ulm.de;databasename=kratzer_db";

	public static void main(String[] args) {

		try {
			// Establish JDBC connection
			try {
				Class.forName(driverClass);
				c =  DriverManager.getConnection(connectionDescriptor, "reader_kratzer_db", "thu123456!");

			}catch (SQLException e) {
				System.out.println("Exception " + e);
			}	

			Q1 = c.prepareStatement(
					"SELECT c1.Name, c2.Name, " +
							"r.distance " +
							"FROM 	   [HS-ULM\\KRATZER].ROAD r " +
							"JOIN	   	   [HS-ULM\\KRATZER].CITY c1 ON c1.MapID = r.MapID AND r.IDfrom = c1.ID " +
							"JOIN	   	   [HS-ULM\\KRATZER].CITY c2 ON c2.MapID = r.MapID AND r.IDto = c2.ID " +
							"WHERE 		r.IDfrom < r.IDto " +
							"AND 		r.Distance IN ( " +
											"SELECT  MAX(Distance) " +
											"FROM   [HS-ULM\\KRATZER].ROAD " +
											"WHERE  MapID = r.MapID " +
											"GROUP BY MapID) " +
							"GROUP BY 	r.MapID,c1.Name,c2.Name,r.distance " +
							"ORDER BY 	r.MapID ASC; "					
					);

			Q2 = c.prepareStatement(
					"SELECT	M.ID, M.Name, " +
							"COUNT(DISTINCT c.ID) AS num_cities, " +
							"COUNT(DISTINCT r.IDfrom + r.IDto) AS num_roads, " +
							"CAST(AVG(r.Distance) AS DEC(10,0)) avg_road_length " +
							"FROM	[HS-ULM\\KRATZER].MAP M " +
							"INNER JOIN [HS-ULM\\KRATZER].CITY c ON m.ID = c.MapID " +
							"INNER JOIN 	[HS-ULM\\KRATZER].ROAD r ON m.ID = r.MapID " +
							"WHERE 		r.IDfrom < r.IDto " +
							"GROUP BY 	M.ID, M.Name " +
							"ORDER BY M.ID ASC "					
					);


			// Execute mapinfo and loop through the result
			
			resultQ1 = Q1.executeQuery();
			resultQ2 = Q2.executeQuery();

			while (resultQ1.next()) {
				   resultQ2.next();

				// retrieve result of Q1
				String fromname2 = resultQ1.getString(1);  
				String toname2 = resultQ1.getString(2);
				int distance = resultQ1.getInt(3);
				   
				// retrieve result of Q2
				int mapid = resultQ2.getInt(1);
				String mapname = resultQ2.getString(2);
				int cities = resultQ2.getInt(3);
				int roads = resultQ2.getInt(4);
				int length = resultQ2.getInt(5);
				// write output
				Terminal.put(
						"---------------------------------------\n" +
								"Map " + mapname + " (" + mapid + "):\n" +
								"Cities: " + cities + 
								"\nRoads: " + roads 
								+ "\nAverage Road Length: " + length + " km\n" +
								"The longest road runs from " + fromname2 + " to " + toname2 + " - length: " + distance + " km\n" +
								"---------------------------------------"
						);
						
			}

			resultQ1.close();
			resultQ2.close();

		} catch (ClassNotFoundException e) {
			Terminal.put("Unable to open driver class ...");
		} catch (SQLException e) {
			Terminal.put("Database error: " + e.getMessage());
		} finally {
			// Close everything down
			try {
				if (c != null) c.close();
			} catch (SQLException e) {}
		}
	}

}
