import 'package:flutter/material.dart';

class newFormFields extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  bool isobscure;
  final Icon icon;
  final FormFieldValidator<String>? validator;
  newFormFields({
    Key? key,
    required this.hint,
    this.isobscure = false,
    required this.icon,
    this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isobscure,
      validator: validator,
      decoration: InputDecoration(
          prefixIcon: icon,
          fillColor: Colors.grey[300],
          filled: true,
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      style: TextStyle(color: Colors.black),
    );
  }
}
