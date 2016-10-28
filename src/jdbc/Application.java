package jdbc;
public class Application {
	public static void main(String[] args)  {
         
		DBConnect connect = new DBConnect();
		connect.getData();
		System.out.println();
		
		connect.deleteData();
		System.out.println();
	
		connect.insertData();
		System.out.println();
		
		connect.updateData();
		System.out.println();
	}
	
}
