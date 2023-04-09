import 'package:cloud_firestore/cloud_firestore.dart';

class Destination {
  String destinationName;

  Destination({required this.destinationName});

  factory Destination.fromJson(Map<String, dynamic> json) {
    return Destination(destinationName: json['destinationName']);
  }

  //to json
  Map<String, dynamic> toJson() {
    return {'destinationName': destinationName};
  }

  //save to cloud firestore
  Future<dynamic> saveToCloud() async {
    //save to cloud firestore
    var id = await FirebaseFirestore.instance
        .collection('destinations')
        .doc(destinationName)
        .set(toJson());
    return id;
  }
}
