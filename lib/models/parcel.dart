import 'package:cloud_firestore/cloud_firestore.dart';

import 'destinations.dart';

class Parcel {
  String senderName;
  String senderPhone;
  String receiverName;
  String receiverPhone;
  DateTime date;
  Destination destination;
  Destination pickupPoint;

  Parcel(
      {required this.senderName,
      required this.senderPhone,
      required this.receiverName,
      required this.receiverPhone,
      required this.date,
      required this.destination,
      required this.pickupPoint});

  factory Parcel.fromJson(Map<String, dynamic> json) {
    return Parcel(
        senderName: json['senderName'],
        senderPhone: json['senderPhone'],
        receiverName: json['receiverName'],
        receiverPhone: json['receiverPhone'],
        date: json['date'],
        destination: Destination.fromJson(json['destination']),
        pickupPoint: Destination.fromJson(json['pickupPoint']));
  }

  //to json
  Map<String, dynamic> toJson() {
    return {
      'senderName': senderName,
      'senderPhone': senderPhone,
      'receiverName': receiverName,
      'receiverPhone': receiverPhone,
      'date': date,
      'destination': destination.toJson(),
      'pickupPoint': pickupPoint.toJson()
    };
  }

  //save to cloud firestore
  Future<dynamic> saveToCloud() async {
    //save to cloud firestore
    var id = await FirebaseFirestore.instance
        .collection('parcels')
        .doc(senderPhone + DateTime.now().millisecondsSinceEpoch.toString())
        .set(toJson());

    return id;
  }
}
