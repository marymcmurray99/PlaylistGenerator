package operations;

import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import operations.Operation;

public class CreatePlaylist implements Operation {
  private Scanner scan;
  private Connection conn;
  private String oldestYear;
  private String newestYear;
  private List<String> artist;
  private List<String> genre;
  private String playlistName;

  /**
   * Constructor
   *
   * @param scan the scanner
   * @param conn the connection
   */
  public CreatePlaylist(Scanner scan, Connection conn) {
    this.scan = scan;
    this.conn = conn;
    this.artist = new ArrayList<String>();
    this.genre = new ArrayList<String>();
  }

  @Override
  public void start() {
    setYears();
    setArtist();
    setGenre();
    createPlaylist();
    System.out.println("The songs in your playlist are stated below");
    PrintTable printer = new PrintTable(conn, playlistName);
    printer.start();
    getStats();
  }

  /**
   * Sets the years based off of user input
   */
  private void setYears() {
    System.out.println("Do you have a preference on song release years in your playlist? (y/n)");
    String yearPref = getYorN(scan, scan.next());
    if (yearPref.equals("y") || yearPref.equals("Y")) {
      System.out.println("What is the oldest release year you want?");
      this.oldestYear = String.valueOf(getNextInt(conn, scan));
      System.out.println("What is the newest release year you want?");
      this.newestYear = String.valueOf(getNextInt(conn, scan));
    } else {
      this.oldestYear = "ANY";
      this.newestYear = "ANY";
    }
  }

  /**
   * Adds all the artists that are wanted to the artist list
   */
  private void setArtist() {
    System.out.println("Do you have a preference on artists in your playlist (y/n)?");

    String artistPref = getYorN(scan, scan.next());

    if (artistPref.equals("y") || artistPref.equals("Y")) {
      // print out 10 artists
      print10Artists();

      // take in artists
      System.out.println("How many artists do you want in your playlist?");
      int numArtists = getNextInt(conn, scan);
      scan.nextLine(); // to make the next line in the loop work
      System.out.println("Please enter your artists one at a time");
      int artistNum = 1;
      while (artistNum <= numArtists) {
        System.out.println("Who is artist number " + artistNum);
        String tempArtist = scan.nextLine();
        if (validArtist(conn, tempArtist)) {
          this.artist.add(tempArtist);
          artistNum++;
        }
        else {
          System.out.println("This artist is not in the database. Would you like to "
                  + "see 10 random artist again before you re-input your artist choice (y/n)");
          String choice = getYorN(scan, scan.next());
          if (choice.equals("Y") || choice.equals("y")) {
            print10Artists();
          }
          scan.nextLine();
        }
      }
    }
  }


  /**
   * Print out 10 random artists from the database
   */
  private void print10Artists() {
    System.out.println("Below are a sample of artists in the playlist ");
    try {
      CallableStatement returnArtists =
              conn.prepareCall("{call return_ten_artists()}");
      ResultSet result = returnArtists.executeQuery();
      while (result.next()) {
        System.out.println(result.getString(1));
      }
    } catch (SQLException e) {
      System.out.println("ERROR: 10 artist couldn't be returned");
    }
  }

  /**
   * Adds all the genres that are wanted to the genre list
   */
  private void setGenre() {
    System.out.println("Do you have a preference on genres in your playlist? (y/n)");

    String genrePref = getYorN(scan, scan.next());
    if (genrePref.equals("y") || genrePref.equals("Y")) {
      // print out 10 genres
      print10Genres();

      // set genres
      System.out.println("How many genres do you want in your playlist?");
      int numGenres = getNextInt(conn, scan);
      scan.nextLine(); // to make the next line in the loop work

      int genreNum = 1;
      while (genreNum <= numGenres) {
        System.out.println("What is genre number " + genreNum);
        String tempGenre = scan.nextLine();
        if (validGenre(conn, tempGenre)) {
          this.genre.add(tempGenre);
          genreNum++;
        }
        else {
          System.out.println("This genre is not in the database. Would you like to "
                  + "see 10 random genres again before you re-input your artist choice (y/n)");
          String choice = getYorN(scan, scan.next());
          if (choice.equals("Y") || choice.equals("y")) {
            print10Genres();
          }
          scan.nextLine();
        }
      }
    }
  }

  /**
   * Print out 10 random genres
   */
  private void print10Genres() {
    System.out.println("Below are a sample of genres in the playlist ");
    try {
      CallableStatement returnGenres =
              conn.prepareCall("{call return_ten_genres()}");
      ResultSet result = returnGenres.executeQuery();
      while (result.next()) {
        System.out.println(result.getString(1));
      }
    } catch (SQLException e) {
      System.out.println("ERROR: 10 genres couldn't be returned");
    }
  }

