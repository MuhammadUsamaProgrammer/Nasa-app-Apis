import 'package:flutter/material.dart';

class FirstScreenButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const FirstScreenButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: ontap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 15)),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.add_to_home_screen_rounded,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
