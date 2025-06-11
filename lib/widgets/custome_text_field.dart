import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomeTextField extends StatelessWidget {
  CustomeTextField({
    super.key,
    this.keyboardType,
    this.hintText,
    this.onChanged,
    this.isSecure = false,
  });
  String? hintText;
  bool? isSecure;
  TextInputType? keyboardType;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isSecure!,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        //hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
