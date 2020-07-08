package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionManager {
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/mercado?useTimezone=true&serverTimezone=UTC", "root", "japa");
		} catch (Exception e) {
			throw new RuntimeException("Erro " + e);
		}
	}

}
