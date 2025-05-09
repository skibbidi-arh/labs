import java.io.*;

import  java.util.*;

public class Main {
    public static List<Book> books = new ArrayList<>();
    public static void main(String[] args) {
        String filename= "info.csv.txt";
        String determiner =",";
        String line ;

try(BufferedReader br = new BufferedReader(new FileReader(filename))) {

    while ((line = br.readLine())!= null) {
        String[] data = line.split(determiner);
        int pages = Integer.parseInt(data[3]);
        books.add(new Book(data[0],data[1],data[2],pages,data[4]));

    }
}

catch (IOException e)
{
    System.out.println(e.getMessage());
}

//////////////////////////////////////////////////////////

int total = books.size();
        System.out.println("The number of books she read is "+total);

 // ///////////////////////////////////////////////////////////////////
        int x=total;
        int page = 0;
 while(x>0)
 {
     x--;
    page=books.get(x).getPages()+page;

 }
        System.out.println("The average page number is "+ page/books.size());

////////////////////////////////////////////////////////////////////////////////////////////////
int y= total;
int jan=0,feb=0,march=0,april=0,june=0,july=0,august=0,september=0,october=0;
while(y>0)
{
    y--;

    String date = books.get(y).getDate();
    String[] dat=date.split("-");
    int month=Integer.parseInt(dat[1]);
    switch (month)
    {
        case 1:
            jan++;
            break;
            case 2:
                feb++;
                break;
                case 3:
                    march++;
                    break;
                    case 4:
                        april++;
                        break;
                        case 5:
                            june++;
                            break;
                            case 6:
                                july++;
                                break;
                                case 7:
                                    august++;
                                    break;
                                    case 8:
                                        september++;
                                        break;
    }

}
        System.out.println("The number of books she read each month is: ");
        System.out.println("Jan: "+jan);
        System.out.println("Feb: "+feb);
        System.out.println("March: "+march);
        System.out.println("April: "+april);
        System.out.println("June: "+june);
        System.out.println("July: "+july);
        System.out.println("August: "+august);
        System.out.println("September: "+september);
        System.out.println("October: "+october);

////////////////////////////////////////////////////////////////////////////////////////
int z= total;
int[] len = new int[z];
while (z<0)
{
    z--;
    len[z]=books.get(z).getPages();


}
Arrays.sort(len);


/////////////////////////////////////////////////////////////////////////////////////////////
    }


}
