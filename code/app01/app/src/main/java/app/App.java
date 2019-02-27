/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package app;


import dependency.RiskyService;
import dependency.RiskyServiceImpl;

import java.io.IOException;

public class App {

    private final RiskyService riskyService;

    public App(RiskyService riskyService) {
        this.riskyService = riskyService;
    }

    public String getSecretKey() throws IOException {
        return riskyService.getSecretKey();
    }

    public void kaaboom() {
        riskyService.kaaboom();
    }

    public static void main(String[] args) throws IOException {
        App app = new App(new RiskyServiceImpl());
        System.out.println("*************** APP ****************");
        System.out.println(app.getSecretKey());
        app.kaaboom();
        System.out.println("************************************");
    }
}