import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio1/constants/constants.dart';
import 'package:portfolio1/utils/heading_style.dart';
import 'package:portfolio1/widgets/footer.dart';
import 'package:portfolio1/widgets/header.dart';

import '../../layout/mainlayout.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return  const MainLayout(
      webWidget: ContactUsWebScreen(),
      tabWidget: ContactUsWebScreen(),
      mobileWidget: ContactUsWebScreen(),
      defaultWidget: ContactUsWebScreen(),

    );
    
    
  }
 
}


class ContactUsWebScreen extends StatelessWidget {
  
  const ContactUsWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final padding =          AppConstants.webbasePadding;
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Container(
                  height: 1.sh,
                  width: 1.sw,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1587560699334-bea93391dcef?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=1470'),fit: BoxFit.cover)),
                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          Padding(
                  padding: padding,
                  child: HeaderSection()),
      
                       Align(
        alignment: MediaQuery.of(context).size.width <400 ? Alignment.center :Alignment.center ,
        child: Text('Contact Us'.toUpperCase(),
             style: HeadingStyles.mainHeadingStyle.copyWith(color: Colors.white),
                textAlign: MediaQuery.of(context).size.width <400 ? TextAlign.center :TextAlign.left,
        ),
        ),
        
                SizedBox(height: 60.h,),
        Wrap(
          children: [
            ContactCardWidget(title: 'Contact No',bodyString: '03156646879',),
          ContactCardWidget(title: 'Email',bodyString: 'mohsinirfan222@gmail.com',),
            //  ContactCardWidget(title: 'EMail',bodyString: 'mohsinirfan222@gmail.com',),
          ],
        ),
                SizedBox(height: 60.h,),
                    ],
                  ),
                ),
      
      
            
      
      // SizedBox(height: 100.h,),

         Footer(),
        ]),
      ),
    );
  }
}


class ContactCardWidget extends StatefulWidget {
  final String title;
  final String bodyString;
  const ContactCardWidget({super.key, required this.title, required this.bodyString});

  @override
  State<ContactCardWidget> createState() => _ContactCardWidgetState();
}


class _ContactCardWidgetState extends State<ContactCardWidget> {

  bool isHover=false;
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){},
      onHover: (bool){
      setState(() {
        print(bool);
          isHover =bool;
      });


      },
      child: Card(color: isHover ==true ? Colors.blue:Colors.black,
      
        child: Padding(
      
          padding: const EdgeInsets.all(20.0),
      
          child: Column(
      
            children: [
      
              Text(widget.title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.sp,color: Colors.white),),
      
              SizedBox(height: 10.h,),
      
              Text(widget.bodyString,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15.sp,color: Colors.white),)
      
            ],
      
          ),
      
        ),
      
      ),
    );
  }
}