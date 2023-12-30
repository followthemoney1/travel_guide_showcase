import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

import '../theme.dart';

class DefaultAudioPlayer extends StatefulWidget {
  final AssetsAudioPlayer audioPlayer;
  final List<Audio> playlist;

  const DefaultAudioPlayer({Key? key, required this.audioPlayer, required this.playlist})
      : super(key: key);

  @override
  _DefaultAudioPlayerState createState() => _DefaultAudioPlayerState();
}

class _DefaultAudioPlayerState extends State<DefaultAudioPlayer> {
  bool _isPlaying = false;
  String _audioPosition = '';
  late Duration _currentPosition;
  int audioPosition = 1;

  @override
  Widget build(BuildContext context) {
    if (mounted) {
      _initCurrentPosition(widget.audioPlayer);
    }
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              _togglePlayer();
            },
            child: Icon(
              _isPlaying ? Icons.stop : Icons.play_arrow,
              size: 33,
              color: colorGreenGradientEnd,
            ),
          ),
          horizontalSpacer(9),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _audioPosition.isNotEmpty ? _audioPosition : '',
                        style: Theme.of(context).textTheme.overline!.apply(color: colorDarkBlue),
                      ),
                      Row(
                        children: [
                          audioPosition > 1
                              ? InkWell(
                                  radius: paddingSmall,
                                  borderRadius: BorderRadius.circular(100),
                                  onTap: () {
                                    widget.audioPlayer.previous(keepLoopMode: false);
                                  },
                                  child: Icon(
                                    Icons.keyboard_arrow_left_rounded,
                                    size: iconSize,
                                  ))
                              : SizedBox.shrink(),
                          if (widget.playlist.length != 1)
                            Text(' $audioPosition/${widget.playlist.length} '),
                          audioPosition < widget.playlist.length
                              ? InkWell(
                                  radius: paddingSmall,
                                  borderRadius: BorderRadius.circular(100),
                                  onTap: () {
                                    widget.audioPlayer.next();
                                  },
                                  child: Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    size: iconSize,
                                  ))
                              : SizedBox.shrink(),
                          horizontalSpacer(spaceSmall),
                        ],
                      ),
                    ],
                  ),
                ),
                widget.audioPlayer.current.valueWrapper?.value != null
                    ? Container(
                        height: 21,
                        width: 150,
                        child: Slider(
                          value: widget.audioPlayer.currentPosition.valueWrapper!.value.inSeconds
                              .toDouble(),
                          onChanged: (value) {
                            setState(() {
                              widget.audioPlayer.seek(Duration(seconds: value.toInt()));
                            });
                          },
                          max: widget
                              .audioPlayer.current.valueWrapper!.value!.audio.duration.inSeconds
                              .toDouble(),
                          activeColor: colorGreenGradientEnd,
                        ),
                      )
                    : SizedBox.shrink()
              ],
            ),
          ),
        ]));
  }

  void _togglePlayer() async {
    var state = widget.audioPlayer.playerState.valueWrapper!.value;
    if (state == PlayerState.stop) {
      await widget.audioPlayer.play();
      if (!widget.audioPlayer.showNotification && Platform.isAndroid) {
        widget.audioPlayer.showNotification = true;
      }
    } else {
      await widget.audioPlayer.playOrPause();
    }
  }

  String _convertDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    var twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    var twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }

  void _initCurrentPosition(AssetsAudioPlayer audioPlayer) {
    audioPlayer.currentPosition.listen((event) {
      if (!mounted) return;
      setState(() {
        _currentPosition = event;
        _audioPosition =
            '${event != Duration() ? '${_convertDuration(audioPlayer.current.valueWrapper!.value!.audio.duration - _currentPosition)}' : ''}';
      });
    });

    audioPlayer.current.listen((event) {
      if (event == null) return;
      if ((event.index + 1) != audioPosition) {
        setState(() {
          audioPosition = event.index + 1;
        });
      }
    });

    audioPlayer.playerState.listen((event) {
      if (!mounted) return;
      switch (event) {
        case PlayerState.play:
          _isPlaying = true;
          break;
        case PlayerState.pause:
          _isPlaying = false;
          break;
        case PlayerState.stop:
          _isPlaying = false;
          if (Platform.isAndroid) widget.audioPlayer.showNotification = false;
          break;
        default:
          _isPlaying = false;
      }
      setState(() {});
    });
  }
}
