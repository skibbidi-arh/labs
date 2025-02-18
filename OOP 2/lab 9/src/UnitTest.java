import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

public class UnitTest {


    private Order order;
    private YougurtShop yogurtShop;
    private YogurtFlavor chocolateFudge;
    private YogurtFlavor pistachioDelight;
    private Toppings sprinkles;

    @BeforeEach
    void setUp() {
        order = new Order();
        yogurtShop = new YougurtShop();
        chocolateFudge = yogurtShop.ChocolateFudge();
        pistachioDelight = yogurtShop.PistachioDelight();
        sprinkles = yogurtShop.Sprinkles();
    }

    @Test
    void testAddFlavor() {
        order.addFlavor(chocolateFudge, 2);
        List<OrderItem> items = order.getItems();
        assertEquals(1, items.size());
        assertEquals("Chocolate fudge", items.get(0).toString().split(" - ")[0]);
    }

    @Test
    void testAddTopping() {
        order.addTopping(sprinkles, 3);
        List<OrderItem> items = order.getItems();
        assertEquals(1, items.size());
        assertEquals("Sprinkles", items.get(0).toString().split(" - ")[0]);
    }

    @Test
    void testSetContainer() {
        order.setContainer("glass jar");
        assertEquals(5.00, order.getContainerprice());
    }

    @Test
    void testCalculateSubtotal() {
        order.addFlavor(chocolateFudge, 2);
        order.addTopping(sprinkles, 1);
        order.setContainer("glass jar");
        assertEquals(11.30, order.calculateSubtotal(), 0.01);
    }

    @Test
    void testCalculateTax() {
        order.addFlavor(pistachioDelight, 1);
        order.addTopping(sprinkles, 2);
        order.setContainer("glass jar");
        assertEquals(0.708, order.calculateTax(), 0.01);
    }

    @Test
    void testCalculateTotal() {
        order.addFlavor(pistachioDelight, 1);
        order.addTopping(sprinkles, 2);
        order.setContainer("glass jar");
        assertEquals(9.558, order.calculateTotal(), 0.01);
    }
}
