import 'package:flutter/material.dart';
import 'package:planin/view/pages/welcome/welcome_guide.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }

  navigate() async {
    //ToDo:addif
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushAndRemoveUntil(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              WelcomeGuide(),
        ),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //TODO:add Logo
                  const FlutterLogo(
                    size: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      //ToDO:add text
                      "خوش آمدید",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              //ToDO:add text2
              padding: EdgeInsets.all(20.0),
              child: Text("Designed with azinaa"),
            )
          ],
        ),
      ),
    );
  }
}
