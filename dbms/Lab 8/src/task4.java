import java.sql.*;
public class task4 {

    public void execute() throws SQLException {

        ConnectToDB c = new ConnectToDB();
        Connection con = c.connect();

        String query1 = "SELECT " +
                "    SUM(balance > 1000000 AND total_transactions > 5000000) AS CIP_count, " +
                "    SUM(balance > 500000 AND balance <= 900000 " +
                "        AND total_transactions > 2500000 AND total_transactions < 4500000) AS VIP_count, " +
                "    SUM(balance < 100000 AND total_transactions < 1000000) AS OP_count, " +
                "    SUM(NOT (balance > 1000000 AND total_transactions > 5000000) " +
                "        AND NOT (balance > 500000 AND balance <= 900000 " +
                "                 AND total_transactions > 2500000 AND total_transactions < 4500000) " +
                "        AND NOT (balance < 100000 AND total_transactions < 1000000)) AS Others_count " +
                "FROM ( " +
                "    SELECT A_ID, " +
                "           SUM(CASE WHEN TYPE = 0 THEN AMOUNT ELSE -AMOUNT END) AS balance, " +
                "           SUM(AMOUNT) AS total_transactions " +
                "    FROM TRANSACTIONS " +
                "    GROUP BY A_ID " +
                ") AS AccountSummary";





        java.sql.PreparedStatement pstmt = con.prepareStatement(query1);




        ResultSet r1 = pstmt.executeQuery();
        if (!r1.isBeforeFirst()) {
            System.out.println("ResultSet is empty.");
        } else {
            while (r1.next()) {
                int cipCount = r1.getInt("CIP_count");
                int vipCount = r1.getInt("VIP_count");
                int opCount = r1.getInt("OP_count");
                int othersCount = r1.getInt("Others_count");

                System.out.println("CIP Count: " + cipCount);
                System.out.println("VIP Count: " + vipCount);
                System.out.println("OP Count: " + opCount);
                System.out.println("Others Count: " + othersCount);
            }
        }








    }


    }


