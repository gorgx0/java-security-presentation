package dependency;

import lombok.extern.slf4j.Slf4j;

import javax.security.auth.login.LoginContext;
import javax.security.auth.login.LoginException;
import java.security.PrivilegedAction;
import java.security.PrivilegedExceptionAction;

@Slf4j
public class DangerousTask implements PrivilegedExceptionAction {


    @Override
    public Object run() {
        String secret_key_location = System.getProperty("SECRET_KEY_LOCATION");
        System.out.println("Secret key location: " + secret_key_location);
        return null;
    }

}
