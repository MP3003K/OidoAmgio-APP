import 'package:flutter/material.dart';

class LoginBanner extends StatelessWidget {
  const LoginBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/home.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
