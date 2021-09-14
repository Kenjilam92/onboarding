import java.util.*;

public class DecToOct {
    public static void main( String... vararg ){
        int a = 456;
        System.out.println(converter(a));
    }
    public static String converter( int n){
        String result = new String();
        while (n!=0){
            result = (n%8) + result;
            n/=8;
        }
        return result;
    }
}