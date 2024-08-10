package com.example.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL = "jdbc:sqlite:/Users/sohyun/eclipse-workspace/Mission01/src/main/webapp/WEB-INF/lib/sqlite-jdbc-3.46.0.1.jar"; // SQLite 데이터베이스 파일의 경로
    private static final String DRIVER_CLASS = "org.sqlite.JDBC";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(DRIVER_CLASS);
        return DriverManager.getConnection(URL);
    }
}
