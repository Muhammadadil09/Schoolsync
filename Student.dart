import 'dart:io';

import 'main (2).dart';

class Student {
  bool loginSuccessful = false;

  Login() async {
    while (!loginSuccessful) {
      print('Enter your email:');
      String enteredEmail = stdin.readLineSync()!;

      print('Enter your password:');
      String enteredPassword = stdin.readLineSync()!;

      List<Map<String, dynamic>> data = await readData();
      Map<String, dynamic>? credentials;
      for (Map<String, dynamic> entry in data) {
        if (entry['email'] == enteredEmail &&
            entry['password'] == enteredPassword) {
          credentials = entry;
          break;
        }
      }

      if (credentials != null) {
        print('User login successful.');
        loginSuccessful = true;
      } else {
        print('Invalid email or password. Please try again.');
      }
    }
  }

  Stundentsmarks() async {
    List<Map<String, dynamic>> data = await readData();
    if (data.isNotEmpty) {
      for (Map<String, dynamic> entry in data) {
        print('Name: ${entry['Name']}');
        print('Marks: ${entry['Marks']}');
        print('');
      }
    } else {
      print('No data found in Studentsmarks.txt');
    }
  }
}
