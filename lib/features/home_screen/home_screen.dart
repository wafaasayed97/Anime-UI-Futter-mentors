import 'package:anime_assignment2/core/widgets/anime_card.dart';
import 'package:anime_assignment2/core/widgets/character_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 500.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFD3D6FF), Colors.white],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 450.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/star_1.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Where Anime Comes Alive',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),

                    TabBar(
                      controller: _tabController,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        color: Colors.deepPurpleAccent,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      indicatorPadding: EdgeInsets.symmetric(
                        vertical: 5.w,
                        horizontal: 12.w,
                      ),
                      labelColor: Colors.white,
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                      unselectedLabelColor: Colors.deepPurpleAccent,
                      labelStyle: TextStyle(fontWeight: FontWeight.w600),
                      tabs: [
                        Tab(text: 'All'),
                        Tab(text: 'Popular'),
                        Tab(text: 'Trending'),
                        Tab(text: 'New Releases'),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 350.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          final animeData = [
                            {
                              'title': 'Detective Conan',
                              'subtitle': 'mystery',
                              'rating': 4.8,
                              'assetName': 'assets/images/dragon_ball.jpg',
                            },
                            {
                              'title': 'Hunter x Hunter',
                              'subtitle': 'mystery',
                              'rating': 4.9,
                              'assetName': 'assets/images/hunter.png',
                            },

                            {
                              'title': 'Demon Slayer',
                              'subtitle': 'mystery',
                              'rating': 4.6,
                              'assetName': 'assets/images/conan.png',
                            },
                          ];

                          final anime = animeData[index];
                          return Container(
                            width: 200.w,
                            margin: EdgeInsets.only(right: 16),
                            child: AnimeCard(
                              title: anime['title'] as String,
                              type: anime['subtitle'] as String,
                              rating: anime['rating'] as double,
                              assetName: anime['assetName'] as String,
                            ),
                          );
                        },
                      ),
                    ),
                    Text(
                      'Top Characters',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          final characterData = [
                            {
                              'name': 'Gon Freecss',
                              'anime': 'Hunter x Hunter',
                              'color': Colors.green,
                              'image': 'assets/images/gon.png',
                            },
                            {
                              'name': 'Naruto Uzumaki',
                              'anime': 'Naruto',
                              'color': Colors.orange,
                              'image': 'assets/images/naruto.png',
                            },
                            {
                              'name': 'Luffy',
                              'anime': 'One Piece',
                              'color': Colors.red,
                              'image': 'assets/images/luufy.jpg',
                            },
                            {
                              'name': ' Goku',
                              'anime': 'dragon ball',
                              'color': Colors.brown,
                              'image': 'assets/images/gogo_dragon.png',
                            },
                          ];

                          final character = characterData[index];
                          return Container(
                            margin: EdgeInsets.only(right: 16),
                            child: CharacterCard(
                              name: character['name'] as String,
                              anime: character['anime'] as String,
                              color: character['color'] as Color,
                              image: character['image'] as String,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
