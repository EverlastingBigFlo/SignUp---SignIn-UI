import 'package:flutter/material.dart';
import 'package:form/components/animations/first_animation.dart';
import 'package:form/components/animations/second_animation.dart';
// import 'package:form/components/animations/signin_button.dart';
import 'package:form/components/animations/signin_enteryour.dart';
import 'package:form/components/animations/signin_welcomeback.dart';
import 'package:form/components/signin_input.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;
  late FocusNode focusnode1;
  late FocusNode focusnode2;
  late FocusNode focusnode3;
  late FocusNode focusnode4;

  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
    focusnode1 = FocusNode();
    focusnode2 = FocusNode();
    focusnode3 = FocusNode();
    focusnode4 = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    focusnode1.dispose();
    focusnode2.dispose();
    focusnode3.dispose();
    focusnode4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 244, 243, 1),
      body: Stack(
        children: [
          const Positioned(left: -80, top: 50, child: FirstCircle()),
          const Positioned(left: 50, bottom: 60, child: SecondCircle()),
          const Positioned(top: 65, left: 30, child: SignInWelcomeBack()),
          const Positioned(top: 120, left: 30, child: SigninEnterYour()),
          Positioned(
            top: 200,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SignInInput(
                controllers: controller1,
                focusnode: focusnode1,
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SignInInput(
                controllers: controller2,
                focusnode: focusnode2,
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SignInInput(
                controllers: controller3,
                focusnode: focusnode3,
              ),
            ),
          ),
          Positioned(
            top: 380,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SignInInput(
                controllers: controller4,
                focusnode: focusnode4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}