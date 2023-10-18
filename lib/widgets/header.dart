import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class HeaderSection extends StatelessWidget {
  final btnFontSize;
  final Color? btnTextColor;
  const HeaderSection({super.key, this.btnFontSize, this.btnTextColor});

  @override
  Widget build(BuildContext context) {
    return   Container(
          // color: Colors.white,
          color: Colors.transparent,
          // height: 67.1.h,
          // alignment: MediaQuery.of(context).size.width <900 ? Alignment.center :Alignment.center,
          // padding: EdgeInsets.all(20.sp),
          child: Row(
            // mainAxisAlignment:MediaQuery.of(context).size.width <900 ? MainAxisAlignment.center :MainAxisAlignment.spaceBetween,
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               SizedBox(
                height: 100.h,
                width: 100.w,
                // child: FittedBox(child: Image.asset('./assets/images/logo/logo.png',fit: BoxFit.cover,filterQuality: FilterQuality.high,),),
              
              child: FittedBox(child: Icon(Icons.agriculture_sharp,color: Colors.white,size: 70.sp,)),
                ),
              Expanded(
                child: Row(
                  children: [
                    HeaderTextButton(
                      text:'HOME' ,
                      textFont: btnFontSize,
                            btnTextColor: btnTextColor,
                      onpress: (){
                      
                            context.go('/');
                    },),
                            HeaderTextButton(
                      text:'ABOUT' ,
                      textFont: btnFontSize,
                      btnTextColor: btnTextColor,
                      onpress: (){
                      
                          context.go('/about');
                    },),
                                     HeaderTextButton(
                      text:'Portfolio' ,
                      textFont: btnFontSize,
                            btnTextColor: btnTextColor,
                      onpress: (){
                      
                     context.go('/portfolio');
                    },),
                                             HeaderTextButton(
                      text:'Contact' ,
                      textFont: btnFontSize,
                            btnTextColor: btnTextColor,
                      onpress: (){
                      
                     context.go('/contact');
                    },),
            
                 
                  ],
                ),
              ),
            ],
          ),
        );
  }
}

class HeaderTextButton extends StatelessWidget {
  final VoidCallback? onpress;
  final String? text;
  final double? textFont;

  final Color? btnTextColor;
   HeaderTextButton({super.key, this.onpress, this.text, this.textFont, this.btnTextColor});

  @override
  Widget build(BuildContext context) {
    return  Padding(
     padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 5.w),
      child: TextButton(
    onPressed: onpress,
    child: Text(text!.toUpperCase(),
       style: GoogleFonts.abrilFatface(
                              textStyle: TextStyle(
                                color: btnTextColor ?? Colors.white,
                                fontSize:textFont ?? 17.sp,fontFamily: 'sans-serif'),
    ),)
      ),
    );
  }
}