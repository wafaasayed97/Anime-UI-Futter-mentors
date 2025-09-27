import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarWidget extends StatefulWidget {
  final TabController tabController;

  const TabBarWidget({super.key, required this.tabController});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabs = ['All', 'Popular', 'Trending', 'New Releases'];

    return Column(
      children: [
        SizedBox(
          height: 40.h,
          child: Row(
            children: tabs.asMap().entries.map((entry) {
              final index = entry.key;
              final title = entry.value;
              final isSelected = widget.tabController.index == index;

              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    widget.tabController.animateTo(index);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: isSelected ? Colors.deepPurple : Colors.grey[200],
                    ),
                    child: Center(
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.deepPurple,
                          fontWeight: isSelected
                              ? FontWeight.w600
                              : FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
