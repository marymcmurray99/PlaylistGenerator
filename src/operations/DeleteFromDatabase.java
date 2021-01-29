package operations;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

import operations.Operation;

/**
 * Contains all deleting from the database operations
 */
public class DeleteFromDatabase implements Operation {
  private Scanner scan;
  private Connection conn;

  /**
   * Constructor
   *
   * @param scan the scanner
   * @param conn the connection
   */
  public DeleteFromDatabase(Scanner scan, Connection conn) {
    this.scan = scan;
    this.conn = conn;
  }

  @Override
  public void start() {
    System.out.println("What would you like to delete?"
            + "\n(0) a song"
            + "\n(1) a genre/songs in a genre"
            + "\n(2) an artist/songs by an artist"
            + "\n(3) a release year/songs released in a year");
    int toDelete = getNextInt(conn, scan);
    switch (toDelete) {
      case 0:
        deleteSong();
        break;
      case 1:
        deleteGenre();
        break;
      case 2:
        deleteArtist();
        break;
      case 3:
        deleteYear();
        break;
      default:
        System.out.println("the number input was invalid.");
    }
  }

  /**
   * Deletes a song from the data base
   */
  private void deleteSong() {
    scan.nextLine();
    System.out.println("Please enter the name of the song you want to delete");
    String songName = scan.nextLine();
    System.out.println("Please enter the artist of the song you want to delete");
    String songArtist = scan.nextLine();

    boolean runQuery = true;
    while (!validSong(conn, songName, songArtist)) {
      System.out.println("This song is not in the database\n"
              + "Would you like to try again?");
      String tryAgain = getYorN(scan, scan.next());
      if (!tryAgain.equals("Y") && !tryAgain.equals("y")) {
        runQuery = false;
        break;
      }
      else {
        scan.nextLine();
        System.out.println("Please enter the name of the song you want to delete");
        songName = scan.nextLine();
        System.out.println("Please enter the artist of the song you want to delete");
        songArtist = scan.nextLine();
      }
    }

    if (runQuery) {
      try {
        CallableStatement delete =
                conn.prepareCall("{call delete_songs_artist_and_title(?, ?)}");
        delete.setString(1, songName);
        delete.setString(2, songArtist);
        delete.execute();
        System.out.println("the song " + songName + " by "
                + songArtist + " was successfully deleted");
      } catch (SQLException e) {
        System.out.println("ERROR: the song " + songName + " by "
                + songArtist + " could not be deleted");

      }

    }
  }

  /**
   * Deletes a genre from all tables in the database
   */
  private void deleteGenre() {
    scan.nextLine();
    System.out.println("Please enter the name of the genre you want to delete");

    String genre = scan.nextLine();
    boolean runQuery = true;
    while (!validGenre(conn, genre)) {
      System.out.println("This genre is not in the database\n"
              + "Would you like to try again?");
      String tryAgain = getYorN(scan, scan.next());
      if (!tryAgain.equals("Y") && !tryAgain.equals("y")) {
        runQuery = false;
        break;
      }
      else {
        scan.nextLine();
        System.out.println("Please enter the name of the genre you want to delete");
        genre = scan.nextLine();
      }
    }

    if (runQuery) {
      boolean valid = false;
      while (!valid) {
        System.out.println("Please select the action you want to take \n"
                + "(1) remove this genre completely\n"
                + "(2) remove all songs of this genre");
        int choice = getNextInt(conn, scan);
        switch (choice) {
          case 1:
            deleteGenreCompletely(genre);
            valid = true;
            break;
          case 2:
            deleteSongsWithGenre(genre);
            valid = true;
            break;
          default:
            System.out.println("Please enter a valid number");
        }
      }
    }
  }

  /**
   * Delete the given genre from the database
   * @param genre the genre
   */
  private void deleteGenreCompletely(String genre) {
    try {
      CallableStatement delete =
              conn.prepareCall("{call delete_genre(?)}");
      delete.setString(1, genre);
      delete.execute();
      System.out.println("The genre " + genre + " was deleted along with all songs of this genre");
    } catch (SQLException e) {
      System.out.println("ERROR: the genre " + genre + " could not be deleted");
    }
  }

  /**
   * Delete all songs of the given genre
   * @param genre the genre
   */
  private void deleteSongsWithGenre(String genre) {
    try {
      CallableStatement delete =
              conn.prepareCall("{call delete_songs_with_genre(?)}");
      delete.setString(1, genre);
      delete.execute();
      System.out.println("Songs with the genre " + genre + " were deleted");
    } catch (SQLException e) {
      System.out.println("ERROR: songs with the genre " + genre + " could not be deleted");
    }
  }


