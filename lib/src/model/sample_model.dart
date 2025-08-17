// Data model classes here 
import 'package:lazycoder/src/app_config/imports/import.dart';

class sempleModel {
  String? fruit;
  String? size;
  String? color;

  sempleModel({this.fruit, this.size, this.color});

  sempleModel.fromJson(Map<String, dynamic> json) {
    fruit = json['fruit'];
    size = json['size'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fruit'] = this.fruit;
    data['size'] = this.size;
    data['color'] = this.color;
    return data;
  }
}
