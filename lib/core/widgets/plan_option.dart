import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanOption extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final bool isSelected;

  const PlanOption({
    super.key,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: isSelected ? Colors.deepPurple.shade900 : Colors.white,
        borderRadius: BorderRadius.circular(25.r),
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
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          Radio(
            value: isSelected,
            groupValue: true,
            onChanged: (value) {},
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
