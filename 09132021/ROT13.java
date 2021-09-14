import java.util.*;
import java.lang.*;
import java.util.stream.*;

public class ROT13 {
    public static void main (String... arg) {
        String a = "Hello World!";
        System.out.println(ROT13encrypte(a));
    }

    public static String ROT13encrypte (String st){
//        st.chars().forEach(System.out::println);
        return st.chars().mapToObj(c -> (char)(
                (64<c && c<78) || (96<c && c<110)? c+13 :
                (77<c && c<91) || (109<c && c<123)? c-13 :
                c))
                .map(Object::toString).collect(Collectors.joining());
    }
}