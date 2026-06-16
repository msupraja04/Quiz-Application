package com.quiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static Connection connection = null;

    public static Connection getConnection() {
        if (connection != null) {
            return connection;
        } else {
            try {
                // Step 1: Load the MySQL JDBC Driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Step 2: Create Connection to MySQL Database
                connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/quizdb", // database name
                    "root", // your MySQL username
                    "admin123@" // your MySQL password
                );
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
            return connection;
        }
    }
    public static void main(String[] args) {
        Connection con = getConnection();
        if (con != null) {
            System.out.println("✅ Database Connected Successfully!");
        } else {
            System.out.println("❌ Database Connection Failed!");
        }
    }

}
