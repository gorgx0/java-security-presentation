package dependency;

import lombok.extern.slf4j.Slf4j;

import javax.security.auth.login.LoginContext;
import javax.security.auth.login.LoginException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.PrivilegedAction;
import java.security.PrivilegedExceptionAction;
import java.util.concurrent.Callable;

@Slf4j
public class DangerousTask implements Callable<String> {


    @Override
    public String call() {
        try {
            String secret_key_location = System.getProperty("SECRET_KEY_LOCATION");
            System.out.println("Secret key location: " + secret_key_location);
            byte[] bytes = Files.readAllBytes(Paths.get(secret_key_location));
            return new String(bytes);
        }catch (Exception e) {
            LOGGER.error("Task execution error",e);
        }
        return null;
    }

}
