package operations;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

/**
 * Interface for all operation classes supported by the program
 */
public interface Operation {

  /**
   * Starts the operation
   */
  void start();

  /**
   * Gets "y", "Y", "n", or "N" from the given scanner
   * @param scan the scanner
   * @param input the current input. if it is not "y", "Y", "n", or "N" it is replaced by the next
   *              scanner input
   * @return "y", "Y", "n", or "N"
   */
  default String getYorN(Scanner scan, String input) {
    String choice = input;
    while (!choice.equals("y") && !choice.equals("Y")
            && !choice.equals("n") && !choice.equals("N")) {
      System.out.println("Please enter y for yes or n for no");
      choice = scan.next();
    }
    return choice;
  }

  /**
   * Reads in an int from the scanner with error messages if a non-int value is typed
   * @param conn the connection
   * @param scan the scanner
   * @return an int from the scanner
   */
  default int getNextInt(Connection conn, Scanner scan) {
    while (!scan.hasNextInt()) {
      System.out.println("Please enter an valid number");
      scan.next();
    }
    return scan.nextInt();
  }

  /**
   * Determines if the given artist name is in the database
   * @param conn the connection
   * @param artistToCheck the artist to be validated
   * @return whether or not the artist is in the database
   */
  default boolean validArtist(Connection conn, String artistToCheck) {
    boolean isValid = false;
    try {
      // get all of the artists
      String allArtistQuery = "Select * from artist";
      Statement stmt = conn.createStatement();
      ResultSet allArtist = stmt.executeQuery(allArtistQuery); // This will throw a SQLException
                                                              // if it fails

      try {
        // create a list of all possible artists from the result set
        ArrayList<String> artistList = new ArrayList<String>();
        while (allArtist.next()) {
          artistList.add(allArtist.getString(1));
        }
        // checks the validity of the name
        isValid = artistList.stream().anyMatch(s -> s.equalsIgnoreCase(artistToCheck));
      } catch (SQLException e) {
        System.out.println("Error: database problem when validating artist");
        e.printStackTrace();
        isValid = false;
      }
      // close the result set/statement
      stmt.close();
    } catch (SQLException e) {
      System.out.println("Error: Query could not be run");
    }
    return isValid;
  }

  /**
   * Determines if the given genre is in the database
   * @param conn the connection
   * @param genreToCheck the genre to be validated
   * @return whether or not the genre is in the database
   */
  default boolean validGenre(Connection conn, String genreToCheck) {
    boolean isValid = false;
    try {
      // get all of the genres
      String allGenreQuery = "Select * from genre";
      Statement stmt = conn.createStatement();
      ResultSet allGenre = stmt.executeQuery(allGenreQuery); // This will throw a SQLException
      // if it fails

      try {
        // create a list of all possible genre from the result set
        ArrayList<String> genreList = new ArrayList<String>();
        while (allGenre.next()) {
          genreList.add(allGenre.getString(1));
        }
        // checks the validity of the name
        isValid = genreList.stream().anyMatch(s -> s.equalsIgnoreCase(genreToCheck));
      } catch (SQLException e) {
        System.out.println("Error: database problem when validating genre");
        isValid = false;
      }
      // close the result set/statement
      stmt.close();
    } catch (SQLException e) {
      System.out.println("Error: Query could not be run");
      e.printStackTrace();
    }
    return isValid;
  }

  /**
   * Determines if the given year is in the database
   * @param conn the connection
   * @param yearToCheck the year to be validated
   * @return whether or not the year is in the database
   */
  default boolean validYear(Connection conn, String yearToCheck) {
    boolean isValid = false;
    try {
      // get all of the years
      String allYearQuery = "Select * from my_year";
      Statement stmt = conn.createStatement();
      ResultSet allYear = stmt.executeQuery(allYearQuery); // This will throw a SQLException
      // if it fails

      try {
        // create a list of all possible years from the result set
        ArrayList<String> yearList = new ArrayList<String>();
        while (allYear.next()) {
          yearList.add(allYear.getString(1));
        }
        // checks the validity of the name
        isValid = yearList.stream().anyMatch(s -> s.equalsIgnoreCase(yearToCheck));
      } catch (SQLException e) {
        System.out.println("Error: database problem when validating year");
        isValid = false;
      }
      // close the result set/statement
      stmt.close();
    } catch (SQLException e) {
      System.out.println("Error: Query could not be run");
      e.printStackTrace();
    }
    return isValid;
  }

  /**
   * Determines if the given song is in the database
   * @param conn the connection
   * @param songTitleToCheck the song title to be validated
   * @param songArtistToCheck the song artist to be validated
   * @return whether or not the song is in the database
   */
  default boolean validSong(Connection conn, String songTitleToCheck, String songArtistToCheck) {
    boolean isValid = false;
    try {
      // get all of the songs
      String allSongsQuery = "Select song_title, song_artist from song";
      Statement stmt = conn.createStatement();
      ResultSet allSong = stmt.executeQuery(allSongsQuery); // This will throw a SQLException
      // if it fails

      try {
        // create a map of all possible genre from the result set
        HashMap<String, String> titlesAndArtistsMap = new HashMap<String, String>();
        while (allSong.next()) {
          titlesAndArtistsMap.put(allSong.getString(1).toUpperCase(),
                  allSong.getString(2).toUpperCase());
        }
        // checks the validity of the name
        if (titlesAndArtistsMap.containsKey(songTitleToCheck.toUpperCase())) {
          isValid = songArtistToCheck.toUpperCase()
                  .equals(titlesAndArtistsMap.get(songTitleToCheck.toUpperCase()));
        }
      } catch (SQLException e) {
        System.out.println("Error: database problem when validating song");
        isValid = false;
      }
      // close the result set/statement
      stmt.close();
    } catch (SQLException e) {
      System.out.println("Error: Query could not be run");
      e.printStackTrace();
    }
    return isValid;
  }


}
