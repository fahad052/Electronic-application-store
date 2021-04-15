import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop1/constants.dart';
import 'package:shop1/widget/home/bodyScreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(
          'مرحبا بكم في متجر الالترونيات',
          style: GoogleFonts.getFont('Almarai'),
        ),
        actions: [
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        ],
        elevation: 0,
      ),
      body: BodyScreen(),
    );
  }
}
