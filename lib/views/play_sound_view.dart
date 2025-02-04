import 'package:ashbal_almihrab_app/helper/colors.dart';
import 'package:ashbal_almihrab_app/widgets/label_audio_info.dart';
import 'package:ashbal_almihrab_app/widgets/my_sized_box.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.background,
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                LabelAudioInfo(),
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

                //     DraggableScrollableSheet(builder: (context, scrollController) {
                //    return
                //       );
                //     })
              ],
            ),
            MyVerticalSizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  decoration:
                      const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 5),
                      blurRadius: 15,
                    ),
                  ]),
                  child: IconButton(
                    onPressed: () {
                      playAndPauseAudio();
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
          ],
        ),
      ),
    );
  }

  void playAndPauseAudio() {
    if (isPlaying) {
      isPlaying = false;
      player.pause();
    } else {
      isPlaying = true;
      player.play(AssetSource("sounds/Alikhlas.mp3"));
    }
  }
}
