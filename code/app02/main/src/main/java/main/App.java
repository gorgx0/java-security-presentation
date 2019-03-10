/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package main;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.*;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static java.nio.file.StandardWatchEventKinds.*;

@Slf4j
public class App {
    private static final String CODE_PROPERTIES = "CODE_PROP_FILE" ;
    private static final String CODE_JARS_PROPERTY = "codeFolder" ;


    public String getGreeting() {
        return "Hello world.";
    }

    public static void main(String[] args) throws IOException, MalformedURLException, InterruptedException {
        String codeJarsLocation = getJarsPath();

        List<URL> foundJarFiles = getJars(codeJarsLocation);


        WatchService watchService = FileSystems.getDefault().newWatchService();
        WatchKey watchKey = Paths.get(codeJarsLocation).register(watchService, ENTRY_CREATE, ENTRY_DELETE, ENTRY_MODIFY);

        List<WatchEvent<?>> watchEvents = watchKey.pollEvents();

        for (WatchEvent<?> watchEvent : watchEvents) {
            System.out.println(watchEvent);
        }

        while (true){
            WatchKey key = watchService.poll(5, TimeUnit.MINUTES);
            System.out.println(key.isValid());
            List<WatchEvent<?>> watchEvents1 = key.pollEvents();
            for (WatchEvent<?> watchEvent : watchEvents1) {
                Object context = watchEvent.context();
                System.out.println(context);
            }
            key.reset();
        }


//        ClassLoader parent = App.class.getClassLoader();
//        Set<URL> jarUrls = Arrays.stream(foundJarFiles).map(File::toURI).map(uri -> {
//            try {
//                return uri.toURL();
//            } catch (MalformedURLException e) {
//                e.printStackTrace();
//            }
//            return null;
//        }).collect(Collectors.toSet());


//        URLClassLoader urlClassLoader = new URLClassLoader();
//        System.out.println(new App().getGreeting());
    }

    private static List<URL> getJars(String codeJarsLocation) {
        return Arrays.stream(Paths.get(codeJarsLocation).toFile().listFiles(new FilenameFilter() {
            @Override
            public boolean accept(File dir, String name) {
                return name.endsWith(".jar");
            }
        })).map(App::fileToUrl).filter(Optional::isPresent).map(Optional::get).collect(Collectors.toList());
    }

    private static String getJarsPath() throws IOException {
        String propertiesFileLocation =
                System.getProperty(CODE_PROPERTIES, "code.properties");
        Properties properties = new Properties();
        InputStream propertiesAsInputStream = App.class.getClassLoader().getResourceAsStream(propertiesFileLocation);
        properties.load(propertiesAsInputStream);

        return properties.getProperty(CODE_JARS_PROPERTY);
    }


    private static Optional<URL> fileToUrl(File file) {
        Optional<URL> ret = Optional.empty();
        try {
            ret = Optional.of(file.toURI().toURL());
        } catch (MalformedURLException e) {
            LOGGER.error("Error converting file: ",file.getName(),e);
        }
        return ret;
    }
}