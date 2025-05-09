package test;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import java.util.ArrayList;
import org.junit.Test;
import source.Book;
import source.ChildrenBook;
import source.FictionBook;
import source.NonFictionBook;

public class TEST {

  @Test
  public void testBookRest()
  {
    Book bk = new Book();
    Double rent= bk.getRent();
    Double expectedRent=6.0;
    assertEquals(expectedRent,rent);

  }
@Test
  public void testFictionBook()
{
  FictionBook fbk = new FictionBook();
  Double BaseFine=fbk.getBaseFine();
  Double expectedBaseFine=1.0;
  assertEquals(expectedBaseFine,BaseFine);
  Double AdditionalFine = fbk.getAdditionalFine();
  Double expectedAdditionalFine=1.5;
  assertEquals(expectedAdditionalFine,AdditionalFine);

}

@Test
public void testNonFictionBook()
{
  NonFictionBook nfbk = new NonFictionBook();
  Double BaseFine=nfbk.getBaseFine();
  Double AdditionalFine=nfbk.getAdditionalFine();
  Double expectedBaseFine=1.5;
  Double expectedAdditionalFine=2.5;
  assertEquals(expectedBaseFine,BaseFine);
  assertEquals(expectedAdditionalFine,AdditionalFine);

}
@Test
public void testChildrenBook()
{
  ChildrenBook cbk = new ChildrenBook();
  Double BaseFine=cbk.getBaseFine();
  Double AdditionalFine=cbk.getAdditionalFine();
  Double expectedBaseFine=0.5;
  Double expectedAdditionalFine=0.75;
  assertEquals(expectedBaseFine,BaseFine);
  assertEquals(expectedAdditionalFine,AdditionalFine);

}

@Test
  public void testFictionRent()
{
  Double expected1stFine=11.0;
  Double expected2ndFine=16.0;
  Double expected3rdFine=17.5;
  FictionBook fbk = new FictionBook();
  Double firstFine= fbk.calculatefine(5);
  Double secondFine= fbk.calculatefine(10);
  Double thirdFine= fbk.calculatefine(11);
  assertEquals(expected1stFine,firstFine);
  assertEquals(expected2ndFine,secondFine);
  assertEquals(expected3rdFine,thirdFine);

}
@Test
public void testNonFictionRent()
{
  Double expected1stFine=13.5;
  Double expected2ndFine=21.0;
  Double expected3rdFine=26.0;
  NonFictionBook fbk = new NonFictionBook();
  Double firstFine= fbk.calculatefine(5);
  Double secondFine= fbk.calculatefine(10);
  Double thirdFine= fbk.calculatefine(12);
  assertEquals(expected1stFine,firstFine);
  assertEquals(expected2ndFine,secondFine);
  assertEquals(expected3rdFine,thirdFine);

}
@Test
public void testChildrenRent1()
{
  Double expected1stFine=8.5;
  Double expected2ndFine=11.0;
  Double expected3rdFine=12.5;
  ChildrenBook fbk = new ChildrenBook();
  Double firstFine= fbk.calculatefine(5);
  Double secondFine= fbk.calculatefine(10);
  Double thirdFine= fbk.calculatefine(12);
  assertEquals(expected1stFine,firstFine);
  assertEquals(expected2ndFine,secondFine);
  assertEquals(expected3rdFine,thirdFine);

}



}






