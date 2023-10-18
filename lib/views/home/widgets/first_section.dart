import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio1/constants/constants.dart';

import '../../../controller/resoponsvice_controller.dart';

class FirstSection extends ConsumerWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
      // print(ref.watch(deviceTypeProvider));
    return  Container(
          padding: EdgeInsets.symmetric(vertical: 120.h, ),
          width: 1.sw,
          
          // color: Colors.white,
          color: Colors.transparent,
          child: Container(
            
            margin: EdgeInsets.only(bottom: 16.h),
            // padding: EdgeInsets.symmetric(vertical: 80.h,horizontal: 20.w),
      
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
               textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'MOHSIN IRFAN\n',
                      style: TextStyle(
                        fontSize: 50.sp,
                        // color: Colors.black,
                        color: Colors.white,
                        
                        fontWeight: FontWeight.w600,
                        
                      ),
                      children: [
                        TextSpan(
                          text: 'Full Stack Software Developer.',
                          style: TextStyle(
                            fontSize: 50.sp,
                            // color: Colors.blue,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and\nI will give you a complete account of the system',
                  // style: TextStyle(color: Color(0xff818385)),
                    style: TextStyle(color: Colors.white),
                  // textAlign: MediaQuery.of(context).size.width >500 ? TextAlign.left :TextAlign.center,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        )
      ;
  }
}