  /**
   * Deletes an artist from all tables in the database
   */
  private void deleteArtist() {
    scan.nextLine();
    System.out.println("Please enter the name of the artist you want to delete");
    String artist = scan.nextLine();

    boolean runQuery = true;
    while (!validArtist(conn, artist)) {
      System.out.println("This artist is not in the database\n"
              + "Would you like to try again?");
      String tryAgain = getYorN(scan, scan.next());
      if (!tryAgain.equals("Y") && !tryAgain.equals("y")) {
        runQuery = false;
        break;
      } else {
        scan.nextLine();
        System.out.println("Please enter the name of the artist you want to delete");
        artist = scan.nextLine();
      }
    }

    if (runQuery) {
    boolean valid = false;
    while (!valid) {
      System.out.println("Please select the action you want to take \n"
              + "(1) remove this artist completely\n"
              + "(2) remove all songs by this artist");
      int choice = getNextInt(conn, scan);;
      switch (choice) {
        case 1:
          deleteArtistCompletely(artist);
          valid = true;
          break;
        case 2:
          deleteSongsByThisArtist(artist);
          valid = true;
          break;
        default:
          System.out.println("Please enter a valid number");
      }
    }
  }}

  /**
   * Delete the given artist from the database
   * @param artist the artist
   */
  private void deleteArtistCompletely(String artist) {
    try {
      CallableStatement delete =
              conn.prepareCall("{call delete_artist(?)}");
      delete.setString(1, artist);
      delete.execute();
      System.out.println("The artist " + artist + " was deleted along with all "
              + "songs by this artist");
    } catch (SQLException e) {
      System.out.println("ERROR: the artist " + artist + " could not be deleted");
    }
  }

  /**
   * Delete all songs by the given artist
   * @param artist the genre
   */
  private void deleteSongsByThisArtist(String artist) {
    try {
      CallableStatement delete =
              conn.prepareCall("{call delete_songs_with_artist(?)}");
      delete.setString(1, artist);
      delete.execute();
      System.out.println("Songs by the artist " + artist + " were deleted");
    } catch (SQLException e) {
      System.out.println("ERROR: songs by the artist " + artist + " could not be deleted");
    }
  }


  /**
   * Deletes a year from all tables in the database
   */
  private void deleteYear() {
    scan.nextLine();
    System.out.println("Please enter the name of the year you want to delete");
    String year = String.valueOf(getNextInt(conn, scan));

    boolean runQuery = true;
    while (!validYear(conn, year)) {
      System.out.println("This year is not in the database\n"
              + "Would you like to try again?");
      String tryAgain = getYorN(scan, scan.next());
      if (!tryAgain.equals("Y") && !tryAgain.equals("y")) {
        runQuery = false;
        break;
      } else {
        scan.nextLine();
        System.out.println("Please enter the name of the year you want to delete");
        year = scan.nextLine();
      }
    }

    if (runQuery) {
      boolean valid = false;
      while (!valid) {
        System.out.println("Please select the action you want to take \n"
                + "(1) remove this year completely\n"
                + "(2) remove all songs released/remastered in this year");
        int choice = getNextInt(conn, scan);
        ;
        switch (choice) {
          case 1:
            deleteYearCompletely(year);
            valid = true;
            break;
          case 2:
            deleteSongsInThisYear(year);
            valid = true;
            break;
          default:
            System.out.println("Please enter a valid number");
        }
      }
    }
  }
  /**
   * Delete the given year from the database
   * @param year the year
   */
  private void deleteYearCompletely(String year) {
    try {
      CallableStatement delete =
              conn.prepareCall("{call delete_year(?)}");
      delete.setString(1, year);
      delete.execute();
      System.out.println("The year " + year + " was deleted along with all "
              + "songs released/remastered this year");
    } catch (SQLException e) {
      System.out.println("ERROR: the year " + year
              + " could not be deleted");
    }
  }

  /**
   * Delete all songs released/remastered the given year
   * @param year the genre
   */
  private void deleteSongsInThisYear(String year) {
    try {
      CallableStatement delete =
              conn.prepareCall("{call delete_songs_with_year(?)}");
      delete.setString(1, year);
      delete.execute();
      System.out.println("Songs released/remastered in the year " + year + " were deleted");
    } catch (SQLException e) {
      System.out.println("ERROR: songs in the year " + year + " could not be deleted");
    }
  }
}
