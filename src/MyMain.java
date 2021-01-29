import java.util.Scanner;

public class MyMain {

  /**
   * Runs the music database program.
   *
   * @param args the arguments
   */
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    System.out.println("Enter your username");
    String userName = scan.next();
    System.out.println("Enter your password");
    String password = scan.next();

    RunProgram app = new RunProgram(scan, userName, password);

    app.getConnection();
    app.run(scan);
    app.closeConnection();
  }
}
