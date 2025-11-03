import 'package:flutter/material.dart';

class historyPage extends StatelessWidget {
  const historyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Color.fromARGB(255, 176, 20, 20)),
        title: Text(
          "History",
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
            onPressed: () {},
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.sort,size: 25, color: Color.fromARGB(255, 176, 20, 20)),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            color: Color.fromARGB(255, 176, 20, 20),
            child: Container(
              width: 2500,
              height: 230,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Senin, 3 November 2025',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 2500,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status Kehadiran",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              "Present",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.green,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Waktu presensi: 06:22",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.fingerprint, size: 70, color: Colors.green),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            color: Color.fromARGB(255, 176, 20, 20),
            child: Container(
              width: 2500,
              height: 230,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jum\'at, 1 November 2025',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 2500,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status Kehadiran",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              "Izin",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 41, 194, 218),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Waktu presensi: 06:14",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Icon(
                          Icons.fingerprint,
                          size: 70,
                          color: Color.fromARGB(255, 41, 194, 218),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            color: Color.fromARGB(255, 176, 20, 20),
            child: Container(
              width: 2500,
              height: 230,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kamis, 31 Oktorber 2025',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 2500,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status Kehadiran",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              "Present",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.green,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Waktu presensi: 06:20",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.fingerprint, size: 70, color: Colors.green),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            color: Color.fromARGB(255, 176, 20, 20),
            child: Container(
              width: 2500,
              height: 230,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rabu, 30 Oktober 2025',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 2500,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status Kehadiran",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              "Present",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.green,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Waktu presensi: 06:24",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.fingerprint, size: 70, color: Colors.green),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            color: Color.fromARGB(255, 176, 20, 20),
            child: Container(
              width: 2500,
              height: 230,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selasa, 29 Oktober 2025',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 2500,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status Kehadiran",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              "Present",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.green,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Waktu presensi: 06:13",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.fingerprint, size: 70, color: Colors.green),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            color: Color.fromARGB(255, 176, 20, 20),
            child: Container(
              width: 2500,
              height: 230,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Senin, 28 Oktober 2025',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 2500,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status Kehadiran",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              "Alpha",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 255, 0, 0),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Waktu presensi: - ",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.fingerprint, size: 70, color: Color.fromARGB(255,255,0,0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            color: Color.fromARGB(255, 176, 20, 20),
            child: Container(
              width: 2500,
              height: 230,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Senin, 3 November 2025',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 140,
                    width: 2500,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Status Kehadiran",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              "Sakit",
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 33, 89, 243),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Waktu presensi: 06:34",
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(150, 0, 0, 0),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.fingerprint, size: 70, color: Color.fromARGB(255, 33, 89, 243)),
                      ],
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
