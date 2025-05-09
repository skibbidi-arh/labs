// DiscountStrategy.java
public abstract class DiscountStrategy {
    public abstract double applyDiscount(double price);
}

// PercentageDiscount (Non-public class)
class PercentageDiscount extends DiscountStrategy {
    private double percentage;

    public PercentageDiscount(double percentage) {
        this.percentage = percentage;
    }

    @Override
    public double applyDiscount(double price) {
        return price * (1 - percentage);
    }
}

// BulkPurchaseDiscount (Non-public class)
class BulkPurchaseDiscount extends DiscountStrategy {
    private int threshold;
    private double discount;

    public BulkPurchaseDiscount(int threshold, double discount) {
        this.threshold = threshold;
        this.discount = discount;
    }

    @Override
    public double applyDiscount(double price) {
        return price * (1 - discount);
    }
}
