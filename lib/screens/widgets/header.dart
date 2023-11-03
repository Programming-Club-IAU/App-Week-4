import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class Header extends StatelessWidget {
  String date = DateFormat('EEE, MMM d').format(DateTime.now());

  Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //welcome statement
      Container(
        padding: const EdgeInsets.only(left: 30, top: 30),
        alignment: Alignment.centerLeft,
        child: Text(
          "Welcome, Pika!",
          style: GoogleFonts.abel(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),

      //day & date
      Container(
        margin: const EdgeInsets.only(left: 30, top: 20),
        alignment: Alignment.centerLeft,
        child: Text(
          date,
          style: GoogleFonts.abel(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      //search bar
      Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: const TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(Icons.search, color: Colors.black87, size: 20),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 20, maxWidth: 25),
              border: InputBorder.none,
              hintText: 'Search Task'),
        ),
      ),
    ]);
  }
}
