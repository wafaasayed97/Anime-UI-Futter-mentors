import 'package:anime_assignment2/core/widgets/plan_option.dart';
import 'package:anime_assignment2/features/upgrade_plan/widgets/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class UpgradePlanScreen extends StatefulWidget {
  const UpgradePlanScreen({super.key});

  @override
  State<UpgradePlanScreen> createState() => _UpgradePlanScreenState();
}

class _UpgradePlanScreenState extends State<UpgradePlanScreen> {
  int selectedPlan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackgroundWidget(),
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
                          debugPrint(
                            'Selected plan: ${selectedPlan == 0 ? 'Monthly' : 'Annually'}',
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF6366F1),
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
                    SizedBox(height: 20.h),
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
