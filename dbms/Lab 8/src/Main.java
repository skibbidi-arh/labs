import java.sql.*;
import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/test1";
        String username = "test1";
        String password = "test1";

        try (Connection conn = DriverManager.getConnection(url, username, password);
             Statement stmt = conn.createStatement()) {

            System.out.println("Connected to the database.");


            String totalTransactionsQuery = "SELECT COUNT(*) AS transaction_count FROM TRANSACTIONS WHERE A_ID = 49";
            ResultSet rs = stmt.executeQuery(totalTransactionsQuery);
            if (rs.next()) {
                System.out.println("Total number of transactions under account 49: " + rs.getInt("transaction_count"));
            }


            String creditCountQuery = "SELECT COUNT(*) AS credit_count FROM TRANSACTIONS WHERE TYPE = 0";
            rs = stmt.executeQuery(creditCountQuery);
            if (rs.next()) {
                System.out.println("Total number of credits: " + rs.getInt("credit_count"));
            }


            String transactionsLast6MonthsQuery = "SELECT * FROM TRANSACTIONS WHERE DTM BETWEEN '2021-07-01' AND '2021-12-31'";
            rs = stmt.executeQuery(transactionsLast6MonthsQuery);
            System.out.println("Transactions in the last 6 months of 2021:");
            while (rs.next()) {
                System.out.printf("Transaction ID: %d, Date: %s, Account ID: %d, Amount: %.2f, Type: %s\n",
                        rs.getInt("T_ID"), rs.getDate("DTM"), rs.getInt("A_ID"),
                        rs.getDouble("AMOUNT"), (rs.getInt("TYPE") == 0 ? "Credit" : "Debit"));
            }


            String cipQuery = "SELECT COUNT(*) AS cip_count FROM ACCOUNT WHERE " +
                    "(SELECT SUM(AMOUNT) FROM TRANSACTIONS WHERE A_ID = ACCOUNT.A_ID) > 5000000 " +
                    "AND (SELECT SUM(CASE WHEN TYPE = 0 THEN AMOUNT ELSE -AMOUNT END) FROM TRANSACTIONS WHERE A_ID = ACCOUNT.A_ID) > 1000000";

            String vipQuery = "SELECT COUNT(*) AS vip_count FROM ACCOUNT WHERE " +
                    "(SELECT SUM(AMOUNT) FROM TRANSACTIONS WHERE A_ID = ACCOUNT.A_ID) BETWEEN 2500000 AND 4500000 " +
                    "AND (SELECT SUM(CASE WHEN TYPE = 0 THEN AMOUNT ELSE -AMOUNT END) FROM TRANSACTIONS WHERE A_ID = ACCOUNT.A_ID) BETWEEN 500000 AND 900000";

            String opQuery = "SELECT COUNT(*) AS op_count FROM ACCOUNT WHERE " +
                    "(SELECT SUM(AMOUNT) FROM TRANSACTIONS WHERE A_ID = ACCOUNT.A_ID) < 1000000 " +
                    "AND (SELECT SUM(CASE WHEN TYPE = 0 THEN AMOUNT ELSE -AMOUNT END) FROM TRANSACTIONS WHERE A_ID = ACCOUNT.A_ID) < 100000";

            rs = stmt.executeQuery(cipQuery);
            if (rs.next()) {
                System.out.println("Number of CIP accounts: " + rs.getInt("cip_count"));
            }

            rs = stmt.executeQuery(vipQuery);
            if (rs.next()) {
                System.out.println("Number of VIP accounts: " + rs.getInt("vip_count"));
            }

            rs = stmt.executeQuery(opQuery);
            if (rs.next()) {
                System.out.println("Number of OP accounts: " + rs.getInt("op_count"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
