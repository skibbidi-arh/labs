package source;

public class ChildrenBook extends Book {

    public ChildrenBook() {
        this.BaseFine = 0.5;
        this.AdditionalFine = 0.75;
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
