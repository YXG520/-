package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
	public class JdbcUtils {
		public static  Connection  getConnection () throws Exception {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/客户关系管理系统", "root", "153426");
			return con;
		}
		public  static void release(Connection  con ,PreparedStatement  ps,ResultSet  rs) throws SQLException {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (con != null) {
				con.close();
			}

		}

}


