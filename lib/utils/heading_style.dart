import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingStyles{


 static TextStyle mainHeadingStyle =  GoogleFonts.workSans(
              textStyle: TextStyle(
                  fontSize: 50.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                      fontFamily: 'sans-serif',
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                ),
                
             );
}