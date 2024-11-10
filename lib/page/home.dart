import 'package:flutter/material.dart';
import 'package:digicert/component/user_nav.dart';
import 'package:digicert/component/user_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(),
        body: Container(
          height: 300,
          width: double.infinity,
          color: const Color(0xFF204781),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("SELAMAT DATANG DI E-SERTIFIKAT SMKN 71",
                style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}