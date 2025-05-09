import java.util.ArrayList;
import java.util.List;
public class Order {
    private List<OrderItem> items;
    private double containerprice;
    private final  double TAX_RATE = 0.08;

    public Order() {
        this.items = new ArrayList<>();

    }


    public void addFlavor(YogurtFlavor flavor, int quantity) {
        items.add(new OrderItem(flavor.getName(), quantity, flavor.getPriceperScoop()));

    }

    public void addTopping(Toppings topping, int quantity) {
        items.add(new OrderItem(topping.getName(), quantity, topping.getPrice()));
    }

    public void setContainer(String containerType) {
        if (containerType.equalsIgnoreCase("glass jar")) {
            this.containerprice = 5.00;
        } else {
            this.containerprice = 0.00;
        }
    }

    public double calculateSubtotal() {

        return items.stream().mapToDouble(OrderItem::getTotalPrice).sum() + containerprice;
    }

    public List<OrderItem> getItems() {
        return items;
    }



    public double getContainerprice() {

        return containerprice;

    }


    public double calculateTax() {

        return calculateSubtotal() * TAX_RATE;

    }


    public double calculateTotal() {
        return calculateSubtotal() + calculateTax();
    }



}
