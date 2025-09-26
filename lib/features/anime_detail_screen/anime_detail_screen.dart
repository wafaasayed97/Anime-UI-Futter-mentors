import 'package:anime_assignment2/core/widgets/genre_tag.dart';
import 'package:anime_assignment2/core/widgets/stat_item.dart';
import 'package:flutter/material.dart';

class AnimeDetailScreen extends StatelessWidget {
  const AnimeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0A0A),
      body: Stack(
        children: [
          // Background image
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple.withOpacity(0.8),
                  Colors.red.withOpacity(0.8),
                  Colors.orange.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                // Header
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios, color: Colors.white),
                      Icon(Icons.more_vert, color: Colors.white),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo/Badge
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'ARMED SAMY',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      // Title
                      Text(
                        'DEMON\nSLAYER',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),

                      SizedBox(height: 30),

                      // Genre tags
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GenreTag(text: 'Dark Fantasy'),
                          SizedBox(width: 10),
                          GenreTag(text: 'Action'),
                          SizedBox(width: 10),
                          GenreTag(text: 'Adventure'),
                        ],
                      ),

                      SizedBox(height: 20),

                      // Stats
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StatItem(icon: Icons.visibility, value: '3M views'),
                          SizedBox(width: 20),
                          StatItem(icon: Icons.favorite, value: '2K clip'),
                          SizedBox(width: 20),
                          StatItem(icon: Icons.star, value: '4 Seasons'),
                        ],
                      ),

                      SizedBox(height: 20),

                      // Description
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'A tale of courage, family and fierce battles.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                      ),

                      SizedBox(height: 40),

                      // Action buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.preview, color: Colors.white),
                            label: Text(
                              'Preview',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.white),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                            ),
                          ),

                          SizedBox(width: 20),

                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.play_arrow),
                            label: Text('Watch Now'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
