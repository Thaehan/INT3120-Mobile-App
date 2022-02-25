import './person.dart';

void main() {
  var string = "Do Van Dat - rename";
  Person dat = Person("Do Van Dat", 20, true);
  dat.name = string;
  // ignore: avoid_print
  print(dat.getName);
}
