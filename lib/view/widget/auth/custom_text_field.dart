import 'package:ecommers2024/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hint;
  final String label;
  final Icon icon;
  final bool isPassword;
  final TextEditingController mycontroller;
  const CustomTextFormAuth(
      {super.key,
      required this.hint,
      required this.label,
      required this.icon,
      this.isPassword = false,
      required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        controller: mycontroller,
        obscureText: isPassword,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 12),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(label)),
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            suffixIcon: icon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColor.primaryColor))),
      ),
    );
  }
}
