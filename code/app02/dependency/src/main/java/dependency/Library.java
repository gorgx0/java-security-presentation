/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package dependency;


public class Library implements Runnable{

    private void info(){
        System.out.println("This is a library file");
    }

    @Override
    public void run() {
        info();
    }
}
