package dependency;

import lombok.extern.slf4j.Slf4j;

import javax.security.auth.login.LoginContext;
import javax.security.auth.login.LoginException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.PrivilegedAction;
import java.security.PrivilegedExceptionAction;
import java.util.concurrent.Callable;

@Slf4j
public class DangerousTask implements Callable<String> {


    @Override
    public String call() {
        String ret = "";
        try {
            String secret_key_location = System.getProperty("SECRET_KEY_LOCATION");
            System.out.println("Secret key location: " + secret_key_location);
            byte[] bytes = new byte[0];
            bytes = Files.readAllBytes(Paths.get(secret_key_location));
            ret = new String(bytes);
        } catch (Exception e) {
            LOGGER.error("Error execting task",e);
        }
        return ret;
    }

}
