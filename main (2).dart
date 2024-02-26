import 'dart:convert';
import 'dart:io';
import 'Admin.dart';
import 'Teacher.dart';
import 'Student.dart';

void main() async {
  print("Welcom to SchoolSync");
  print("-----------------------");
  print("select a option");
  print("1.Admin");
  print("2.Teacher");
  print("3.Student");
  String? option = stdin.readLineSync();
  if (option == '1') {
    Admin admin = Admin();
    admin.Login();
    print('1.Teachers_info');
    String? option2 = stdin.readLineSync();
    if (option2 == '1') {
      Admin teacher = Admin();
      teacher.Teachersinfo();
    }
  } else if (option == '2') {
    Teacher teacher = Teacher();
    teacher.Login();
    print('a.Studentsinfo');
    print('b.Stdentsmarks');
    String? option3 = stdin.readLineSync();
    if (option3 == 'a') {
      final studentsData = await readData();
      print(studentsData);
    } else if (option3 == 'b') {
      Teacher teacher = Teacher();
      teacher.StudentMarks();
    }
  } else if (option == '3') {
    Student student = Student();
    student.Login();
    print('a.Marks');
    String? option4 = stdin.readLineSync();
    if (option4 == 'a') {
      Student student = Student();
      student.Stundentsmarks();
    }
  }
}

Future<List<Map<String, dynamic>>> readData() async {
  // Read the contents of the data.txt
  String contents = await File('data.txt').readAsString();

// Split the contents into lines
  List<String> lines = contents.split('\n');

// Parse each line into a map
  List<Map<String, dynamic>> data = [];
  for (String line in lines) {
    if (line.isNotEmpty) {
      List<String> parts = line.split(',');
      if (parts.length == 4) {
        Map<String, dynamic> entry = {
          'Name': parts[0],
          'email': parts[1],
          'password': parts[2],
          'Attendence': parts[3],
        };
        data.add(entry);
      }
    }
  }

  return data;
}
