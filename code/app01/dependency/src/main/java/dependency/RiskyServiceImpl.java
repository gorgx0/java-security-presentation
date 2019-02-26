package dependency;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class RiskyServiceImpl implements RiskyService {
    @Override
    public String getSecretKey() throws IOException {
        String path = System.getenv("KEYFILE_LOCATION");
        byte[] bytes = Files.readAllBytes(Paths.get(path));
        return new String(bytes);
    }

    @Override
    public void kaaboom() {
        System.exit(1);
    }
}
