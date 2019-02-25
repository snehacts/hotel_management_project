package Utility;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;


public class DbConnect {
	
	static Properties dbProperties = null;
	static Connection jdbcConnection = null;
	static FileInputStream fis = null;
	
      //loading the properties
	public static void jdbcProperties() throws IOException {
		dbProperties = new Properties();
		fis = new FileInputStream("C:\\EclipseNew\\crudnew\\src\\Utility\\H2JDBC.properties");
		dbProperties.load(fis);
		fis.close();
	}
      //Establishing the connection
	public static Connection connect() throws ClassNotFoundException, SQLException, IOException {
		jdbcProperties();
		String driver = dbProperties.getProperty("myJDBC.driver");
		String url = dbProperties.getProperty("myJDBC.url");
		String username = dbProperties.getProperty("myJDBC.username");
		String password = dbProperties.getProperty("myJDBC.password");
		System.out.println("Connection Establish");
		if (jdbcConnection == null || jdbcConnection.isClosed()) {
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				throw new SQLException(e);
			}

		}
		return jdbcConnection = DriverManager.getConnection(url, username, password);


}}
