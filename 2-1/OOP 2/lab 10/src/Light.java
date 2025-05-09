public class Light extends Power{

    Light(String name, String Location)
    {

        super(name, Location);
    }

    int lux;
    String color;

    void setlux(int lux)
    {
        this.lux = lux;
    }

    void setColor(String color)
    {
        this.color = color;
    }


    @Override
    void adjustPower() {
        System.out.println("Adjusting lux to " + lux);
        System.out.println("Adjusting color to " + color);

    }
}
