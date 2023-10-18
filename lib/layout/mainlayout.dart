// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {

  final Widget? webWidget;
   final Widget? tabWidget;
    final Widget? mobileWidget;
      final Widget? defaultWidget;
  const MainLayout({
    Key? key,
     this.webWidget,
    this.tabWidget,
    this.mobileWidget,
    this.defaultWidget
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth > 950){
          
          return  webWidget!;
        }
           else if(constraints.maxWidth > 500){
                      return tabWidget!;
           }
              // else  if(constraints.maxWidth < 500){
              //             return  mobileWidget!;
              // }
              
              else{
                        
                                       return  defaultWidget!;
              }

      },),
    );
  }
}