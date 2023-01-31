import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController? controller;
  final IconData? data;
  final String? hintText;
  bool ? isObs

  CustomTextField({
    this.controller,
    this.data,
    this.hinText,
    this.isObsecre,
    this.enabled!,
  }) {
    // TODO: implement CustomTextField
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return const Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(10),
      child: TextFormField(
          enabled: enabled,
          controller: controller,
          obscureText: isObsecre,
          cursorColor: Theme
              .of(context)
              .primaryColor,
          decoration: InputDecoration(
            border: InputBorder.none
            prefixIcon: Icon(
            data,
            color: Colors.cyan,
          ),
          focusColor
          :
              .of(context)
          .primaryColor,
      hintText: hintText,
    ),)
    ,
    );
  }
}
