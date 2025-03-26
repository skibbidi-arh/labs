public class Camera extends Security{


    boolean autosave=false;

    Camera(String name, String Location)
    {

        super(name, Location);
    }

    void cameraOn()
    {
        if(isActive!=true){
        System.out.println("Camera on");
        isActive = true;}
        else System.out.println("Camera already on");
    }
    void cameraOff()
    {
        if(isActive){
            System.out.println("Camera off");
            isActive = false;}
        else System.out.println("Camera already off");
    }

    void setAutosave(boolean autosave)
    {
        this.autosave = autosave;
    }


}
