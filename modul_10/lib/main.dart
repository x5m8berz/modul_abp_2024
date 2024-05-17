// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modul_10/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Part 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Demo Layout Part 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = const [
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "01/02/2022", "nilai": "140"},
    {"tgl": "12/01/2022", "nilai": "170"},
    {"tgl": "11/12/2021", "nilai": "110"},
    {"tgl": "10/11/2022", "nilai": "180"},
    {"tgl": "09/10/2022", "nilai": "190"},
    {"tgl": "08/09/2022", "nilai": "160"},
    {"tgl": "07/08/2022", "nilai": "155"},
    {"tgl": "06/07/2022", "nilai": "145"},
    {"tgl": "05/06/2022", "nilai": "140"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          color: Color(0xFF7367F0),
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.25,
                        ),
                      ),
                      Text(
                        "1301213446 - Hanrocky Halim",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4B4B4B)),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()),
                      );
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('images/profpic.jpg'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFF4839EB), Color(0xFF7367F0)]),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Status tes TOEFL Anda:",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Lulus",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.25,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Listening\n      80',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Structure\n      80',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Reading\n       90',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            Text(
              "Riwayat Tes",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.25),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Tanggal Tes:\nNilai",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          Text(
                            '${data[index]["tgl"]!}\n${data[index]["nilai"]!}',
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
