import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/theme.dart';
import 'package:mapo_travel_guide/util/dismiss_player_event.dart';
import 'package:mapo_travel_guide/util/images.dart';
import 'package:mapo_travel_guide/util/ui_util.dart';

class PlayTextRow extends StatefulWidget {
  final String text;
  final String songUrl;

  const PlayTextRow({
    Key? key,
    required this.text,
    required this.songUrl,
  }) : super(key: key);

  @override
  _PlayTextRowState createState() => _PlayTextRowState();
}

class _PlayTextRowState extends State<PlayTextRow> {
  AssetsAudioPlayer? assetsAudioPlayer;
  bool isPlaying = false;
  bool showStop = false;
  bool progress = false;
  var eventBus = locator<EventBus>();
  StreamSubscription? dismissPlayerSubscription;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      initPlayer();
    }
    dismissPlayerSubscription = eventBus.on<DismissPlayerEvent>().listen((event) {
      assetsAudioPlayer?.showNotification = false;
      assetsAudioPlayer?.dispose();
      assetsAudioPlayer = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: Ink(
        child: InkWell(
          onTap: () => togglePlayer(),
          borderRadius: BorderRadius.circular(30),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: paddingSmall, vertical: paddingSuperPuperSmall),
            child: Container(
              height: buttonHeight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  progress
                      ? SizedBox(
                          width: iconSize,
                          height: iconSize,
                          child: CircularProgressIndicator(strokeWidth: 3),
                        )
                      : Image.asset(
                          isPlaying ? Images.pauseBtn : Images.smallPlayButton,
                          width: iconSize,
                        ),
                  horizontalSpacer(spaceSuperSmall),
                  Expanded(
                    child: AutoSizeText(
                      widget.text,
                      minFontSize: minFontSize,
                      maxFontSize: maxFontSize,
                      style: theme.textTheme.subtitle2!.apply(color: colorBlack),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void togglePlayer() async {
    if (assetsAudioPlayer == null) {
      await initPlayer();
    }

    var state = assetsAudioPlayer?.playerState.valueWrapper?.value;
    if (state == null || state == PlayerState.stop) {
      if (Platform.isAndroid) {
        setState(() {
          progress = true;
        });
        await assetsAudioPlayer!.play().then((value) {
          setState(() {
            progress = false;
          });
        });
        if (!assetsAudioPlayer!.showNotification) {
          assetsAudioPlayer!.showNotification = true;
        }
      } else {
        await initPlayer();
      }
    } else {
      await assetsAudioPlayer!.playOrPause();
    }
  }

  @override
  void dispose() {
    assetsAudioPlayer?.showNotification = false;
    assetsAudioPlayer?.dispose();
    super.dispose();
  }

  NotificationSettings initNotificationSettings() {
    return NotificationSettings(
      nextEnabled: false,
      prevEnabled: false,
    );
  }

  Future<void> initPlayer() async {
    try {
      assetsAudioPlayer = AssetsAudioPlayer();
      await assetsAudioPlayer!.open(
        Audio.network(widget.songUrl),
        autoStart: !Platform.isAndroid,
        showNotification: !Platform.isAndroid,
        notificationSettings: initNotificationSettings(),
        headPhoneStrategy: HeadPhoneStrategy.pauseOnUnplugPlayOnPlug,
        audioFocusStrategy: AudioFocusStrategy.request(
          resumeAfterInterruption: true,
          resumeOthersPlayersAfterDone: false,
        ),
        playInBackground: PlayInBackground.enabled,
      );
    } catch (t) {
      log('mp3 unreachable $t');
    }
    assetsAudioPlayer!.currentPosition.listen((event) {
      if (event.inMilliseconds > 0) {
        setState(() {
          showStop = true;
        });
      }
    });

    assetsAudioPlayer!.playerState.listen((event) {
      if (!mounted) return;
      switch (event) {
        case PlayerState.play:
          isPlaying = true;
          break;
        case PlayerState.pause:
          isPlaying = false;
          break;
        case PlayerState.stop:
          isPlaying = false;
          showStop = false;
          if (!Platform.isAndroid) {
            assetsAudioPlayer!.dispose();
          }
          break;
        default:
          isPlaying = false;
      }
      setState(() {});
    });
  }
}
