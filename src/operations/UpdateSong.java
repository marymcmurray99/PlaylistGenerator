package operations;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class UpdateSong implements Operation {

  private Scanner scan;
  private Connection conn;

  /**
   * Constructor
   * @param scan the scanner
   * @param conn the connection
   */
  public UpdateSong(Scanner scan, Connection conn) {
    this.scan = scan;
    this.conn = conn;
  }

  @Override
  public void start() {

    scan.nextLine();
    System.out.println("Please enter the name of the song you want to update");
    String songName = scan.nextLine();
    System.out.println("Please enter the song artist");
    String songArtist = scan.nextLine();

    if (!validSong(conn, songName, songArtist)) {
      System.out.println("This song is not in the database");
      return;
    }

    // update the year if applicable
    System.out.println("Do you want to update song's release/remastered year? "
            + "Please type 'y' for yes and 'n' for no.");
    String knowYear = getYorN(scan, scan.next());
    if (knowYear.equals("y") || knowYear.equals("Y")) {
      System.out.println("Please enter the desired year");
      String songYear = String.valueOf(getNextInt(conn, scan));

      boolean updateYear = true;
      if (!validYear(conn, songYear)) {
        System.out.println("This year is not already in the database. "
                + "Would you like to add it? (y/n)");
        String choice = getYorN(scan, scan.next());
        if (!choice.equals("Y") && !choice.equals("y")) {
          updateYear = false;
        } else {
          System.out.println("The year " + songYear + " was added to the database!");
        }
      }

      if (updateYear) {
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
    }

    // update the genre if applicable
    System.out.println("Do you want to change the song's genre? "
            + "Please type 'y' for yes and 'n' for no.");
    String knowGenre = getYorN(scan, scan.next());
    if (knowGenre.equals("y") || knowGenre.equals("Y")) {
      System.out.println("Please enter the desired genre");
      String songGenre = scan.next();

      boolean updateGenre = true;
      if (!validGenre(conn, songGenre)) {
        System.out.println("This genre is not already in the database. "
                + "Would you like to add it? (y/n)");
        String choice = getYorN(scan, scan.next());
        if (!choice.equals("Y") && !choice.equals("y")) {
          updateGenre = false;
        } else {
          System.out.println("The genre " + songGenre + " was added to the database!");
        }
      }

      if (updateGenre) {
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
    }

    // update the bpm if applicable
    System.out.println("Do you want to update the song's bpm? "
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
}
