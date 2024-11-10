import 'package:flutter/material.dart';
import 'package:digicert/page/login.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.black),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      title: Row(
        children: [
          Image.asset(
            'assets/logo.png', // Ganti dengan path ke logo Anda
            height: 40,
          ),
          const SizedBox(width: 8),
          const Text(
            'DigiCert',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        OutlinedButton.icon(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
            // Aksi ketika tombol login ditekan
          },
          icon: const Icon(
            Icons.person,
            color: Colors.black,
          ),
          label: const Text(
            'Login',
            style: TextStyle(color: Colors.black),
          ),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.black), // Warna border
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Radius border
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}