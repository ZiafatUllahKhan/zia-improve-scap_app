import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CusttomContainer extends StatelessWidget {
  var text;
  var COLORS;
  var STyl;
  var RADIUS;
  late double? WIDTH;
  late double? HEIGHT;

  CusttomContainer({
    Key? key,
    this.text,
    this.COLORS,
    this.WIDTH,
    this.STyl,
    this.RADIUS,
    this.HEIGHT,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 24),
      child: Container(
        width: WIDTH,
        height: HEIGHT,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: COLORS,
          borderRadius: RADIUS,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: STyl,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
