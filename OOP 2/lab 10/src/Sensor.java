public class Sensor extends Device{
    Sensor(String name, String Location)
    {

        super(name, Location);
    }

    int scale;
    void setScale(int scale)
    {
        this.scale = scale;
    }
    int getScale()
    {
        return scale;
    }

}
