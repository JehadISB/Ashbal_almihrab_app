import 'package:ashbal_almihrab_app/helper/colors.dart';
import 'package:ashbal_almihrab_app/widgets/my_text.dart';
import 'package:flutter/material.dart';

class LabelAudioInfo extends StatelessWidget {
  const LabelAudioInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      width: 279,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage("assets/images/quraa/Mishal_Alhdad.jpg"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(AppColors.main, BlendMode.multiply)),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(0, 20),
              blurRadius: 30,
              spreadRadius: 0,
            ),
          ]),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MyText(
            text: "سورة الفاتحة",
            color: Colors.white,
            fontSize: 20,
            // textAlign: TextAlign.right,
          ),
          SizedBox(
            width: 180,
            child: MyText(
              text: "القارئ مشعل الحداد",
              color: Colors.white,
              fontSize: 20,
              overflow: TextOverflow.ellipsis,

              // textAlign: TextAlign.right,
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
