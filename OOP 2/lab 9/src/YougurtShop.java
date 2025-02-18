import java.util.*;
public class YougurtShop {

    List<OrderItem> items = new ArrayList<>();

    public void Yougurtshop()
    { }

    public  YogurtFlavor CookiesandCream() {
        return new YogurtFlavor("Cookies and cream", 2.80);
    }

    public  YogurtFlavor ChocolateFudge() {
        return new YogurtFlavor("Chocolate fudge", 3.00);
    }

    public  YogurtFlavor PistachioDelight() {
        return new YogurtFlavor("Pistachio Delight", 3.25);
    }

    public  Toppings Sprinkles() {
        return new Toppings("Sprinkles", 0.30);
    }

    public Toppings MixedChoppedNuts() {
        return new Toppings("Mixed Chopped Nuts", 0.80);
    }

    public  Toppings CrushedGingerbread() {
        return new Toppings("Crushed Gingerbread", 0.75);
    }

    public  Toppings FreshStrawberries() {
        return new Toppings("Fresh Strawberries", 1.00);
    }



}
