import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  MediaQuery.of(context).size.width >500 ? _forWeb():_forMobile();
  }

  _forWeb(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                  flex: 2,
              child: Text('My skills.',
                style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                      fontSize: 35.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                          fontFamily: 'sans-serif'
                                    )
                                 ),
              )),
         
            Expanded(
              flex: 2,
              child: Column(
          children: [
                    SizedBox(height: 20.h,),
          const      ProgressBarWidget(title: "Dart",percent: 80),
                     SizedBox(height: 10.h,),
           const     ProgressBarWidget(title: 'Flutter',percent: 90),
                     SizedBox(height: 10.h,),
           const     ProgressBarWidget(title: 'Node js',percent: 80),
                     SizedBox(height: 10.h,),
          const            ProgressBarWidget(title: 'Mongo Db',percent: 75),
                     SizedBox(height: 10.h,),
         const             ProgressBarWidget(title: 'MySql',percent: 60),
                     SizedBox(height: 10.h,),
          ],
        ),)
          ],
        ),
    );
  }

  _forMobile(){
    return Container(
          padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('My skills.',
              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                    fontSize: 35.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                        fontFamily: 'sans-serif'
                                  )
                               ),
                               textAlign: TextAlign.center,
            ),
         
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
              SizedBox(height: 20.h,),
                const ProgressBarWidget(title: "Dart",percent: 80),
                     SizedBox(height: 10.h,),
             const   ProgressBarWidget(title: 'Flutter',percent: 90),
                     SizedBox(height: 10.h,),
           const     ProgressBarWidget(title: 'Node js',percent: 80),
                     SizedBox(height: 10.h,),
            const          ProgressBarWidget(title: 'Mongo Db',percent: 75),
                     SizedBox(height: 10.h,),
             const         ProgressBarWidget(title: 'MySql',percent: 60),
                     SizedBox(height: 10.h,),
          ],
        )
          ],
        ),
    );
  }
}




class ProgressBarWidget extends StatelessWidget {
final String title;
final double percent;

  const ProgressBarWidget({super.key, required this.title, required this.percent});

  @override
  Widget build(BuildContext context) {
    return  Container(
   
      child: Column(
        children: [
    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14.sp.sp),),
                      // SizedBox(width: 20.w,),
                      const Spacer(),
                      Text('$percent %',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14.sp.sp),),
                      SizedBox(width: 20.w,),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                   FittedBox(
                    fit: BoxFit.fill,
                     child: LinearPercentIndicator(
                                   width: 1.sw,
                                   lineHeight: 20.0,
                                   barRadius: Radius.circular(10.r),
                                   percent: percent/100,
                                   backgroundColor: Colors.grey,
                                   progressColor: Colors.black,
                                 ),
                   ),
        ],
      ),
    );
  }
}