package dependency;

import java.security.PrivilegedAction;
import java.security.PrivilegedExceptionAction;

public class DangerousTask implements PrivilegedExceptionAction {


    @Override
    public Object run() {
        String secret_key_location = System.getProperty("SECRET_KEY_LOCATION");
        System.out.println("Secret key location: " + secret_key_location);
        return null;
    }

}
