// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';

class Player extends Model {
  final String name;
  final String number;
  final String imagePath;
  int rating;

  Player(this.name, this.number, this.imagePath, this.rating);

  factory Player.fromMap(Map<String, dynamic> json) {
    return Player(json['name'], json['number'], json['imagePath'], 0);
  }

  void setRating(newRating) {
    rating = newRating;
    notifyListeners();
  }
}
