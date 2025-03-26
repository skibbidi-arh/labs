public class HumiditySensor extends Sensor implements Notification{

    HumiditySensor(String name, String Location)
    {

        super(name, Location);
    }

    @Override
    public void sendNotification() {
        System.out.println("Humidity Sensor Notification");
    }


}
