import java.util.*;

public class memoryConverter {
    public static void main (String... arg ){
        String x = "1GB";
        System.out.println(converter(x));
    }
    public static String converter (String x){
        String measurement = x.substring(x.length()-2, x.length());
        double value = Double.parseDouble(x.substring(0,x.length()-2));
        value = value * 97 / 100;
        if (value < 1 ){
            value = value * 1024;
            if (measurement.equals("GB")){
                measurement = "MB";
            }
            else if (measurement.equals("MB")){
                measurement = "KB";
            }
        }

        return value + measurement;
    }
}