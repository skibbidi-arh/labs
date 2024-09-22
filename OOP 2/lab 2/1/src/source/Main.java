//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
package source;

import test.TEST;

public class Main {
    public static void main(String[] args) {
        TEST ts =new TEST();
        FictionBook fb =new FictionBook();
        System.out.println(fb.calculatefine(11));


    }
}
/*
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
 */