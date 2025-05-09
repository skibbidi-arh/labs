import  java.util.*;

public class Report {
    public void generateInventoryReport(Inventory inventory) {
        System.out.println("Total Inventory Value: " + inventory.calculateTotalInventoryValue());
    }

    public void generateSalesReport(List<Order> orders) {
        double totalSales = 0;
        for (Order order : orders) {
            totalSales += order.getTotalAmount();
        }
        System.out.println("Total Sales: " + totalSales);
    }

    public void customizeReportFormat() {
        // Customization logic for reports
    }

    public void scheduleReportGeneration() {
        // Logic for scheduling report generation
    }
}
