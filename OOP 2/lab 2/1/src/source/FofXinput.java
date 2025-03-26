package source;
import java.io.*;
import java.util.Scanner;

public class FofXinput {
    int b[] =new int[75];
    Scanner sc = new Scanner(System.in);

    int[][] a= new int[38][75];
    void Fofx1(){
        System.out.println("Enter type  ");
        System.out.println("trigonometry , inverse trigonometry, log ");
        String type = sc.nextLine();
        System.out.println("Enter cofficient ");
        switch (type) {
            case "trigonometry":
                trigonometry();
                break;
                case "inverse trigonometry":
                    arcTrigonometry();
                    break;

        };

    }

    private void trigonometry() {
        System.out.println("Is there any power of x multiplied with it?- y/n");
        String yn = sc.nextLine();
        if (yn.equals("y")) {
            trigowithxmultiplied();

        } else {
            //System.out.println("sin, cos , tan, csc, sec, cot?");
            System.out.println("Whats inside? x, x^2 ar x^3 ?");
            String v = sc.nextLine();
            // System.out.println("Enter cofficient  ");
            switch (v) {
                case "x":
                    x();
                    break;
                case "x^2":
                    x2();
                    break;
                case "x^3":
                    x3();
                    break;

            }


        }
    }

    private void  trigowithxmultiplied(){
        System.out.println("whats multiplied? x, x^2 ar x^3 ?");
        String v = sc.nextLine();
        switch (v) {
            case "x":
                xmultiplied();
                break;
                case "x^2":
                    x2multiplied();
                    break;
                    case "x^3":
                        x3multiplied();
                        break;
        }



    }


    private void xmultiplied(){



    }

    private void x2multiplied(){

    }

    private void x3multiplied(){


    }






    private void xtrigox(){
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[64] = c;
    }

    private void xtrigox2(){
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[63] = c;
    }

    private void xtrigox3(){
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[62] = c;
    }

    private void x2trigox(){
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[61] = c;
    }

    private void x2trigox2(){
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[60] = c;
    }

    private void x2trigox3(){
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[59] = c;
    }

    private void x3trigox(){
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[58] = c;
    }

    private void x3trigox2(){
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[57] = c;
    }

    private void x3trigox3(){
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[56] = c;
    }














    private void x(){
        System.out.println("sin, cos , tan, csc, sec, cot?");
        String c=sc.nextLine();
        switch (c){
            case "sin":
                xsin();
                break;
                case "cos":
                    xcos();
                    break;
                    case "tan":
                        xtan();
                        break;
                        case "csc":
                            xcosec();
                            break;
                            case "sec":
                                xsec();
                                break;
                                case "cot":
                                    xcot();
                                    break;

        }

    }

    private void x2() {
        System.out.println("sin, cos, tan, csc, sec, cot?");
        String c = sc.nextLine();
        switch (c) {
            case "sin": x2sin(); break;
            case "cos": x2cos(); break;
            case "tan": x2tan(); break;
            case "csc": x2cosec(); break;
            case "sec": x2sec(); break;
            case "cot": x2cot(); break;
        }
    }

    private void x3() {
        System.out.println("sin, cos, tan, csc, sec, cot?");
        String c = sc.nextLine();
        switch (c) {
            case "sin": x3sin(); break;
            case "cos": x3cos(); break;
            case "tan": x3tan(); break;
            case "csc": x3cosec(); break;
            case "sec": x3sec(); break;
            case "cot": x3cot(); break;
        }
    }


