package com.kuzmenko.readlistcrud.model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.cj.jdbc.Driver;


public class Factory {

    private static final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/readlistcrud_db?autoReconnect=true&useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "admin";
    public static Connection connection;



    public static Connection getConnection() {

        try {
            if (connection == null) {
                Class.forName(DB_DRIVER);
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
                if (!connection.isClosed())
                    System.out.println("Соединение установлено!");
            }
        } catch (ClassNotFoundException | SQLException e)

        {
            System.err.println("Соединение не установлено!");
            e.printStackTrace();

        }


        return connection;
    }


    public void closeConnection() {

        try {
            if (!connection.isClosed()) {

                connection.close();
            }
            if (connection.isClosed())
                System.out.println("Соединение разорвано!");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}


