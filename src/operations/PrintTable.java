package operations;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import operations.Operation;

public class PrintTable implements Operation {
  private String table;
  private Connection conn;

  /**
   * Constructor
   * @param table name of the table to be printed
   */
  public PrintTable(Connection conn, String table) {
    this.conn = conn;
    this.table = table;
  }

  @Override
  public void start() {
    printTable();
  }

  /**
   * prints the table
   */
  private void printTable() {
    try {
      CallableStatement insert =
              conn.prepareCall("{call return_playlist(?)}");
      insert.setString(1, table);
      ResultSet result = insert.executeQuery();
      System.out.printf("\n%-80s %-10s %-35s %-25s %-10s %-10s\n\n",
              "title",
              "year",
              "artist",
              "genre",
              "BPM",
              "energy");
      while (result.next()) {
        String title = result.getString(1);
        String year = result.getString(2);
        if (year == null) {
          year = "";
        }
        String artist = result.getString(3);
        String genre = result.getString(4);
        if (genre == null) {
          genre = "";
        }
        String bpm = result.getString(5);
        if (bpm == null) {
          bpm = "";
        }
        String energy = result.getString(6);
        if (energy == null) {
          energy = "";
        }
        System.out.printf("%-80s %-10s %-35s %-25s %-10s %-10s\n\n",
                title, year, artist, genre, bpm, energy);
      }
    } catch (SQLException e) {
      System.out.println("The playlist " + table + " does not exist so it can not"
              + "be printed out");
    }
  }
}
