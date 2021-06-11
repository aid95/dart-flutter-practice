import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton(
      {Key? key,
      required this.image,
      required this.text,
      required this.primaryColor,
      required this.radius,
      required this.onPressed,
      required this.onPrimaryColor})
      : super(key: key);

  final Widget image;
  final Widget text;
  final Color primaryColor;
  final Color onPrimaryColor;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(height: 40),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: primaryColor, onPrimary: onPrimaryColor),
          child: Row(
            children: [
              image,
              text,
              Opacity(
                opacity: 0.0,
                child: Image.asset('assets/images/glogo.png'),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
      ),
    );
  }
}
