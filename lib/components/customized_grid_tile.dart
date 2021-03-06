import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomizedGridTile extends StatefulWidget {
  final givenheight;
  final onPress;
  final image;
  final bookPostedBy;
  final bookName;

  CustomizedGridTile({
    this.givenheight,
    this.onPress,
    this.image,
    this.bookName,
    this.bookPostedBy,
  });

  @override
  _CustomizedGridTileState createState() => _CustomizedGridTileState();
}

class _CustomizedGridTileState extends State<CustomizedGridTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Neumorphic(
            margin: EdgeInsets.all(0.0),
            style: NeumorphicStyle(
              depth: 20,
              surfaceIntensity: 0.10,
              intensity: 0.80,
              shape: NeumorphicShape.convex,
              color: Color(0xFFECF0F3),
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
            ),
            child: Container(
              padding: EdgeInsets.all(0.0),
              height: 200.0,
              width: 120.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return widget.onPress;
                        },
                      ),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Image.network(widget.image),
                          height: 100,
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        Text(
                          widget.bookName,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
