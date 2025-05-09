import java.util.HashMap;
import java.util.Map;

public class Warehouse {
    private String id;
    private String location;
    private Map<String, Product> products;

    public Warehouse(String id, String location) {
        this.id = id;
        this.location = location;
        this.products = new HashMap<>();
    }

    public void addProduct(Product product) {
        products.put(product.getId(), product);
    }

    public void removeProduct(String productId) {
        products.remove(productId);
    }

    public double calculateInventoryValue() {
        double totalValue = 0;
        for (Product product : products.values()) {
            totalValue += product.getBasePrice() * product.getStockLevel();
        }
        return totalValue;
    }

    public Product getProduct(String productId) {
        return products.get(productId);
    }
}
