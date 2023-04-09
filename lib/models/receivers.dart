import 'package:cloud_firestore/cloud_firestore.dart';

class ParcelCollector {
  String? name;
  String? phone;
  String? parcelId;

  String? id;

  ParcelCollector(
      {required this.name,
      required this.phone,
      required this.id,
      required this.parcelId});

  ParcelCollector.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    parcelId = json['parcelId'];

    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;

    data['id'] = id;
    return data;
  }

  Future<dynamic> saveToCloud() async {
    //save to cloud firestore
    var id = await FirebaseFirestore.instance
        .collection('parcelCollectors')
        .doc(phone! + DateTime.now().millisecondsSinceEpoch.toString())
        .set(toJson());

    return id;
  }

  //function to update parcel status
  Future<dynamic> updateParcelStatus() async {
    //save to cloud firestore
    var id = await FirebaseFirestore.instance
        .collection('parcels')
        .doc(parcelId)
        .update({'status': 'Collected'});

    return id;
  }
}
