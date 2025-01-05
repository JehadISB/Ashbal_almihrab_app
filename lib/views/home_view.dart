import 'package:ashbal_almihrab_app/helper/colors.dart';
import 'package:ashbal_almihrab_app/views/spalsh_view.dart';
import 'package:ashbal_almihrab_app/views/surah_view.dart';
import 'package:ashbal_almihrab_app/widgets/my_text.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 48, 47, 47),
        title: const MyText(
          text: "اختر القارئ",
          color: Colors.white,
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SurahView(),
          ),
        ),
        child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 2,
          children: List.generate(1, (index) {
            return Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/quraa/Mishal_Alhdad.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(30),
                //shape: BoxShape.circle),
              ),
            );
          }),
        ),
      ),
    );
  }
}
