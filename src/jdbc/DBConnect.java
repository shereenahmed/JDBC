package jdbc;
import java.sql.*;

public class DBConnect {
	//Instant variables for the connect class..(Imported from sql library)..
	private Connection con;
	private Statement st;
	private ResultSet res;

	// Open the connection and create a statement..
	public DBConnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movies", "root", "");
			st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		} catch (Exception e) {
			System.out.println("Error: " + e);
		}
	}

	// Method to select data
	public void getData() {
		try {
			String query = "select * from films";
			res = st.executeQuery(query);
			System.out.println("The records from the database:");
			while (res.next()) {
				//Retrieve by column name..
				int id = res.getInt("movieID");
				String name = res.getString("name");
				String genre = res.getString("Genre");
				//Display Values
				System.out.println("ID: " + id + ", Name: " + name
						+ ", Genre: " + genre);
			}
		} catch (Exception e) {
			System.out.println("Error: " + e);
		}
	}

	// Method to delete data
	public void deleteData() {
		try {
			// Kevin Spacey.. movie = 19...
			String query2 = "Delete from cast where Id = 19";
			st.executeUpdate(query2);
			//extract all the records to see the remaining records
		      query2 = "select * from cast";
		      res = st.executeQuery(query2);
			System.out.println("The deleted records from the database are: ");
			while (res.next()) {
				int id = res.getInt("Id");
				String star = res.getString("star");
				String role = res.getString("role");
				int movieRef = res.getInt("movie_ref");
				//Display Values
				System.out.println("Id: " + id + ", Star: " + star 
						+ ", Role: " + role +  ", Movie-ref: " + movieRef);
			}

		} catch (Exception e) {
			System.out.println("Error: " + e);
		}
	}
	
	//Method to insert data
	public void insertData(){
		try{	
	       String query3 = "insert into production " + 
		                   "values(15, 'Sony picture intertainment', 1987, 7)";
	       st.executeUpdate(query3);
	    
	       System.out.println("The inserted records into the database are: ");
	       while(res.next()){
	    	   int id = res.getInt("id");
	           String productionCompany = res.getString("production_company");
	           int realseDate = res.getInt("realse_date");
	           int movie = res.getInt("movie");
	           //Display values..
	           System.out.println("id: " + id + ", Production-company: " + productionCompany + 
	        		    ", Release-date: " + realseDate + ", Movie-id: " + movie);
	       }
	      
		}catch(Exception e){
		System.out.println("Error: " + e);
		}
	}
	
	//Method to update data
	public void updateData(){
		try{	
		       String query4 = "update films " + "set name ='Cindrella' where movieID = (5)";
		       st.executeUpdate(query4);
		       //Extract all the records to see the updated data..
		       query4 = "select * from films";
		       res =st.executeQuery(query4);
		       System.out.println("The updated records in the database are: ");
		       while(res.next()){
		    	   //retrieve by column name..
		    	   int movieid = res.getInt("movieID");
		           String name = res.getString("name");
		           String genre = res.getString("genre");
		           //Display values..
		           System.out.println("ID: " + movieid + ", name: " + name + ",Genre: " + genre);
		       } 
				
			}catch(Exception e){
				System.out.println("Error: " + e);
			}
	}

}
