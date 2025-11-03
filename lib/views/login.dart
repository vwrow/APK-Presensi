import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Log Into Your Account!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Color.fromARGB(255, 176, 20, 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              height: 40,
              width: 225,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username/ NIS',
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(80, 0, 0, 0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 225,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(80, 0, 0, 0),
                  ),
                ),
                obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 176, 20, 20),
                  shadowColor: Color(const Color.fromARGB(255, 0, 0, 0).value),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/signup');
              },
              child: Text(
                'Create an Account',
                style: TextStyle(
                  color: Color.fromARGB(255, 176, 20, 20),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
