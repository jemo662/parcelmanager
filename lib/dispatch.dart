import 'package:flutter/material.dart';

class ParcelDispatchPage extends StatefulWidget {
  const ParcelDispatchPage({super.key});

  @override
  State<ParcelDispatchPage> createState() => _ParcelDispatchPageState();
}

class _ParcelDispatchPageState extends State<ParcelDispatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parcel Dispatch'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            // form

            const SizedBox(
              height: 100,
              child: Text('Enter Parcel ID or Scan QR Code'),
            ),

            const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.numbers),
                border: OutlineInputBorder(),
                labelText: 'Parcel ID',
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            const Text('OR'),

            const SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.qr_code),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Scan QR Code'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
