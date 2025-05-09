import java.sql.*;
public class task2 {

    public void execute() throws SQLException {

        ConnectToDB c = new ConnectToDB();
        Connection con = c.connect();

        String sql = "SELECT COUNT(*) AS total from transactions where type=?";
        java.sql.PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, "0");


        ResultSet r= ps.executeQuery();
        while (r.next()) {
            int total = r.getInt("total");
            System.out.println("total number of credits: " + total);

        }


    }
}
