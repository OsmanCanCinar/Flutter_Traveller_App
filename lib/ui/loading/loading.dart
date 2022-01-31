import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Color? backgroundColor = HexColor('#063970');
  Color? circleColor = HexColor('#eeeee4');

  void navigateToHome() async {
    await Future.delayed(Duration(seconds: 1), () {
      //Navigator.pushNamed(context, '/home'); //enables up back button
      Navigator.popAndPushNamed(
          context, '/home'); // after navigating away, you cant go back to it
      //Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SpinKitCircle(
          color: circleColor,
          size: 90.0,
        ),
      ),
    );
  }
}
