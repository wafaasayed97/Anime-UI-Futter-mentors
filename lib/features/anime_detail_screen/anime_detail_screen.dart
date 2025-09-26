import 'package:anime_assignment2/core/widgets/genre_tag.dart';
import 'package:anime_assignment2/core/widgets/stat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimeDetailScreen extends StatelessWidget {
  final String image;
  final String title;
  final String type;
  final double rating;

  const AnimeDetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.type,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(44, 30, 81, 0.75),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 600.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Positioned(
                      top: 30,
                      left: 20,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),

                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      left: 0,
                      right: 0,
                      child: Text(
                        title.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    SizedBox(height: 20.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GenreTag(text: type.isNotEmpty ? type : 'Action'),
                        SizedBox(width: 10),
                        GenreTag(text: 'Adventure'),
                        SizedBox(width: 10),
                        GenreTag(text: 'Fantasy'),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60.w),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.4.w,
                        height: 0.5.h,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StatItem(icon: Icons.visibility, value: '3M views'),
                        SizedBox(width: 20),
                        StatItem(icon: Icons.favorite, value: '2K likes'),
                        SizedBox(width: 20),
                        StatItem(
                          icon: Icons.star,
                          value: '${rating.toString()}★',
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60.w),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.4.w,
                        height: 0.5.h,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Description
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'An incredible journey filled with adventure, friendship, and unforgettable moments.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    ),

                    SizedBox(height: 40),

                    // Action buttons
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        height: 80,
        color: Color.fromRGBO(44, 30, 81, 0.45),

        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.timer, color: Colors.white),
                label: Text('Preview', style: TextStyle(color: Colors.white)),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey.shade700,

                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                    vertical: 12.h,
                  ),
                ),
              ),

              SizedBox(width: 20.w),

              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.play_arrow, color: Colors.white),
                label: Text('Watch Now', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple.shade400,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                    vertical: 12.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
