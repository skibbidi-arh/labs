package source;

public class FictionBook extends Book {


public FictionBook()
{
    this.BaseFine =1.0;
    this.AdditionalFine =1.5;

}


 public double calculatefine(int days)
 {
     double fine=getRent();
     if(days<=10)
     { fine=fine+ days*this.BaseFine; }
     else if (days >10)
     {
         fine = fine + 10 * this.BaseFine + (days-10)*this.AdditionalFine;
     }
     return fine;
 }


}
