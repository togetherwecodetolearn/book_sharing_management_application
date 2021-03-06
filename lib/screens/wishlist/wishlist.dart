import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/screens/explore/explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Wishlist extends StatefulWidget {
  @override
  _Wishlist createState() => _Wishlist();
}

class _Wishlist extends State<Wishlist> {
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
            "Wishlist",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Color(0xFFECF0F3),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              Icon(
                CupertinoIcons.heart_circle_fill,
                size: 60,
                color: Color(0xFF193566),
              ),
              Text(
                'No Books Wishlisted',
                style: optionStyle,
              ),
              CustomizedNeumorphicButton(
                fontSize: 24.0,
                buttonText: "Explore",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Explore();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
