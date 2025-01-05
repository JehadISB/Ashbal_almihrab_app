import 'dart:async';

import 'package:ashbal_almihrab_app/helper/colors.dart';
import 'package:ashbal_almihrab_app/views/home_view.dart';
import 'package:ashbal_almihrab_app/widgets/my_sized_box.dart';
import 'package:flutter/material.dart';

class SpalshView extends StatefulWidget {
  const SpalshView({super.key});

  @override
  State<SpalshView> createState() => _SpalshViewState();
}

class _SpalshViewState extends State<SpalshView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeView(),
        ),
      ),
    );
    // new Future.delayed(
    //     const Duration(seconds: 5),
    //     () => Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => HomeView()),
    //         ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(200),
                //border: Border.all(color: Colors.white),
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/splashView.jpg",
                    ),
                    fit: BoxFit.fill),
                //    shape: BoxShape.circle
              ),
            ),
            const MyVerticalSizedBox(),
            Center(
              child: Text(
                "أشبال المحراب",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "LBC",
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..color = Colors.white
                    ..strokeWidth = 2,
                ),
              ),
            ),
            const MyVerticalSizedBox(),
            CircularProgressIndicator(
              color: AppColors.main,
            )
          ],
        ),
      ),
    );
  }
}
