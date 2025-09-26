import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterCard extends StatelessWidget {
  final String name;
  final String anime;
  final Color color;
  final String image;

  const CharacterCard({
    super.key,
    required this.name,
    required this.anime,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 45.r,
          backgroundColor: color,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(height: 8),
        Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
        Text(anime, style: TextStyle(color: Colors.grey, fontSize: 10)),
      ],
    );
  }
}
