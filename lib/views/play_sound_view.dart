import 'package:ashbal_almihrab_app/helper/colors.dart';
import 'package:ashbal_almihrab_app/widgets/my_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class PlaySoundView extends StatelessWidget {
  final AudioPlayer player = AudioPlayer();
  bool isPlaying = false;
  PlaySoundView({super.key});

  setPath({required String path}) {
    player.setSourceAsset(path);
  }

  playPause() {
    if (isPlaying) {
      player.pause();
      isPlaying = false;
    } else {
      // player.play
      //   player.play(Source("assets/images/Alikhlas.mp3"));
      isPlaying = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.background,
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 390,
                  width: 279,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: const AssetImage(
                              "assets/images/quraa/Mishal_Alhdad.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              AppColors.main, BlendMode.multiply)),
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
                ),
                Positioned(
                  bottom: -45,
                  left: -40,
                  child: SleekCircularSlider(
                    min: 0,
                    max: 4,
                    initialValue: 2,
                    appearance: CircularSliderAppearance(
                      size: 360,
                      counterClockwise: true,
                      startAngle: 150,
                      angleRange: 120,
                      customWidths: CustomSliderWidths(
                        trackWidth: 3,
                        progressBarWidth: 10,
                        shadowWidth: 0,
                      ),
                      customColors: CustomSliderColors(
                          trackColor: Colors.black12, // AppColors.main,
                          progressBarColor:
                              Colors.black // AppColors.background,
                          ),
                      infoProperties: InfoProperties(
                        mainLabelStyle: const TextStyle(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -100,
                  child: IconButton(
                    onPressed: () {
                      player.play(
                        AssetSource("sounds/Alikhlas.mp3"),
                      );
                    },
                    icon: Icon(Icons.play_arrow),
                  ),
                ),
                Positioned(
                  bottom: -130,
                  right: 30,
                  child: Row(
                    children: [
                      const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.skip_previous,
                          color: Colors.black,
                        ),
                        iconSize: 60,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 5),
                                blurRadius: 15,
                              ),
                            ]),
                        child: IconButton(
                          onPressed: () {
                            AudioPlayer audioPlayer = AudioPlayer();
                            audioPlayer
                                .play(AssetSource("sounds/Alikhlas.mp3"));
                          },
                          icon: const Icon(Icons.pause_circle_filled),
                          iconSize: 60,
                        ),
                      ),
                      const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.skip_next,
                          color: Colors.black,
                        ),
                        iconSize: 60,
                      ),
                    ],
                  ),
                ),
                //     DraggableScrollableSheet(builder: (context, scrollController) {
                //    return
                //       );
                //     })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
