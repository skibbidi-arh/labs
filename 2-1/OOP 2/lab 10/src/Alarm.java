public class Alarm extends Security implements  Notification{

private String Passward;
    Alarm(String name, String Location)
    {

        super(name, Location);
    }


    @Override
    public void sendNotification() {
        System.out.println("False passward");
    }

   private void setPassward(String Passward) {
        this.Passward = Passward;
   }

    void activate()
    {
        isActive = true;
        sendNotification();
    }

    void deactivate(String passward)
    {
        if(isActive)
        {
            if (passward.equals(this.Passward)) isActive=false;
            else sendNotification();
        }
        else System.out.println("already deactivated");
    }

}
