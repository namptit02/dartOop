import 'dart:math';

abstract class Course {
  String name;
  int numberOfStudents;
  Course(this.name, this.numberOfStudents);
  List<Student> students = [];
  void addStudent(Student std) {
    students.add(std);
  }

  int remainMembers() {
    return numberOfStudents - students.length;
  }
}

/////////////
////
////
abstract class Buildable {
  void build();
}

//
///
////
////
class FlutterCourse extends Course implements Buildable {
  FlutterCourse() : super("Flutter", 11);

  @override
  void build() {
    print("Building Android...");
    print("Building iOS...");
    print("Building Web...");
    print("Building Desktop app...");
  }
}

///
///

class AndroidCourse extends Course implements Buildable {
  AndroidCourse() : super("Android", 12);

  @override
  void build() {
    print("Building Android...");
  }
}

///
///
class IOSCourse extends Course implements Buildable {
  IOSCourse() : super("iOS", 13);

  @override
  void build() {
    print("Building iOS...");
  }
}

///
///

class WebCourse extends Course implements Buildable {
  WebCourse() : super("Web", 14);

  @override
  void build() {
    print("Building Web...");
  }
}

////
///
class Student {
  String name;
  Student(this.name);
}

void main() {
  var flutterCourse = FlutterCourse();
  var androidCourse = AndroidCourse();
  var iosCourse = IOSCourse();
  var webCourse = WebCourse();

  var studentA = Student("A");
  var studentB = Student("B");
  var studentC = Student("C");
  var studentD = Student("D");
  var studentE = Student("E");
  var studentF = Student("F");

  flutterCourse.addStudent(studentA);
  flutterCourse.addStudent(studentB);
  androidCourse.addStudent(studentB);
  androidCourse.addStudent(studentC);
  androidCourse.addStudent(studentD);
  iosCourse.addStudent(studentD);
  iosCourse.addStudent(studentE);
  iosCourse.addStudent(studentF);
  webCourse.addStudent(studentF);

  //bài 1.
  FlutterCourse flutterCourseBuild = FlutterCourse();
  AndroidCourse androidCourseBuild = AndroidCourse();
  IOSCourse iosCourseBuild = IOSCourse();
  WebCourse webCourseBuild = WebCourse();
  print('Tính năng của lớp Flutter là:');
  flutterCourseBuild.build();
  print('Tính năng của lớp Androi là:');
  androidCourseBuild.build();
  print('Tính năng của lớp Ios là:');
  iosCourseBuild.build();
  print('Tính năng của lớp Web là:');
  webCourseBuild.build();
/*
flutter: Tính năng của lớp Flutter là:
flutter: Building Android...
flutter: Building iOS...
flutter: Building Web...
flutter: Building Desktop app...
flutter: Tính năng của lớp Androi là:
flutter: Building Android...
flutter: Tính năng của lớp Ios là:
flutter: Building iOS...
flutter: Tính năng của lớp Web là:
flutter: Building Web...
*/
  // bài 2
  print(
      "Remaining members of Flutter course: ${flutterCourse.remainMembers()}");
  print(
      "Remaining members of Android course: ${androidCourse.remainMembers()}");
  print("Remaining members of iOS course: ${iosCourse.remainMembers()}");
  print("Remaining members of Web course: ${webCourse.remainMembers()}");

  //bài 3
  List<String> studentFlutter = [];
  for (var student in flutterCourse.students) {
    studentFlutter.add(student.name);
  }

//hàm random chữ cái
  String generateRandomLetter(List<String> ds) {
    Random random = Random();
    String letter = String.fromCharCode(65 + random.nextInt(26));
    while (ds.contains(letter)) {
      letter = String.fromCharCode(65 + random.nextInt(26));
    }
    return letter;
  }

  for (int i = 0; i < flutterCourse.remainMembers(); i++) {
    studentFlutter.add(generateRandomLetter(studentFlutter));
  }
  print('Kết quả sau khi bổ sung thêm thành viên lớp Flutter là:');
  print(studentFlutter);
  List<String> studentAndroi = [];
  for (var student in androidCourse.students) {
    studentAndroi.add(student.name);
  }
  for (int i = 0; i < androidCourse.remainMembers(); i++) {
    studentAndroi.add(generateRandomLetter(studentAndroi));
  }
  print('Kết quả sau khi bổ sung thêm thành viên lớp Androi là:');
  print(studentAndroi);
}
