<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%
try {
    // Get connection from ConnectionProvider class
    Connection con = ConnectionProvider.getCon();
    
    // Create a statement
    Statement st = con.createStatement();
    
    // Define SQL queries for creating tables
    String q1 = "CREATE TABLE IF NOT EXISTS users ("
                + "name VARCHAR(100),"
                + "email VARCHAR(100) PRIMARY KEY,"
                + "mobilenumber BIGINT,"
                + "securityQuestion VARCHAR(200),"
                + "answer VARCHAR(200),"
                + "password VARCHAR(100),"
                + "address VARCHAR(500),"
                + "city VARCHAR(100),"
                + "country VARCHAR(100)"
                + ")";
    
    String q2 = "CREATE TABLE IF NOT EXISTS product ("
                + "id INT AUTO_INCREMENT PRIMARY KEY,"
                + "name VARCHAR(500),"
                + "category VARCHAR(200),"
                + "price INT,"
                + "active VARCHAR(10)"
                + ")";
    		
    String q3 = "create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),city varchar(100),country varchar(100),mobilenumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(100))";
    String q4 = "create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(100),PRIMARY KEY(id))";
    // Print the SQL queries (optional)
    System.out.println(q1);
    System.out.println(q2);
    System.out.println(q3);
    System.out.println(q4);
    
    // Execute SQL queries
    //st.executeUpdate(q1);
    //st.executeUpdate(q2);
    //st.executeUpdate(q3);
    st.executeUpdate(q4);
    
    // Print message indicating successful table creation
    System.out.println("Tables created successfully");
    
    // Close the connection
    con.close();
} catch (SQLException e) {
    // Print SQL exception
    e.printStackTrace();
}
%>
