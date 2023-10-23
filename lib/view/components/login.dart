import 'package:flutter/material.dart';
import 'package:planin/model/utilities/pagesettings/pagesettings.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({super.key, required this.asset, required this.text});
  final String asset;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(asset),
              alignment: PageSettings.horizontal(context)
                  ? const Alignment(-.5, 1)
                  : const Alignment(0, -.5))),
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        direction:
            PageSettings.horizontal(context) ? Axis.vertical : Axis.horizontal,
        children: [
          Padding(
            padding: PageSettings.horizontal(context)
                ? const EdgeInsets.only(right: 50)
                : const EdgeInsets.only(bottom: 50),
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              textDirection: TextDirection.rtl,
            ),
          )
        ],
      ),
    );
  }
}
