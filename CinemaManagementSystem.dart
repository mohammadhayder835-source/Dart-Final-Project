import 'dart:io';

void main() {
  List Movies = [
    {
      "Id": 1,
      "Name": "Avengers",
      "Genre": "Action",
      "Duration": "1h 45m",
      "Price": 500,
      "Total Seats": 40,
      "Available Seats": 20
    },
    {
      "Id": 2,
      "Name": "Spiderman",
      "Genre": "Action",
      "Duration": "1h 15m",
      "Price": 600,
      "Total Seats": 30,
      "Available Seats": 25
    },
    {
      "Id": 3,
      "Name": "Conjuring",
      "Genre": "Horror",
      "Duration": "1h 15m",
      "Price": 700,
      "Total Seats": 60,
      "Available Seats": 35
    },
    {
      "Id": 4,
      "Name": "Avator",
      "Genre": "Sci-Fi",
      "Duration": "2h 10m",
      "Price": 800,
      "Total Seats": 70,
      "Available Seats": 65
    },
    {
      "Id": 5,
      "Name": "Jurassic Jungle",
      "Genre": "Comedy",
      "Duration": "2h 45m",
      "Price": 1100,
      "Total Seats": 100,
      "Available Seats": 80
    }
  ];

  List booking = [];

  print("\n////Cinema Management System");
  print("1: Show movie information");
  print("2: Show available seats");
  print("3: Book the ticket");
  print("4: Cancel ticket");
  print("5: Search ticket");
  print("6: Adding a movie");
  print("7: Show booking detail");
  print("8: Exits");

  print("enter the number");
  int number = int.parse(stdin.readLineSync()!);

  if (number == 1) {
    for (var movie in Movies) {
      print("\n------Show Movie Information------");
      print("Id:${movie["Id"]}");
      print("Name:${movie["Name"]}");
      print("Genre:${movie["Genre"]}");
      print("Duration:${movie["Duration"]}");
      print("Price:${movie["Price"]}");
    }
  }

  else if (number == 2) {
    print("\n------Show Available Seats------");

    for (var movie in Movies) {
      print("Total Seats:${movie["Total Seats"]}");
      print("Available Seats:${movie["Available Seats"]}");
    }
  }

  else if (number == 3) {
    print("\n------Booking Tickets------");

    print("enter the movie id");
    int id = int.parse(stdin.readLineSync()!);

    for (var movie in Movies) {
      if (movie["Id"] == id) {
        if (movie["Available Seats"] > 0) {
          print("book ticket successfully");
        }
      }
    }
  }

  else if (number == 4) {
    print("\n------ticket cancelling------");

    print("enter the movie id");
    int id = int.parse(stdin.readLineSync()!);

    for (var movie in Movies) {
      if (movie["Id"] == id) {
        movie["Available Seats"]++;

        print("ticket cancelled successfully");
        print("Available Seats:${movie["Available Seats"]}");
      }
    }
  }

  else if (number == 5) {
    print("\n------movie searching------");

    print("enter the movie id");
    int id = int.parse(stdin.readLineSync()!);

    for (var movie in Movies) {
      if (movie["Id"] == id) {
        print("Id:${movie["Id"]}");
        print("Name:${movie["Name"]}");
        print("Genre:${movie["Genre"]}");
        print("Duration:${movie["Duration"]}");
        print("Price:${movie["Price"]}");
        print("Total Seats:${movie["Total Seats"]}");
        print("Available Seats:${movie["Available Seats"]}");
      }
    }
  }

  else if (number == 6) {
    print("------movie adding------");

    print("enter the movie id");
    int id = int.parse(stdin.readLineSync()!);

    print("enter the movie Name");
    String name = stdin.readLineSync()!;

    print("enter the movie genre");
    String genre = stdin.readLineSync()!;

    print("enter the movie duration");
    String duration = stdin.readLineSync()!;

    print("enter the movie Price");
    int Price = int.parse(stdin.readLineSync()!);

    print("enter the movie Total seats");
    int totalseats = int.parse(stdin.readLineSync()!);

    print("enter the movie Available seats");
    int Availableseats = int.parse(stdin.readLineSync()!);

    Movies.add({
      "Id": id,
      "Name": name,
      "Genre": genre,
      "Duration": duration,
      "Price": Price,
      "Total Seats": totalseats,
      "Available Seats": Availableseats,
    });

    print("add movie successfully");
  }

  else if (number == 7) {
    print("\n------Show Booking information------");

    for (var book in booking) {
      print("Movie:${book["Movies"]}");
      print("Tickets:${book["Tickets"]}");
      print("Price:${book["Price"]}");
      print("Total:${book["Total"]}");
    }
  }

  else if (number == 8) {
    print("program exit");
  }

  else {
    print("invalid input");
  }
}