import java.sql.*;
public class ConnectToDB {

    public Connection connect() {
        String url = "jdbc:mysql://localhost:3306/task";
        String username = "test1";
        String password = "mysqlnew1234";

        try {
            Connection conn = DriverManager.getConnection(url, username, password);
            System.out.println("Connected to database");
            return conn;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }


}
