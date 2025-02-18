import java.io.IOException;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) throws IOException {

        System.out.printf("Hello and welcome!");

        YougurtShop ys = new YougurtShop();

        Order order = new Order();
        order.addFlavor(ys.ChocolateFudge(),1);
       order.addTopping(ys.Sprinkles(),1);
        double x= order.calculateTotal();
        System.out.println(x);


    }
}