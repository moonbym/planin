import 'package:flutter/material.dart';

import 'package:planin/view/components/login.dart';
import 'package:planin/view/pages/login/loginpage.dart';

class WelcomeGuide extends StatelessWidget {
  WelcomeGuide({super.key});
  final PageController controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  controller.jumpToPage(4);
                },
                child: const Text(
                  "ولش کن !",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
            ),
            PageView(
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  GuidePage(
                    asset: "lib/assets/images/1.gif",
                    text: "کلی کار ریخته سرت و نمیدونی چیکار کنی ؟",
                  ),
                  GuidePage(
                    asset: "lib/assets/images/2.gif",
                    text: "پس پاشو اولین قدم رو بردار !",
                  ),
                  GuidePage(
                    asset: "lib/assets/images/3.gif",
                    text: "اولین قدم یه برنامه ریزی خوبه !",
                  ),
                  GuidePage(
                    asset: "lib/assets/images/4.gif",
                    text: "ما اینجاییم تا به تو کمک کنیم",
                  ),
                  GuidePage(
                    asset: "lib/assets/images/5.gif",
                    text: "پس بزن بریم موفقیتتو ببینیم !",
                  ),
                ]),
          ],
        ),
        floatingActionButton: Visibility(
          child: IconButton(
            onPressed: () {
              if (controller.page! < 4) {
                controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              } else {
                Navigator.of(context).pushAndRemoveUntil(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const LoginPage();
                  },
                ), (route) => false);
              }
            },
            icon: const Icon(Icons.navigate_next),
            iconSize: 35,
          ),
        ));
  }
}
