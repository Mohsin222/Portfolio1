import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio1/views/about_us/about_us.dart';

import 'package:portfolio1/views/home/mainScreen.dart';

import 'constants/routes.dart';

void main() {
 runApp(ProviderScope( child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
            designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      
      builder: (context,child){
      return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
            routerConfig: Routers.router,
      // home:const AboutUsScreen(),
    );
    });
  }
}

