import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Fixed PlanOption widget
class PlanOption extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final bool isSelected;
  final VoidCallback? onTap;

  const PlanOption({
    super.key,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          color: isSelected ? Colors.deepPurple.shade900 : Colors.white,
          borderRadius: BorderRadius.circular(25.r),
          border: Border.all(
            color: isSelected
                ? Colors.deepPurple.shade900
                : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 75.w,
              height: 75.h,
              child: Image.asset('assets/images/files&folder.png'),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: isSelected ? Colors.white70 : Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Colors.white : Colors.grey,
                  width: 2,
                ),
                color: isSelected ? Colors.white : Colors.transparent,
              ),
              child: isSelected
                  ? Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.deepPurple.shade900,
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

// Fixed UpgradePlanScreen - now StatefulWidget
class UpgradePlanScreen extends StatefulWidget {
  const UpgradePlanScreen({super.key});

  @override
  State<UpgradePlanScreen> createState() => _UpgradePlanScreenState();
}

class _UpgradePlanScreenState extends State<UpgradePlanScreen> {
  int selectedPlan = 0; // 0 = Monthly, 1 = Annually

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
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
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    PlanOption(
                      title: 'Monthly',
                      price: '\$5 USD /Month',
                      subtitle: 'Secure family sharing',
                      isSelected: selectedPlan == 0,
                      onTap: () {
                        setState(() {
                          selectedPlan = 0;
                        });
                      },
                    ),

                    SizedBox(height: 16.h),

                    PlanOption(
                      title: 'Annually',
                      price: '\$60 USD /Year',
                      subtitle: 'Include Family Sharing',
                      isSelected: selectedPlan == 1,
                      onTap: () {
                        setState(() {
                          selectedPlan = 1;
                        });
                      },
                    ),

                    SizedBox(height: 40.h),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle continue button press
                          print(
                            'Selected plan: ${selectedPlan == 0 ? 'Monthly' : 'Annually'}',
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.r),
                          ),
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
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
