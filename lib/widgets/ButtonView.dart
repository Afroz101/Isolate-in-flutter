import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  String tittle;
  GestureTapCallback onTap;
  Color? buttonColor;

  ButtonView(
      {super.key, required this.tittle, required this.onTap, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: buttonColor ?? Colors.red,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          height: 50,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            tittle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
    );
  }
}
