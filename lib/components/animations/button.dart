import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    _animation = Tween<Offset>(begin: const Offset(0.0, 3.0), end: Offset.zero)
        .animate(_controller);

    Future.delayed(const Duration(seconds: 2), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: ElevatedButton(
        onPressed: () => {Navigator.pushNamed(context, 'signup')},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(45, 10, 45, 10),
          child: Text(
            'JOIN NOW',
            style: GoogleFonts.inder(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
