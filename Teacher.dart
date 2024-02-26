import 'dart:io';

import 'main (2).dart';

class Teacher {
  List<Map<dynamic, dynamic>> Teachers_data = [
    {
      'Name': 'Fatima Ahmed',
      "Subject": 'Maths',
      'email': 'fatimaahmed@example.com',
      'password': 'fatima1'
    },
    {
      'Name': ' Abrar Raza',
      "Subject": 'Chemistry',
      'email': 'abrarraza1@example.com',
      'password': 'Abrar1'
    },
    {
      'Name': 'Abdul Raza',
      "Subject": 'English',
      'email': 'abdulraza32@example.com',
      'password': 'abdul91'
    }
  ];
  bool loginSuccessful = false;
  Login() {
    while (!loginSuccessful) {
      print('Enter your email:');
      String enteredEmail = stdin.readLineSync()!;

      print('Enter your password:');
      String enteredPassword = stdin.readLineSync()!;

      for (var credentials in Teachers_data) {
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

  StudentMarks() async {
    List<Map<String, dynamic>> data = [
      {
        'Name': 'Ahsan',
        'Marks': {"maths": 91, "Chem": 75, "Physics": 61},
        'Attendence': '80%'
      },
      {
        'Name': 'Ahmed',
        'Marks': {"maths": 82, "Chem": 65, "Physics": 52},
        'Attendence': '75%'
      }
    ];
    print('$data');
  }

  Teacher() {
    print("");
  }
}
