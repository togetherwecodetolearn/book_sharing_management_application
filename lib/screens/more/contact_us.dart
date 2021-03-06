import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUs createState() => _ContactUs();
}

class _ContactUs extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
      fontSize: 18,
      color: Color(0xFF193566),
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF193566),
          title: Text(
            "Contact Us",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Color(0xFFECF0F3),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Text('Team Pragmizers',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xFF193566),
                ),
                ),
                SizedBox(height:20),
                Text('Email: teampragmizers@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xFF193566),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
