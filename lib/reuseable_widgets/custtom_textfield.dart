import 'package:flutter/material.dart';


class CusttomTextFormField extends StatelessWidget {
  var controller;
  var valide;
  var prefixicon;
  var Sufix;
  var hintText;
  var HintStyle;
  var COLORS;
  late double? WIDTH;
  late double? HEIGHT;


  CusttomTextFormField(
      {Key? key,
      this.controller,
      this.valide,
      this.hintText,
      this.prefixicon,
        this.Sufix,
        this.HEIGHT,
        this.WIDTH,
        this.COLORS,
        this.HintStyle,


        t
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:23, right: 24),
      child: Container(
        width: WIDTH,
        height: HEIGHT,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: COLORS
          // color: AppColor.darckgrayColor,
          // borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: TextFormField(
            controller: controller,
            validator: valide,
            decoration: InputDecoration(
              prefixIcon: prefixicon,
              suffixIcon: Sufix,
              hintText: hintText,
              hintStyle:HintStyle,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
