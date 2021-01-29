/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.

db.mysql.url="jdbc:mysql://localhost:3306/db?characterEncoding=UTF-8&useSSL=false"
*/

// ?
//package javamysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Scanner;

import operations.AddToDatabase;
import operations.CreatePlaylist;
import operations.DeleteFromDatabase;
import operations.PrintTable;
import operations.UpdateSong;


/**
 * Class for running the program
 */
public class RunProgram {

  // The name of the MySQL account to use (or empty for anonymous)
  private String userName;
  // The password for the MySQL account (or empty for anonymous)
  private String password;
  // The name of the computer running MySQL
  private final String serverName = "localhost";
  // The port of the MySQL server (default is 3306)
  private final int portNumber = 3306;
  // The name of the database we are testing with (this default is installed with MySQL)
  private final String dbName = "music";
  // the connection used
  private Connection conn;
  // the scanner
  private Scanner scan;

  /**
   * Constructor for runProgram
   *
   * @param scan     the scanner
   * @param userName the username
   * @param password the password
   */
  public RunProgram(Scanner scan, String userName, String password) {
    this.scan = scan;
    this.userName = userName;
    this.password = password;
  }

  /**
   * Get a new database connection for the field conn
   *
   * @return the connection
   */
  public void getConnection() {
    boolean connected = false;
    while (!connected) {
      try {
        Properties connectionProps = new Properties();
        connectionProps.put("user", userName);
        connectionProps.put("password", password);

        conn = DriverManager.getConnection("jdbc:mysql://"
                + this.serverName + ":" + this.portNumber + "/" + this.dbName +
                "?characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC", connectionProps);
        System.out.println("Welcome to the music database!");
        connected = true;
      } catch (SQLException e) {
        System.out.println("ERROR: Could not connect to the database due to "
                + "incorrect username or password");
        System.out.println("Re-enter your username");
        this.userName = scan.next();
        System.out.println("re-enter your password");
        this.password = scan.next();
      }
    }
  }

  /**
   * closes the connection conn field
   */
  public void closeConnection() {
    try {
      conn.close();
      System.out.println("Connection closed");
    } catch (SQLException e) {
      System.out.println("Connection could not be closed");
      e.printStackTrace();
    }
  }

  /**
   * Run repetedly until the user tells the program to quit by calling on giveOptions
   *
   * @param scan the scanner
   */
  public void run(Scanner scan) {
    // run the program until the user breaks
    boolean running = true;
    while (running) {
      try {
        giveOptions(scan);
      } catch (IllegalArgumentException e) {
        System.out.println("Program was quit.");
        running = false;
      }
    }
  }

  /**
   * Gives the options and then calls on the appropriate methods for each input
   *
   * @param scan the scanner
   */
  private void giveOptions(Scanner scan) {
    System.out.println("Please type the number of the action you "
            + "would like to take from the following list. "
            + "\n(0) Add something to the database"
            + "\n(1) Delete something from the database"
            + "\n(2) Create a playlist based off of your preference in artist, genre, "
            + "and/or release year"
            + "\n(3) Print out the contents of a playlist"
            + "\n(4) Print out all available songs"
            + "\n(5) Update a song"
            + "\n(6) Quit");
    while (!scan.hasNextInt()) {
      System.out.println("Please enter an valid number");
      scan.next();
    }
    int choice = scan.nextInt();
    switch (choice) {
      case 0:
        AddToDatabase adder = new AddToDatabase(scan, conn);
        adder.start();
        break;
      case 1:
        DeleteFromDatabase deleter = new DeleteFromDatabase(scan, conn);
        deleter.start();
        break;
      case 2:
        CreatePlaylist creator = new CreatePlaylist(scan, conn);
        creator.start();
        break;
      case 3:
        System.out.println("What is the name of the playlist you want to see?");
        PrintTable printer = new PrintTable(conn, scan.next());
        printer.start();
        break;
      case 4:
        System.out.println("All songs are below");
        PrintTable songPrinter = new PrintTable(conn, "song");
        songPrinter.start();
        break;
      case 5:
        UpdateSong updater = new UpdateSong(scan, conn);
        updater.start();
        break;
      case 6:
        throw new IllegalArgumentException("quit program");
      default:
        System.out.println("Please input a valid number (0 - 6).");
    }
  }

}