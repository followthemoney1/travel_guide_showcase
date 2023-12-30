import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class EndlessProgress extends StatelessWidget {
  final String text;

  const EndlessProgress({Key? key, this.text = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        initialData: false,
        future: Future.delayed(Duration(milliseconds: 1000), () => true),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!=null) {
            return FlareActor(
              'assets/anim/M_Guides.flr',
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: 'loading',
            );
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
