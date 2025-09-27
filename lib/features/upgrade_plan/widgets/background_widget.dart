import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.h,
      child: Stack(
        children: [
          Container(
            height: 700.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFD3D6FF), Colors.white],
              ),
            ),
          ),
          Container(
            height: 450.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/star_1.png'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Header
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Upgrade Plan',
                      style: TextStyle(
                        color: Colors.deepPurple.shade900,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 70.w),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 30.w,
                        height: 30.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.deepPurple.shade900,
                        ),
                      ),
                    ),
                  ],
                ),

                Center(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      'assets/images/rocket_boy.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Seamless Anime\nExperience, Ad-Free',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.deepPurple.shade900,
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Enjoy unlimited anime streaming without\ninterruption',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey, fontSize: 14.sp),
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
