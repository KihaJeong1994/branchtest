import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

public class JdbcTest {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConn() {
		try {
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.39:1521:XE","king","k123");
			System.out.println("연결성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("연결실패");
		}
	}
}
