import 'package:ecommers2024/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hint;
  final String label;
  final IconData icon;
  final bool isPassword;
  final TextInputType? keyboardType;
  final void Function()? onTapIcon;
  final TextEditingController mycontroller;
  final String? Function(String?)? valid;
  const CustomTextFormAuth({
    super.key,
    required this.hint,
    required this.label,
    required this.icon,
    this.isPassword = true,
    required this.mycontroller,
    required this.valid,
    required this.keyboardType,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        controller: mycontroller,
        obscureText: isPassword,
        validator: valid,
        keyboardType: keyboardType,
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
            suffixIcon: InkWell(child: Icon(icon), onTap: onTapIcon),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColor.primaryColor))),
      ),
    );
  }
}
