public class Product {
    private String id;
    private String name;
    private double basePrice;
    private String category;
    private int stockLevel;

    public Product(String id, String name, double basePrice, String category, int stockLevel) {
        this.id = id;
        this.name = name;
        this.basePrice = basePrice;
        this.category = category;
        this.stockLevel = stockLevel;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getBasePrice() {
        return basePrice;
    }

    public String getCategory() {
        return category;
    }

    public int getStockLevel() {
        return stockLevel;
    }

    public void updateStock(int amount) {
        this.stockLevel += amount;
    }
}
