import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio1/utils/heading_style.dart';

class AboutUsSecondSection extends StatelessWidget {




  List<String> skills =[
"•  Web development",
"•  Android developement",
"•  Desktop add development",
"•  Backend development"
  ];

  @override
  Widget build(BuildContext context) {
    return       Container(
      padding: EdgeInsets.symmetric(vertical: 50.h),
      width: 1.sw,
                   
      child: Column(
        children: [
                    Align(
                      alignment: MediaQuery.of(context).size.width >500 ?Alignment.centerLeft:Alignment.center,
                      child: Text('Who I am',
                          style: HeadingStyles.mainHeadingStyle
                                                    ),
                    ),
                    SizedBox(height: 10.h,),
  if(MediaQuery.of(context).size.width >500)
  _forWeb()
  else
  _forMobile()

        ],
      ),
    );
  }

_forWeb(){
  return   Container(
            // width: 0.8.sw,
            // height: 500,
            // width: 1.sw,
            // constraints: BoxConstraints(minWidth: 400.w,maxHeight: 500.h),
            child: Row(
      
              // spacing: 10.w,


              // direction: MediaQuery.of(context).size.width>400 ? Axis.horizontal:Axis.vertical,
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                        // width: 150.w,
                     color: Colors.white,
                               
                    //  alignment: Alignment.bottomCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                            
                      SizedBox(height: 10.h,),
                      Text('Hello I am Mohsin Irfan',
                      style: TextStyle(
                        fontSize: 18.sp,
                          
                        fontWeight: FontWeight.w300,
                      ),
                      ),
                          SizedBox(height: 10.h,),
                          // Text('I was born in pakistan in 1999.I\'m creative web and application developer, specializing in User Interface Design and full stack Development.',
                        
                        Text('I am a Software engineer experience in creating full stack application from stratch',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                            color: Color(0xff818385),
                          
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.1,
                            fontFamily: 'sans-serif',
                            
                          ),
                          
                          ),
                          maxLines: 3,
                          ),
                    ],
                  ),
                  ),
                ),
                                      Expanded(
                                        child: Container(
                                                    //  width: 100.w,           
                                             color: Colors.white,
                                             child: Column(
                                                         crossAxisAlignment: CrossAxisAlignment.start,
                                              children: List.generate(skills.length, (index)  {
                                                return   Container(
                                                  padding: EdgeInsets.all(10),
                                                  child: Text(skills[index],
                                                      style: GoogleFonts.lato(
                                                                  textStyle: TextStyle(
                                                                  color: Colors.black,
                                                
                                                                  fontSize: 16.sp,
                                                                  fontWeight: FontWeight.w400,
                                                                  letterSpacing: 0.1,
                                                                  fontFamily: 'sans-serif'
                                                                ),
                                                                )
                                                  ),);
                                              })
                                             ),
                                        ),
                                      )
              ],
            ));
}
  _forMobile(){
    return ListView(
              shrinkWrap: true,
              // spacing: 10.w,

              // alignment: WrapAlignment.start,
              // direction: MediaQuery.of(context).size.width>400 ? Axis.horizontal:Axis.vertical,
            
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                      // width: 150.w,
                   color: Colors.white,
                             
                  //  alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                          
                    SizedBox(height: 10.h,),
                    Text('I create premium designs and technology',
                    style: TextStyle(
                      fontSize: 18.sp,
                        
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                        SizedBox(height: 10.h,),
                        Text('I was born in Los Angeles in 1980.I\'m 23 years old creative web designer, specializing in User Interface Design and Development.Veritatis culpa sunt alias esse fuga accusamus nostrum, iusto neque.',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                          color: Color(0xff818385),
                        
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.1,
                          fontFamily: 'sans-serif',
                          
                        ),
                        
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        ),
                  ],
                ),
                ),
                                      Container(
                                                   width: 100.w,           
                                           color: Colors.white,
                                           child: Column(
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                            children: List.generate(5, (index)  {
                                              return   Container(
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.all(10),
                                                child: Text('- Web Developer',
                                                    style: GoogleFonts.lato(
                                                                textStyle: TextStyle(
                                                                color: Colors.black,
                                              
                                                                fontSize: 16.sp,
                                                                fontWeight: FontWeight.w400,
                                                                letterSpacing: 0.1,
                                                                fontFamily: 'sans-serif'
                                                              ),
                                                              
                                                              ),
                                                              textAlign: TextAlign.center,
                                                ),);
                                            })
                                           ),
                                      )
              ],
            );
  }
}