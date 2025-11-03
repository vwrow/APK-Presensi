import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String selectedStatus = 'Alpha'; // Set Alpha as default
  String? attendanceTime;

  Color getStatusColor(String status) {
    switch (status) {
      case 'Present':
        return Colors.green;
      case 'Sakit':
        return const Color.fromARGB(255, 33, 89, 243);
      case 'Izin':
        return const Color.fromARGB(255, 41, 194, 218);
      case 'Alpha':
        return Color.fromARGB(255, 255, 0, 0);
      default:
        return const Color.fromARGB(150, 0, 0, 0);
    }
  }

  void _showAttendanceOptions() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color.fromARGB(255, 176, 20, 20),
          ),
          backgroundColor: Colors.white,
          title: Text('Pilih Status Kehadiran', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromARGB(255, 176, 20, 20)),),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Present',style: TextStyle(fontFamily: 'Poppins'),),
                onTap: () => _updateAttendance('Present'),
              ),
              ListTile(
                title: Text('Izin',style: TextStyle(fontFamily: 'Poppins'),),
                onTap: () => _updateAttendance('Izin'),
              ),
              ListTile(
                title: Text('Sakit',style: TextStyle(fontFamily: 'Poppins'),),
                onTap: () => _updateAttendance('Sakit'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _updateAttendance(String status) {
    final now = DateTime.now();
    final timeString =
        '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    setState(() {
      selectedStatus = status;
      attendanceTime = timeString;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Color.fromARGB(255, 176, 20, 20),
          size: 30,
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0,
              shadowColor: Colors.white,
              shape: CircleBorder(),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 176, 20, 20),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 30),
                child: Text(
                  'Selamat Pagi Alvaro!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Color.fromARGB(255, 176, 20, 20),
                  ),
                ),
              ),
              Center(
                child: Card(
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
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    selectedStatus,
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: getStatusColor(selectedStatus),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  if (attendanceTime != null)
                                    Text(
                                      "Waktu presensi: $attendanceTime",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: const Color.fromARGB(
                                          150,
                                          0,
                                          0,
                                          0,
                                        ),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  if (attendanceTime == null) ...[
                                    SizedBox(height: 10),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color.fromARGB(
                                          255,
                                          176,
                                          20,
                                          20,
                                        ),
                                        shadowColor: Color(
                                          const Color.fromARGB(
                                            255,
                                            0,
                                            0,
                                            0,
                                          ).value,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                        maximumSize: Size(170, 50),
                                      ),
                                      onPressed: _showAttendanceOptions,
                                      child: Text(
                                        'Presensi Sekarang',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                              SizedBox(width: 50),
                              Icon(
                                Icons.fingerprint,
                                size: 70,
                                color: getStatusColor(selectedStatus),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  margin: EdgeInsets.only(top: 20, left: 30, right: 30),
                  color: Color.fromARGB(255, 176, 20, 20),
                  child: Container(
                    width: 2500,
                    height: 370,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Presentase Kehadiran",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "57%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 2500,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Present',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 2500,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sakit',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 33, 89, 243),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 33, 89, 243),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 2500,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Izin',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: const Color.fromARGB(
                                    255,
                                    41,
                                    194,
                                    218,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 41, 194, 218),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 2500,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Alpha',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        TextButton(
                          style: TextButton.styleFrom(
                            maximumSize: Size(125, 40),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/history');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.history,
                                size: 16,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Cek Riwayat",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
