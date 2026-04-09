import 'package:flutter/material.dart';
import 'package:launch_pad/lauchpad_list.dart';
import 'package:launch_pad/launchpad_appbar.dart';
import 'package:launch_pad/launchpad_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme styl = Theme.of(context).textTheme;
    ColorScheme colr = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: LaunchPadAppbar(title: 'LaunchPad', colr: colr, styl: styl),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
        child: GridView.builder(
          itemCount: LauchpadList.padAudio.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            final audio = LauchpadList.padAudio[index];
            final color =
                LauchpadList.padColors[index % LauchpadList.padColors.length];

            return  LaunchpadTile(audio: audio, color: color);
          },
        ),
      ),
    );
  }
}
