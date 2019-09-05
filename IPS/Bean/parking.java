package I_P_M;
import java.sql.*;
public class parking
{
private Connection con;
public Statement stmt;
public String getconn()
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("Jdbc:Odbc:parking");
stmt=con.createStatement();
}
catch(Exception e)
{
System.out.println(e);
}
return"";
}
}