import java.sql.*;
public class task3 {

    public void execute() throws SQLException {

        ConnectToDB c = new ConnectToDB();
        Connection con = c.connect();

        String sql = "SELECT * FROM TRANSACTIONS WHERE DTM BETWEEN ? AND ?";
        java.sql.PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, "2021-07-01");
        ps.setString(2, "2021-12-31");


        ResultSet r= ps.executeQuery();
        if (!r.isBeforeFirst()) {
            System.out.println("ResultSet is empty.");
        }
        else {
        while (r.next()) {
            int transaction_id = r.getInt("t_id");
            String date = r.getString("DTM");
            int account_id = r.getInt("a_id");
            double amount = r.getDouble("t_id");
            String type = r.getString("type");

            System.out.println(transaction_id);
            System.out.println(date);
            System.out.println(account_id);
            System.out.println(amount);
            System.out.println(type);

        }
             }


    }
}
