import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio1/constants/constants.dart';
import 'package:portfolio1/views/about_us/widgets/abut_second_sec.dart';
import 'package:portfolio1/views/about_us/widgets/skill_section.dart';
import 'package:portfolio1/widgets/footer.dart';

import '../../widgets/header.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth > 950){
          return WebScren();
        }
           else if(constraints.maxWidth > 500){
                      return TabScren();
           }
              // else  if(constraints.maxWidth > 400){
              //             return MobileScren();
              // }
              else{
                          // return  Container(child:const Text('small mobile'));
                              return MobileScren();
              }

      },),
    );
  }
}


class WebScren extends StatelessWidget {
  
  const WebScren({super.key});

  @override
  Widget build(BuildContext context) {
    final padding =          AppConstants.webbasePadding;
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
                Padding(
                  padding: padding,
                  child: HeaderSection(btnTextColor: Colors.black,)),

                  Padding(
                          padding: padding,
                    child: Container(
                      width: 1.sw,
                      height: 0.5.sh,
                      decoration: const BoxDecoration(image:DecorationImage(image: AssetImage('./assets/images/banner.png'),fit: BoxFit.fill)),
                    ),
                  ),

                  //seecond
Padding(padding: padding,
child: AboutUsSecondSection(),
),
  Divider( color: Colors.black,),
Padding(padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 80.h),
child: SkillsSection(),
),

            
   
     
         Footer(),
        ]),
      ),
    );
  }
}


class TabScren extends StatelessWidget {
  
  const TabScren({super.key});

  @override
  Widget build(BuildContext context) {
    final padding =          AppConstants.tabbasePadding;
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
                Padding(
                  padding: padding,
                  child: HeaderSection()),

                  Padding(
                          padding: padding,
                    child: Container(
                      width: 1.sw,
                      height: 0.8.sh,
                      decoration: const BoxDecoration(image:DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1609984263061-ee5c76c32e70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'),fit: BoxFit.cover)),
                    ),
                  ),

                  //seecond
Padding(padding: padding,
child:  AboutUsSecondSection(),
),
     const       Divider( color: Colors.black,),
    Padding(
    padding: padding,
       child: SkillsSection(),
     ),
         Footer(),
        ]),
      ),
    );
  }
}


class MobileScren extends StatelessWidget {
  
  const MobileScren({super.key});

  @override
  Widget build(BuildContext context) {
 final padding =        
AppConstants.mobilebasePadding;
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
                Padding(
                  padding: padding,
                  child: HeaderSection()),

                  Padding(
                          padding: padding,
                    child: Container(
                      width: 1.sw,
                      height: 0.8.sh,
                      decoration: const BoxDecoration(image:DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1609984263061-ee5c76c32e70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'),fit: BoxFit.cover)),
                    ),
                  ),

                  //seecond
Padding(padding: padding,
child: AboutUsSecondSection(),
),
    Divider(
      color: Colors.black,
    ),
     Padding(
    padding: padding,
       child: SkillsSection(),
     ),
            
 
         Footer(),
        ]),
      ),
    );
  }
}