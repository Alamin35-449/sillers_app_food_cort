import 'package:flutter/material.dart';
import 'package:sillers_app_food_cort/widget/customtextField.dart';
class register_screen extends StatefulWidget {
  const register_screen({Key? key}) : super(key: key);

  @override
  State<register_screen> createState() => _register_screenState();
}

class _register_screenState extends State<register_screen> {

  TextEditingController anycontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CustomTextField(
        controller:anycontroller,
        data:Icons.phone,
        hintText:"Phone",
        isObsecre:false,
      ),

    );
  }
}
