import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Color.fromARGB(255, 176, 20, 20)),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Color.fromARGB(255, 176, 20, 20),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shadowColor: Colors.transparent,
              shape: CircleBorder(),
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/login');
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.logout,size: 25, color: Color.fromARGB(255, 176, 20, 20)),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 80,
            backgroundColor: Color.fromARGB(255, 176, 20, 20),
            backgroundImage: AssetImage('assets/profile.jpg'
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            color: Color.fromARGB(255, 176, 20, 20),
            child: Container(
              width: 2500,
              height: 460,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 2500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Keyza Alvaro Faiq",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(150, 0, 0, 0),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Text(
                    "Tingkat",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 2500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "XI",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(150, 0, 0, 0),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Text(
                    "NIS",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 2500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "532532000324",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(150, 0, 0, 0),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 2500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "xxxxxxxxxxx",
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(150, 0, 0, 0),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Color(
                        const Color.fromARGB(255, 0, 0, 0).value,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      maximumSize: Size(170, 50),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: TextStyle(
                        color: Color.fromARGB(255, 176, 20, 20),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
