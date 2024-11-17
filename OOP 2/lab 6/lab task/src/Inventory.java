import java.util.ArrayList;
import java.util.List;

public class Inventory {
    private List<Warehouse> warehouses;

    public Inventory() {
        this.warehouses = new ArrayList<>();
    }

    public void addWarehouse(Warehouse warehouse) {
        warehouses.add(warehouse);
    }

    public double calculateTotalInventoryValue() {
        double totalValue = 0;
        for (Warehouse warehouse : warehouses) {
            totalValue += warehouse.calculateInventoryValue();
        }
        return totalValue;
    }

    public double calculateValueByCategory(String category) {
        double totalValue = 0;
        for (Warehouse warehouse : warehouses) {
            for (Product product : warehouse.getProducts().values()) {
                if (product.getCategory().equals(category)) {
                    totalValue += product.getBasePrice() * product.getStockLevel();
                }
            }
        }
        return totalValue;
    }
}
