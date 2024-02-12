import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.textButton, this.onTap});
  String textButton;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: Center(
            child: Text(
              textButton,
              style:const TextStyle(
                fontSize: 18,
                color: Color(0xff274460),
              ),
            ),
          ),
      ),
    );
  }
}
