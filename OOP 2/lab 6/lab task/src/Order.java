import java.util.ArrayList;
import java.util.List;

public class Order {
    private String id;
    private List<Product> productList;
    private String orderStatus;
    private double totalAmount;

    public Order(String id) {
        this.id = id;
        this.productList = new ArrayList<>();
        this.orderStatus = "Pending";
        this.totalAmount = 0;
    }

    public void addProduct(Product product, int quantity) {
        productList.add(product);
        totalAmount += product.getBasePrice() * quantity;
        product.updateStock(-quantity);  // Update inventory stock
    }

    public void updateOrderStatus(String status) {
        this.orderStatus = status;
    }

    public String generateInvoice() {
        StringBuilder invoice = new StringBuilder();
        invoice.append("Order ID: ").append(id).append("\n");
        for (Product product : productList) {
            invoice.append(product.getName()).append(" - $").append(product.getBasePrice()).append("\n");
        }
        invoice.append("Total: $").append(totalAmount).append("\n");
        return invoice.toString();
    }

    // This is the missing method
    public double getTotalAmount() {
        return totalAmount;
    }
}
