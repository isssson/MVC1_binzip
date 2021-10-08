package binzip.db;

import java.sql.*;
import javax.naming.*;
import javax.sql.*;

public class BinzipDB {
	
	static DataSource ds;

	static{//static블럭이라고 불리는 영역이 된다
		try {
		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		ds = (DataSource)envContext.lookup("jdbc/myoracle");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getConn() throws Exception{
		return ds.getConnection();
	}
}
