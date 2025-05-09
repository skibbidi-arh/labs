import java.io.FileWriter;
import java.io.IOException;


class Invoice {
    public void saveToFile(Order order, String filename) throws IOException {
        try (FileWriter writer = new FileWriter(filename,true)) {

            for (OrderItem item : order.getItems()) {
                writer.write(item.toString() + "\n");
            }


            writer.write("Container: $" + String.format("%.2f", order.getContainerprice()) + "\n");


            writer.write("Subtotal: $" + String.format("%.2f", order.calculateSubtotal()) + "\n");


            writer.write("Tax: $" + String.format("%.2f", order.calculateTax()) + "\n");


            writer.write("Total Amount Due: $" + String.format("%.2f", order.calculateTotal()) + "\n");
        }
    }

    public String generate(Order order) {
        StringBuilder invoice = new StringBuilder();
        for (OrderItem item : order.getItems()) {
            invoice.append(item.toString()).append("\n");
        }
        invoice.append("Container: $").append(String.format("%.2f", order.getContainerprice())).append("\n");
        invoice.append("Subtotal: $").append(String.format("%.2f", order.calculateSubtotal())).append("\n");
        invoice.append("Tax: $").append(String.format("%.2f", order.calculateTax())).append("\n");
        invoice.append("Total Amount Due: $").append(String.format("%.2f", order.calculateTotal())).append("\n");
        return invoice.toString();
    }
}
