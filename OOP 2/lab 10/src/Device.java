abstract class Device {

    String name;
    String location;
    boolean status;
    Device(String name, String location) {
        this.name = name;
        this.location = location;
        this.status = false;
    }

    void turnon()
    {
        this.status = true;
    }
    void turnoff()
    {
        this.status = false;
    }

    void getStatus()
    {
        if (this.status) System.out.println(this.name + " is on");
        else System.out.println(this.name + " is off");
    }


}
