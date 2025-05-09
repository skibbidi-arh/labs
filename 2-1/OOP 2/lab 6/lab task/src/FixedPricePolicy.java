public class FixedPricePolicy extends PricingPolicy {
    @Override
    public double applyPrice(Product product) {
        return product.getBasePrice();
    }
}

public class DiscountPricePolicy extends PricingPolicy {
    private double discountRate;

    public DiscountPricePolicy(double discountRate) {
        this.discountRate = discountRate;
    }

    @Override
    public double applyPrice(Product product) {
        return product.getBasePrice() * (1 - discountRate);
    }
}
