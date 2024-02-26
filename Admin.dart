import 'dart:io';

class Admin {
  List<Map<String, String>> Admin_data = [
    {
      "Name": "Hashir Khan",
      "email": "hashirkhan123@gmail.com",
      "password": "987456"
    },
    {
      "Name": "Hamza Ghani",
      "email": "hamzaghani123@gmail.com",
      "password": "hamzaone"
    }
  ];

  bool loginSuccessful = false;
  Login() {
    while (!loginSuccessful) {
      print('Enter your email:');
      String enteredEmail = stdin.readLineSync()!;

      print('Enter your password:');
      String enteredPassword = stdin.readLineSync()!;

      for (var credentials in Admin_data) {
        if (credentials["email"] == enteredEmail &&
            credentials["password"] == enteredPassword) {
          print('User login successful.');
          loginSuccessful = true;
          break;
        }
      }
      if (!loginSuccessful) {
        print('Invalid email or password. Please try again.');
      }
    }
  }

  Teachersinfo() {
    List<Map<dynamic, dynamic>> Teachers_data = [
      {
        'Name': 'Fatima Ahmed',
        "Subject": 'Maths',
      },
      {
        'Name': ' Abrar Raza',
        "Subject": 'Chemistry',
      },
      {
        'Name': 'Abdul Raza',
        "Subject": 'English',
      }
    ];
    print("$Teachers_data");
  }

  Admin() {
    print(".");
  }
}
