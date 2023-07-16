
import 'package:flutter/cupertino.dart';

import '../utils/color_styles.dart';

class CircularProfileImageWidget extends StatelessWidget {
  const CircularProfileImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Styles.primaryColor),

      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'assets/images/profile.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
