public class SmokeDetector extends Sensor implements Notification{

    SmokeDetector(String name, String Location)
    {

        super(name, Location);
    }

    @Override
    public void sendNotification() {
        System.out.println("Smoke detected");
    }

    void detectSmoke(int smoke)
    {
        if(smoke >= 100) setScale(8);
    }

    void checkSmoke()
    {
        if (getScale()>5)sendNotification();
    }





}
