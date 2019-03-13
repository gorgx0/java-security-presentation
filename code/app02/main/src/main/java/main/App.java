/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package main;

import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.file.*;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.stream.Collectors;

import static java.nio.file.StandardWatchEventKinds.*;

@Slf4j
public class App {
    private static final String CODE_PROPERTIES = "CODE_PROP_FILE" ;
    private static final String CODE_JARS_PROPERTY = "codeFolder" ;
    private static final int THREAD_POOL_SIZE = 10;

    private final static ClassLoader MAIN_CL = App.class.getClassLoader();
    private final static ExecutorService executor = Executors.newFixedThreadPool(THREAD_POOL_SIZE);


    private static void startWatchingAndProcessing(Path codeJarsLocation) throws IOException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException {
        WatchService watchService = FileSystems.getDefault().newWatchService();
        WatchKey watchKey = codeJarsLocation.register(watchService, ENTRY_CREATE, ENTRY_MODIFY);
        watchKey.reset();
        while (true) {
            List<WatchEvent<?>> watchEvents = watchKey.pollEvents();
            Path lastEventPath = null;
            for (WatchEvent<?> watchEvent : watchEvents) {
                WatchEvent.Kind<?> kind = watchEvent.kind();
                if(kind==OVERFLOW) {
                    LOGGER.warn("OVERFLOW type of event");
                    continue;
                }
                WatchEvent<Path> pathEvent = (WatchEvent<Path>) watchEvent;
                Path filePath = codeJarsLocation.resolve(pathEvent.context());
                LOGGER.info("Path event for file: {}", filePath);
                if(!filePath.equals(lastEventPath)){
                    if (filePath.toFile().getName().endsWith(".jar")) {
                        processJarFile(filePath.toFile());
                    }
                }
                lastEventPath = filePath;
            }
            if(!watchKey.reset())
                LOGGER.error("Watch key is no longer valid");
        }
    }

    private static void processJarFile(File foundJarFile) throws IOException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException {
        LOGGER.info("Processing jar file: {}", foundJarFile.getName());
        Set<String> foundClasses;
        try {
            JarFile jarFile = new JarFile(foundJarFile);
            foundClasses = getJarClasses(jarFile);
            ClassLoader cl = new URLClassLoader(new URL[]{foundJarFile.toURI().toURL()}, MAIN_CL);
            for (String foundClass : foundClasses) {
                LOGGER.debug("Checking class: {}",foundClass);
                Class<?> aClass = cl.loadClass(foundClass);
                if (Runnable.class.isAssignableFrom(aClass)) {
                    LOGGER.debug("Running the runnable class {}",foundClass);
                    Constructor<?> constructor = aClass.getConstructor();
                    Runnable task = (Runnable) constructor.newInstance();
                    executor.execute(task);
                }
            }
        } catch (Exception e) {
            LOGGER.error("Error processing {}",foundJarFile.getName(),e);
        }
    }

    private static Set<String> getJarClasses(JarFile jarFile) {
        Set<String> foundClasses;
        foundClasses = jarFile.stream()
                .map(JarEntry::getRealName)
                .filter(className -> className.endsWith(".class"))
                .map(className -> className.replace("/","."))
                .map(className -> className.substring(0,className.length()-6))
                .collect(Collectors.toSet());
        return foundClasses;
    }


    private static File[] getJars(Path codeJarsLocation) {
        return codeJarsLocation.toFile().listFiles((dir, name) -> name.endsWith(".jar"));
    }

    private static Path getJarsPath() throws IOException {
        String propertiesFileLocation =
                System.getProperty(CODE_PROPERTIES, "code.properties");
        Properties properties = new Properties();
        LOGGER.info("Processing properties file: {}",propertiesFileLocation);
        @NonNull InputStream propertiesAsInputStream = App.class.getClassLoader().getResourceAsStream(propertiesFileLocation);
        properties.load(propertiesAsInputStream);

        String codeJarsLocation = properties.getProperty(CODE_JARS_PROPERTY);
        LOGGER.info("codeJarsLocation: {}", codeJarsLocation);
        return Paths.get(codeJarsLocation);
    }

    public static void main(String[] args) throws IOException, ClassNotFoundException, InvocationTargetException, NoSuchMethodException, InstantiationException, IllegalAccessException {
        Path codeJarsLocation = getJarsPath();

        if(!codeJarsLocation.toFile().exists()){
            LOGGER.error("Code jars location {} does not exists",codeJarsLocation);
            System.exit(1);
        }

        File[] foundJarFiles = getJars(codeJarsLocation);

        for (File foundJarFile : foundJarFiles) {
            LOGGER.info("Processing intially found jar: {}",foundJarFile.getName());
            processJarFile(foundJarFile);
        }

        startWatchingAndProcessing(codeJarsLocation);
    }

}
