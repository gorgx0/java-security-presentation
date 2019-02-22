package com.javasecurity.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class SensitiveOperation {

    public String getSecretKey() throws IOException {
        String keyLocation = System.getProperty("keyFile.location");
        byte[] bytes = Files.readAllBytes(Paths.get(keyLocation));
        return new String(bytes);
    }

}
