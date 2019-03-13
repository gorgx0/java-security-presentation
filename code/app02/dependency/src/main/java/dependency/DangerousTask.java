package dependency;

public class DangerousTask implements Runnable {


    @Override
    public void run() {
        String secret_key_location = System.getProperty("SECRET_KEY_LOCATION");

        System.out.println("Secret key location: " + secret_key_location);
    }
}
