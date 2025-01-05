import 'package:ashbal_almihrab_app/helper/colors.dart';
import 'package:ashbal_almihrab_app/views/play_sound_view.dart';
import 'package:ashbal_almihrab_app/widgets/my_text.dart';
import 'package:flutter/material.dart';

class SurahView extends StatelessWidget {
  const SurahView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) => PlaySoundView(),
                ),
              );
            },
            child: SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const MyText(
                        text: "سورة الفاتحة",
                        color: Colors.white,
                        fontSize: 20,
                        // textAlign: TextAlign.right,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: const MyText(
                          text: "القارئ مشعل الحداد",
                          color: Colors.white,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/quraa/Mishal_Alhdad.jpg"),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
