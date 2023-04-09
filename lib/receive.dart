import 'package:flutter/material.dart';

class ReceiveParcelPage extends StatefulWidget {
  const ReceiveParcelPage({super.key});

  @override
  State<ReceiveParcelPage> createState() => _ReceiveParcelPageState();
}

class _ReceiveParcelPageState extends State<ReceiveParcelPage> {
  //form key and controllers
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController ConsignorNameController = TextEditingController();
  TextEditingController ConsignorPhoneController = TextEditingController();

  TextEditingController parcelDescriptionController = TextEditingController();
  TextEditingController parcelWeightController = TextEditingController();
  TextEditingController parcelValueController = TextEditingController();
  TextEditingController ConsigneeNameController = TextEditingController();
  TextEditingController ConsigneePhoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                // textformfields for Consignor name, Consignor phone, Consignor address, parcel description, parcel weight, parcel value, parcel status
                // button to submit
                children: [
                  const Text('Parcel Monkey',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  const Text(
                    'Receive Parcel',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 20),
                  ExpansionTile(
                    title: const Text('Consignor\'s Details'),
                    initiallyExpanded: true,
                    subtitle: const Text('Enter Consignor\'s details',
                        style: TextStyle(color: Colors.grey)),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            labelText: 'Consignor\'s Name',
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.phone),
                          border: OutlineInputBorder(),
                          labelText: 'Consignor\'s Phone',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  ExpansionTile(
                    subtitle: const Text('Enter parcel details',
                        style: TextStyle(color: Colors.grey)),
                    initiallyExpanded: true,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    title: const Text(
                      'Parcel Details',
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.description),
                            border: OutlineInputBorder(),
                            labelText: 'Parcel Description',
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.monitor_weight),
                          border: OutlineInputBorder(),
                          labelText: 'Parcel Weight',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.monetization_on),
                          border: OutlineInputBorder(),
                          labelText: 'Parcel Value',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  //Consignee details
                  ExpansionTile(
                    initiallyExpanded: true,
                    subtitle: const Text('Enter Consignee\'s details',
                        style: TextStyle(color: Colors.grey)),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    title: const Text(
                      'Consignee\'s Details',
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            labelText: 'Consignee\'s Name',
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.phone),
                          border: OutlineInputBorder(),
                          labelText: 'Consignee\'s Phone',
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(200, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      //receive parcel logic
                    },
                    child: const Text('Receive Parcel'),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