  /**
   * Creates the table of the specified name
   */
  private void createPlaylist() {
    while (true) {
      System.out.println("What do you want the playlist to be named? It must not contain spaces");
      this.playlistName = scan.next();


      // check if the playlist already contains a table of that name
      try {
        CallableStatement verify = conn.prepareCall("{? = call check_for_playlist(?)}");
        verify.setString(2, playlistName);
        verify.registerOutParameter(1, Types.VARCHAR);
        verify.executeUpdate();
        String exists = verify.getString(1);
        if (exists.equals("True")) {
          System.out.println("A playlist already exists with this name");
        } else {
          System.out.println("This playlist name is available");
          break;
        }
        verify.close();
      } catch (SQLException e) {
        System.out.println("ERROR: playlist name could not be verified");
      }
    }

    // create the playlist table
    try {
      CallableStatement createPlaylist =
              conn.prepareCall("{call create_playlist(?)}");
      createPlaylist.setString(1, playlistName);
      createPlaylist.execute();
      fillPlaylist();
    } catch (SQLException e) {
      System.out.println("ERROR: the playlist " + playlistName + " could not be generated");
    }

  }

  /**
   * Adds all values to the playlist table that fir the requirements
   */
  private void fillPlaylist() {
    boolean filled = false;
    if (oldestYear.equals("ANY") || newestYear.equals("ANY")) {
      if (artist.size() == 0) {
        if (genre.size() == 0) {
          // fill with no requirements
          filled = fillNoRequirements();
        } else {
          // fill with no year no artist
          filled = fillNoYearNoArtist();
        }
      }
      else if (genre.size() == 0) {
        // fill with no year and no genre
        filled = fillNoYearNoGenre();
      }
      else {
        // fill with no year
        filled = fillNoYear();
      }
    } else if (artist.size() == 0) {
      if (genre.size() == 0) {
        // fill with no artist or genre
        filled = fillNoArtistNoGenre();
      } else {
        // fill with no artist
        filled = fillNoArtist();
      }
    } else if (genre.size() == 0) {
      // fill with no genre
      filled = fillNoGenre();
    } else {
      filled = fillWithAll();
    }

    if (filled) {
      System.out.println("The playlist was created and filled with all applicable songs!");
    }
  }

  /**
   * Fill the playlist with requirements on genre, artist, and year and then return whether the
   * filling is successful
   *
   * @return whether of not the filling is successful
   */
  private boolean fillWithAll() {
    boolean filled = true;
    for (String gen : this.genre) {
      for (String art : this.artist) {
        try {
          CallableStatement insert =
                  conn.prepareCall("{call insert_into_playlist(?, ?, ?, ?, ?)}");
          insert.setString(1, playlistName);
          insert.setString(2, art);
          insert.setString(3, gen);
          insert.setString(4, oldestYear);
          insert.setString(5, newestYear);
          insert.execute();
        } catch (SQLException e) {
          filled = false;
          System.out.println("ERROR: the playlist " + playlistName + " could not be filled");
        }
      }
    }
    return filled;
  }

  /**
   * Fill the playlist with requirements on artist and year and then return whether the filling is
   * successful
   *
   * @return whether of not the filling is successful
   */
  private boolean fillNoGenre() {
    boolean filled = true;
    for (String art : this.artist) {
      try {
        CallableStatement insert =
                conn.prepareCall("{call insert_into_playlist_no_genre(?, ?, ?, ?)}");
        insert.setString(1, playlistName);
        insert.setString(2, art);
        insert.setString(3, oldestYear);
        insert.setString(4, newestYear);
        insert.execute();
      } catch (SQLException e) {
        filled = false;
        System.out.println("ERROR: the playlist " + playlistName + " could not be filled");
      }
    }
    return filled;
  }

  /**
   * Fill the playlist with requirements on genre and year and then return whether the filling is
   * successful
   *
   * @return whether of not the filling is successful
   */
  private boolean fillNoArtist() {
    boolean filled = true;
    for (String gen : this.genre) {
      try {
        CallableStatement insert =
                conn.prepareCall("{call insert_into_playlist_no_artist(?, ?, ?, ?)}");
        insert.setString(1, playlistName);
        insert.setString(2, gen);
        insert.setString(3, oldestYear);
        insert.setString(4, newestYear);
        insert.execute();
      } catch (SQLException e) {
        filled = false;
        System.out.println("ERROR: the playlist " + playlistName + " could not be filled");
      }
    }
    return filled;
  }

  /**
   * Fill the playlist with requirements on genre and artist and then return whether the
   * filling is successful
   *
   * @return whether of not the filling is successful
   */
  private boolean fillNoYear() {
    boolean filled = true;
    for (String gen : this.genre) {
      for (String art : this.artist) {
        try {
          CallableStatement insert =
                  conn.prepareCall("{call insert_into_playlist_no_years(?, ?, ?)}");
          insert.setString(1, playlistName);
          insert.setString(2, art);
          insert.setString(3, gen);
          insert.execute();
        } catch (SQLException e) {
          filled = false;
          System.out.println("ERROR: the playlist " + playlistName + " could not be filled");
        }
      }
    }
    return filled;
  }

