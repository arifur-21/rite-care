
import 'package:flutter/cupertino.dart';

class ProfileImageContainerWidget extends StatelessWidget {

  final String imageUrl;

  ProfileImageContainerWidget({ required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                   imageUrl
                  ))
            // color: Colors.orange[100],
          ),
        ),
      ],
    );
  }
}
