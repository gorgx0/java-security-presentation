package dependency;

import java.io.IOException;

public interface RiskyService {

    String getSecretKey() throws IOException;

    void kaaboom();

}
