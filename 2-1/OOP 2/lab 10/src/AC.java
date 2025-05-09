public class AC extends Power{

    AC(String name, String Location)
    {

        super(name, Location);
    }

    boolean h;
    void setHigh()
    {
        this.h = true;
    }
    void  setlow()
    {
        this.h = false;
    }


    @Override
    void adjustPower() {

        if (h) System.out.println("High");
        else System.out.println("Low");

    }
}
