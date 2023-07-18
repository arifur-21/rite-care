

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RiteSolutionTextWidget extends StatelessWidget {
  const RiteSolutionTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.access_alarm_outlined),
              Text("Rite Solutions Limited 2023", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, ),)
            ],
          )
        ],
      ),
    );
  }
}
