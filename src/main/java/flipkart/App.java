package flipkart;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        try {
              Thread.sleep(1200000);
            } catch (InterruptedException e) {
               System.err.format("IOException: %s%n", e);
         }
    }
}