  /**
   * Fill the playlist with requirements on genre and then return whether the
   * filling is successful
   *
   * @return whether of not the filling is successful
   */
  private boolean fillNoYearNoArtist() {
    boolean filled = true;
    for (String gen : this.genre) {
        try {
          CallableStatement insert =
                  conn.prepareCall("{call insert_into_playlist_no_years_no_artist(?, ?)}");
          insert.setString(1, playlistName);
          insert.setString(2, gen);
          insert.execute();
        } catch (SQLException e) {
          filled = false;
          System.out.println("ERROR: the playlist " + playlistName + " could not be filled");
        }
      }
    return filled;
  }

  /**
   * Fill the playlist with requirements on artist and then return whether the
   * filling is successful
   *
   * @return whether of not the filling is successful
   */
  private boolean fillNoYearNoGenre() {
    boolean filled = true;
      for (String art : this.artist) {
        try {
          CallableStatement insert =
                  conn.prepareCall("{call insert_into_playlist_no_years_no_genre(?, ?)}");
          insert.setString(1, playlistName);
          insert.setString(2, art);
          insert.execute();
        } catch (SQLException e) {
          filled = false;
          System.out.println("ERROR: the playlist " + playlistName + " could not be filled");
        }
      }
    return filled;
  }

  /**
   * Fill the playlist with requirements on  year and then return whether the filling is
   * successful
   *
   * @return whether of not the filling is successful
   */
  private boolean fillNoArtistNoGenre() {
    boolean filled = true;
      try {
        CallableStatement insert =
                conn.prepareCall("{call insert_into_playlist_no_artist_no_genre(?, ?, ?)}");
        insert.setString(1, playlistName);
        insert.setString(2, oldestYear);
        insert.setString(3, newestYear);
        insert.execute();
      } catch (SQLException e) {
        filled = false;
        System.out.println("ERROR: the playlist " + playlistName + " could not be filled");
      }
    return filled;
  }

  /**
   * Fill the playlist with no requirements on year, genre, or artist and then return whether
   * the filling is successful
   *
   * @return whether of not the filling is successful
   */
  private boolean fillNoRequirements() {
    boolean filled = true;
      try {
        CallableStatement insert =
                conn.prepareCall(
                        "{call insert_into_playlist_no_artist_no_genre_no_year(?)}");
        insert.setString(1, playlistName);
        insert.execute();
      } catch (SQLException e) {
        filled = false;
        System.out.println("ERROR: the playlist " + playlistName + " could not be filled");
      }
    return filled;
  }


  /**
   * Get the statistics on bpm and energy on the generated playlist
   */
  private void getStats() {
    ArrayList<Integer> bpm = new ArrayList<Integer>();
    ArrayList<Integer> energy = new ArrayList<Integer>();
    try {
      CallableStatement insert =
              conn.prepareCall("{call return_playlist(?)}");
      insert.setString(1, playlistName);
      ResultSet result = insert.executeQuery();

      while (result.next()) {
        bpm.add(result.getInt(5));
        energy.add(result.getInt(6));
      }

      if (bpm.size() != 0 && energy.size() != 0) {

        // the sum of all BPMs, the min, and the max
        double sumBPM = 0;
        int minBPM = 1000;
        int maxBPM = 0;
        for (Integer currBPM : bpm) {
          sumBPM += currBPM;
          if (currBPM < minBPM) {
            minBPM = currBPM;
          }
          if (currBPM > maxBPM) {
            maxBPM = currBPM;
          }
        }

        // the sum of all energy, the min, and the max
        double sumEnergy = 0;
        int minEnergy = 1000;
        int maxEnergy = 0;
        for (Integer currEnergy : energy) {
          sumEnergy += currEnergy;
          if (currEnergy < minEnergy) {
            minEnergy = currEnergy;
          }
          if (currEnergy > maxEnergy) {
            maxEnergy = currEnergy;
          }
        }

        // print out stats on BPM
        System.out.println("The minimum BPM of a song in the playlist is " + minBPM);
        System.out.println("The maximum BPM of a song in the playlist is " + maxBPM);
        // the average BPM
        double averageBPM = sumBPM / bpm.size();
        System.out.println("The average BPM of songs in the playlist is " + averageBPM);

        // print out the stats on energy
        System.out.println("The minimum energy of a song in the playlist is " + minEnergy);
        System.out.println("The maximum energy of a song in the playlist is " + maxEnergy);
        // the average Energy
        double averageEnergy = sumEnergy / energy.size();
        System.out.println("The average energy of the playlist is " + averageEnergy);
      }

    } catch (SQLException e) {
      System.out.println("ERROR: the playlist " + playlistName + " could not be analyzed");
    }
  }

}