    private void xsin() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[15] = c;
    }

    private void xcos() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[16] = c;
    }

    private void xtan() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[17] = c;
    }

    private void xsec() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[18] = c;
    }

    private void xcosec() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[19] = c;
    }

    private void xcot() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[20] = c;
    }

    private void x2sin() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[9] = c;
    }

    private void x2cos() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[10] = c;
    }

    private void x2tan() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[11] = c;
    }

    private void x2sec() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[12] = c;
    }

    private void x2cosec() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[13] = c;
    }

    private void x2cot() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[14] = c;
    }

    private void x3sin() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[3] = c;
    }

    private void x3cos() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[4] = c;
    }

    private void x3tan() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[5] = c;
    }

    private void x3sec() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[6] = c;
    }

    private void x3cosec() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[7] = c;
    }

    private void x3cot() {
        System.out.println("Enter coefficient:");
        int c = sc.nextInt();
        b[8] = c;
    }

    private void arcTrigonometry() {
        System.out.println("Whats inside? x, x^2 or x^3 ?");
        String v = sc.nextLine();

        switch (v) {
            case "x":
                arcX();
                break;
            case "x^2":
                arcX2();
                break;
            case "x^3":
                arcX3();
                break;
        }
    }

    private void arcX() {
        System.out.println("arcsin, arccos, arctan, arcsec, arccosec, arccot?");
        String c = sc.nextLine();

        switch (c) {
            case "arcsin": arcXsin(); break;
            case "arccos": arcXcos(); break;
            case "arctan": arcXtan(); break;
            case "arcsec": arcXsec(); break;
            case "arccosec": arcXcosec(); break;
            case "arccot": arcXcot(); break;
        }
    }

    private void arcX2() {
        System.out.println("arcsin, arccos, arctan, arcsec, arccosec, arccot?");
        String c = sc.nextLine();

        switch (c) {
            case "arcsin": arcX2sin(); break;
            case "arccos": arcX2cos(); break;
            case "arctan": arcX2tan(); break;
            case "arcsec": arcX2sec(); break;
            case "arccosec": arcX2cosec(); break;
            case "arccot": arcX2cot(); break;
        }
    }

    private void arcX3() {
        System.out.println("arcsin, arccos, arctan, arcsec, arccosec, arccot?");
        String c = sc.nextLine();

        switch (c) {
            case "arcsin": arcX3sin(); break;
            case "arccos": arcX3cos(); break;
            case "arctan": arcX3tan(); break;
            case "arcsec": arcX3sec(); break;
            case "arccosec": arcX3cosec(); break;
            case "arccot": arcX3cot(); break;
        }
    }

    private void arcXsin() { System.out.println("Enter coefficient:"); b[42] = sc.nextInt(); }
    private void arcXcos() { System.out.println("Enter coefficient:"); b[43] = sc.nextInt(); }
    private void arcXtan() { System.out.println("Enter coefficient:"); b[44] = sc.nextInt(); }
    private void arcXsec() { System.out.println("Enter coefficient:"); b[45] = sc.nextInt(); }
    private void arcXcosec() { System.out.println("Enter coefficient:"); b[46] = sc.nextInt(); }
    private void arcXcot() { System.out.println("Enter coefficient:"); b[47] = sc.nextInt(); }

    private void arcX2sin() { System.out.println("Enter coefficient:"); b[36] = sc.nextInt(); }
    private void arcX2cos() { System.out.println("Enter coefficient:"); b[37] = sc.nextInt(); }
    private void arcX2tan() { System.out.println("Enter coefficient:"); b[38] = sc.nextInt(); }
    private void arcX2sec() { System.out.println("Enter coefficient:"); b[39] = sc.nextInt(); }
    private void arcX2cosec() { System.out.println("Enter coefficient:"); b[40] = sc.nextInt(); }
    private void arcX2cot() { System.out.println("Enter coefficient:"); b[41] = sc.nextInt(); }

    private void arcX3sin() { System.out.println("Enter coefficient:"); b[30] = sc.nextInt(); }
    private void arcX3cos() { System.out.println("Enter coefficient:"); b[31] = sc.nextInt(); }
    private void arcX3tan() { System.out.println("Enter coefficient:"); b[32] = sc.nextInt(); }
    private void arcX3sec() { System.out.println("Enter coefficient:"); b[33] = sc.nextInt(); }
    private void arcX3cosec() { System.out.println("Enter coefficient:"); b[34] = sc.nextInt(); }
    private void arcX3cot() { System.out.println("Enter coefficient:"); b[35] = sc.nextInt(); }




    public static void main(String[] args) {
        FofXinput f = new FofXinput();
        f.Fofx1();
    }



}
