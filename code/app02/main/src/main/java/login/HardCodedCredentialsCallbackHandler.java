package login;

import lombok.extern.slf4j.Slf4j;

import javax.security.auth.callback.*;
import java.io.IOException;

@Slf4j
public class HardCodedCredentialsCallbackHandler implements CallbackHandler {

    @Override
    public void handle(Callback[] callbacks) throws IOException, UnsupportedCallbackException {

        for (Callback callback : callbacks) {
            LOGGER.debug("Processing callback {}",callback.toString());
            if(callback instanceof NameCallback) {
                ((NameCallback)callback).setName("mk");
            }else if(callback instanceof PasswordCallback) {
                ((PasswordCallback)callback).setPassword("password01".toCharArray());
            }
        }

    }
}
