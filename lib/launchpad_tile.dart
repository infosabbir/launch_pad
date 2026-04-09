import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LaunchpadTile extends StatefulWidget {
  const LaunchpadTile({super.key, required this.audio, required this.color});

  final String audio;
  final Color color;

  @override
  State<LaunchpadTile> createState() => _LaunchpadTileState();
}

class _LaunchpadTileState extends State<LaunchpadTile> {
  bool _onPress = false;
  late final AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _player.setReleaseMode(ReleaseMode.stop);
  }

  Future<void> _playSound() async {
    await _player.stop();
    await _player.play(AssetSource(widget.audio));
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() => _onPress = true);
        _playSound();
      },

      onTapUp: (_) => setState(() => _onPress = false),

      onTapCancel: () => setState(() => _onPress = false),

      child: AnimatedContainer(
        duration: Duration.zero,
        decoration: BoxDecoration(
          color: _onPress ? Colors.yellow : null,
          borderRadius: BorderRadius.circular(20.0),
          gradient: _onPress
              ? null
              : RadialGradient(
                  radius: 0.9,
                  colors: [
                    widget.color.withValues(alpha: 0.9),
                    widget.color.withValues(alpha: 0.4),
                    widget.color.withValues(alpha: 0.1),
                  ],
                ),
          boxShadow: [
            if (!_onPress)
              BoxShadow(
                color: widget.color.withValues(alpha: 0.4),
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
          ],
        ),
      ),
    );
  }
}
