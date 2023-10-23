import 'package:flutter/material.dart';
import 'package:planin/model/utilities/pagesettings/pagesettings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Flex(
                  direction: PageSettings.horizontal(context)
                      ? Axis.horizontal
                      : Axis.vertical,
                  textDirection: TextDirection.rtl,
                  children: [
                    Flexible(
                      flex: PageSettings.horizontal(context) ? 3 : 1,
                      child: SizedBox(
                        child: Image.asset('lib/assets/images/Login.gif'),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: SizedBox(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: PageSettings.horizontal(context)
                                ? MainAxisAlignment.center
                                : MainAxisAlignment.start,
                            children: [
                              const Text(
                                "لطفاً نام کاربری و رمز عبور خود را وارد کنید",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Form(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 50,
                                        right: 50,
                                        bottom: 10),
                                    child: TextFormField(
                                      textDirection: TextDirection.rtl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        label: Text(
                                          "نام کاربری",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 50,
                                        right: 50,
                                        bottom: 20),
                                    child: TextFormField(
                                      textDirection: TextDirection.rtl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        label: Text(
                                          " رمز عبور",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 200,
                                    child: FloatingActionButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      onPressed: () {},
                                      child: Text("login"),
                                    ),
                                  )
                                ],
                              )),
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
