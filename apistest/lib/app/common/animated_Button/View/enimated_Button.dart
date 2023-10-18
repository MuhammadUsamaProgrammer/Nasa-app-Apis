import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/animated_Button_Provider.dart';

// ignore: must_be_immutable
class EnimatedButton extends StatelessWidget {
  final Key keY;
  final double height;
  final double changedheight;
  final double width;
  final double changedWidth;
  final double radius;
  final Color borderColor;
  final String text;
  final Color textColor;
  final double changedTextheight;
  VoidCallback? ontap;
  VoidCallback? onRelease;
  EnimatedButton({
    super.key,
    required this.keY,
    this.height = 50,
    this.changedheight = 45,
    this.width = double.infinity,
    this.changedWidth = double.infinity,
    this.radius = 15,
    this.borderColor = Colors.white,
    required this.text,
    this.textColor = Colors.white,
    this.changedTextheight = 12,
    this.ontap,
    this.onRelease,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AnimatedButtonProvider>(builder: (context, value, child) {
      final isCurrentlyPressed = value.isElevated(keY);
      return Listener(
        onPointerUp: (_) {
          if (onRelease != null) {
            onRelease!();
          }
          value.toggleIsElevated(
            Key('null'),
          );
        },
        onPointerDown: (_) {
          if (ontap != null) {
            ontap!();
          }
          value.toggleIsElevated(keY);
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: isCurrentlyPressed ? changedheight : height,
          width: isCurrentlyPressed ? changedWidth : width,
          decoration: BoxDecoration(
            gradient: isCurrentlyPressed
                ? LinearGradient(colors: [
                    Color.fromARGB(255, 192, 104, 2),
                    Color.fromARGB(255, 192, 46, 2),
                    Color.fromARGB(255, 192, 46, 2),
                    Color.fromARGB(255, 192, 46, 2),
                  ])
                : LinearGradient(colors: [
                    Color.fromARGB(255, 192, 104, 2),
                    Color.fromARGB(255, 192, 46, 2),
                  ]),
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(radius),
            boxShadow: isCurrentlyPressed
                ? [
                    BoxShadow(
                      color: const Color.fromARGB(0, 33, 33, 33),
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Color.fromARGB(0, 51, 51, 75),
                      offset: Offset(-2, -2),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]
                : null,
          ),
          child: Center(
            child: Center(
              child: AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 200),
                style: TextStyle(
                    fontFamily: 'Space',
                    color: textColor,
                    fontSize: isCurrentlyPressed ? changedTextheight : 14,
                    fontWeight:
                        isCurrentlyPressed ? FontWeight.w400 : FontWeight.w500),
                child: Text(
                  text,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
