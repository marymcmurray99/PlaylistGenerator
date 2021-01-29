package operations;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import operations.Operation;

/**
 * Allows the user to add to the database
 */
public class AddToDatabase implements Operation {
  private Scanner scan;
  private Connection conn;

  /**
   * Constructor
   * @param scan the scanner
   * @param conn the connection
   */
  public AddToDatabase(Scanner scan, Connection conn) {
    this.scan = scan;
    this.conn = conn;
  }

  @Override
  public void start() {
    System.out.println("What would you like to add?"
            + "\n(0) a song"
            + "\n(1) a genre"
            + "\n(2) an artist"
            + "\n(3) a release year");
    int toAdd = getNextInt(conn, scan);
    switch (toAdd) {
      case 0:
        addSong();
        break;
      case 1:
        addGenre();
        break;
      case 2:
        addArtist();
        break;
      case 3:
        addYear();
        break;
      default:
        System.out.println("the number input was invalid.");
        start();
    }
  }

  /**
   * Adds a song to the songs table and updates all other tables accordingly
   */
  private void addSong() {
    scan.nextLine();
    System.out.println("Please enter the name of the song");
    String songName = scan.nextLine();
    System.out.println("Please enter the song artist");
    String songArtist = scan.nextLine();

    if (!validArtist(conn, songArtist)) {
      System.out.println("This artist is not already in the database. "
              + "Would you like to add them? (y/n)");
      String choice = getYorN(scan, scan.next());
      if (!choice.equals("Y") && !choice.equals("y")) {
        return;
      }
      else {
        System.out.println("The artist " + songArtist + " was added to the database!");
      }
    }

    try {
      CallableStatement addTitleAndArtist = conn.prepareCall("{call update_song_table(?, ?)}");
      addTitleAndArtist.setString(1, songName);
      addTitleAndArtist.setString(2, songArtist);
      addTitleAndArtist.execute();
    } catch (SQLException e) {
      System.out.println("ERROR: A song called " + songName + " by " + songArtist +
              " is already in the database");
    }

    // update the year if applicable
    System.out.println("Do you know the song's release year? "
            + "Please type 'y' for yes and 'n' for no.");
    String knowYear = getYorN(scan, scan.next());
    if (knowYear.equals("y") || knowYear.equals("Y")) {
      System.out.println("Please enter the song's release year");
      String songYear = String.valueOf(getNextInt(conn, scan));
      if (!validYear(conn, songYear)) {
        System.out.println("This year is not already in the database. "
                + "Would you like to add it? (y/n)");
        String choice = getYorN(scan, scan.next());
        if (!choice.equals("Y") && !choice.equals("y")) {
          return;
        }
        else {
          System.out.println("The year " + songYear + " was added to the database!");
        }
      }

      try {
        CallableStatement addYear =
                conn.prepareCall("{call update_year_in_song_table(?, ?, ?)}");
        addYear.setString(1, songName);
        addYear.setString(2, songArtist);
        addYear.setString(3, songYear);
        addYear.execute();
      } catch (SQLException e) {
        System.out.println("ERROR: query to add year " + songYear +
                "failed for the song " + songName + " by " + songArtist);
      }
    }

    // update the genre if applicable
    System.out.println("Do you know the song's genre? "
            + "Please type 'y' for yes and 'n' for no.");
    String knowGenre = getYorN(scan, scan.next());
    if (knowGenre.equals("y") || knowGenre.equals("Y")) {
      System.out.println("Please enter the song genre");
      String songGenre = scan.next();

      if (!validGenre(conn, songGenre)) {
        System.out.println("This genre is not already in the database. "
                + "Would you like to add it? (y/n)");
        String choice = getYorN(scan, scan.next());
        if (!choice.equals("Y") && !choice.equals("y")) {
          return;
        }
        else {
          System.out.println("The genre " + songGenre + " was added to the database!");
        }
      }

      try {
        CallableStatement addGenre =
                conn.prepareCall("{call update_genre_in_song_table(?, ?, ?)}");
        addGenre.setString(1, songName);
        addGenre.setString(2, songArtist);
        addGenre.setString(3, songGenre);
        addGenre.execute();
      } catch (SQLException e) {
        System.out.println("ERROR: query to add genre " + songGenre +
                "failed for the song " + songName + " by " + songArtist);
      }
    }

    // update the bpm if applicable
    System.out.println("Do you know the song's bpm? "
            + "Please type 'y' for yes and 'n' for no.");
    String knowBPM = getYorN(scan, scan.next());
    if (knowBPM.equals("y") || knowBPM.equals("Y")) {
      System.out.println("Please enter the song BPM");
      String songBPM = String.valueOf(getNextInt(conn, scan));

      try {
        CallableStatement addBPM =
                conn.prepareCall("{call update_bpm_in_song_table(?, ?, ?)}");
        addBPM.setString(1, songName);
        addBPM.setString(2, songArtist);
        addBPM.setString(3, songBPM);
        addBPM.execute();
      } catch (SQLException e) {
        System.out.println("ERROR: query to add bpm " + songBPM +
                "failed for the song " + songName + " by " + songArtist);
      }
    }

    // update the energy if applicable
    System.out.println("Do you know the song's energy? "
            + "Please type 'y' for yes and 'n' for no.");
    String knowEnergy = getYorN(scan, scan.next());
    if (knowEnergy.equals("y") || knowEnergy.equals("Y")) {
      System.out.println("Please enter the song energy");
      String songEnergy = String.valueOf(getNextInt(conn, scan));

      try {
        CallableStatement addEnergy =
                conn.prepareCall("{call update_energy_in_song_table(?, ?, ?)}");
        addEnergy.setString(1, songName);
        addEnergy.setString(2, songArtist);
        addEnergy.setString(3, songEnergy);
        addEnergy.execute();
      } catch (SQLException e) {
        System.out.println("ERROR: query to add energy " + songEnergy +
                "failed for the song " + songName + " by " + songArtist);
      }

    }

    System.out.println("The song was added with the following information");

    try {
      CallableStatement songData = conn.prepareCall("{call return_song(?, ?)}");
      songData.setString(1, songName);
      songData.setString(2, songArtist);
      ResultSet result = songData.executeQuery();
      System.out.printf("\n%-80s %-10s %-35s %-25s %-10s %-10s\n",
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
    }
    catch (SQLException e ) {
        System.out.println("ERROR: song could not be retrieved.");
    }
  }

  /**
   * Add 1 genre to the genre table
   */
  private void addGenre() {
    System.out.println("Please enter the genre you want to add");
    String genre = scan.next();

    try {
      CallableStatement addGenre =
              conn.prepareCall("{call update_genre_table(?)}");
      addGenre.setString(1, genre);
      addGenre.execute();
      System.out.println(genre + " was successfully added to the genre table!");
    } catch (SQLException e) {
      System.out.println("ERROR: the query to add the genre " + genre + " could not be executed");
    }
  }

  /**
   * Add 1 artist to the artict table
   */
  private void addArtist() {
    System.out.println("Please enter the artist you want to add");
    String artist = scan.next();

    try {
      CallableStatement addArtist =
              conn.prepareCall("{call update_artist_table(?)}");
      addArtist.setString(1, artist);
      addArtist.execute();
      System.out.println(artist + " was successfully added to the artist table!");
    } catch (SQLException e) {
      System.out.println("ERROR: the query to add the artist " + artist + " could not be executed");
    }
  }

  /**
   * Add 1 year to the year table
   */
  private void addYear() {
    System.out.println("Please enter the year you want to add");
    String year = String.valueOf(getNextInt(conn, scan));

    try {
      CallableStatement addYear =
              conn.prepareCall("{call update_year_table(?)}");
      addYear.setString(1, year);
      addYear.execute();
      System.out.println(year + " was successfully added to the year table!");
    } catch (SQLException e) {
      System.out.println("ERROR: the query to add the year " + year + " could not be executed");
    }    }
}
