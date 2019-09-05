package ips;
import java.sql.*;
public class dbconnect
{
private Connection con;
public Statement stmt;
public String getconn()
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:parking");
stmt=con.createStatement();
}
catch(Exception e)
{
System.out.println(e);
}
return"";
}
}