import java.sql.*;

public class task4 {
    public  void execute() throws SQLException {
        ConnectToDB connectToDB = new ConnectToDB();
        Connection con = connectToDB.connect();
        String task4 = "SELECT A.A_ID, SUM(T.AMOUNT) AS total_transaction_amount " +
                "FROM ACCOUNT A " +
                "INNER JOIN TRANSACTIONS T ON A.A_ID = T.A_ID " +
                "GROUP BY A.A_ID";

        int cip = 0;
        int vip = 0;
        int op = 0;
        int ctless = 0;



        PreparedStatement pstmt = con.prepareStatement(task4);
        ResultSet rs4 = pstmt.executeQuery();

        while (rs4.next()) {
            int a_id = rs4.getInt("A_ID");
            double total_transaction_amount = rs4.getDouble("total_transaction_amount");

            if (total_transaction_amount > 5000000) {
                cip++;
            } else if (total_transaction_amount < 4500000 && total_transaction_amount > 2500000) {
                vip++;
            } else if (total_transaction_amount < 100000) {
                op++;
            } else {
                ctless++;
            }
        }

        System.out.println("CIP: " + cip);
        System.out.println("VIP: " + vip);
        System.out.println("OP: " + op);
        System.out.println("others " + ctless);


    }
}
