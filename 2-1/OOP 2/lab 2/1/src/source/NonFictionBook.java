package source;

public class NonFictionBook extends Book {


    public NonFictionBook() {
        this.BaseFine = 1.5;
        this.AdditionalFine = 2.5;
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
