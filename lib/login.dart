import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(20),
        //login  form
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Parcel Monkey',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const Text(
              'Login',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email/Username',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
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
                //login logic
                //check if email and pass are not empty
                if (emailController.text.isEmpty ||
                    passwordController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter email and password'),
                      showCloseIcon: true,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                    ),
                  );
                  return;
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      )),
    );
  }
}
