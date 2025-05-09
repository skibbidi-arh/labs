import java.util.*;
public class manager {

List<Device> ls=new ArrayList();

void add(Device d)
{
    ls.add(d);
    System.out.println("Device added");
}

void remove(Device d)
{
    ls.remove(d);
    System.out.println("Device removed");
}


}
