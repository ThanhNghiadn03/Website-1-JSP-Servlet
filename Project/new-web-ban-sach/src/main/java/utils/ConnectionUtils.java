package utils;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class ConnectionUtils {
	private static String jdbcURL = "jdbc:mysql://localhost:3306/trangwebbanhang?useSSL=false";
	private static String userName = "root";
	private static String password = "123456";
	public static Connection getConnection() {
		Connection connection = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				System.out.println("Class not found");
			}
			try {
				connection = DriverManager.getConnection(jdbcURL,userName, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("SQLException");
			}
			System.out.println("Ket noi thanh cong");
		return connection;
	}
	
	public static void main(String[] args) {
		getConnection();
	}
	

}
