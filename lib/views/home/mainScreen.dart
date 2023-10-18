

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio1/constants/constants.dart';
import 'package:portfolio1/controller/resoponsvice_controller.dart';
import 'package:portfolio1/layout/mainlayout.dart';
import 'package:portfolio1/widgets/custom_drop_down_btn.dart';
import 'package:portfolio1/widgets/drawer_widget.dart';
import 'package:portfolio1/widgets/header.dart';
import 'package:portfolio1/views/home/widgets/service_section.dart';
import 'package:portfolio1/widgets/footer.dart';

import 'widgets/first_section.dart';
import 'widgets/portfolio_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  MainLayout(
      webWidget: HomeWebScreen(),
      tabWidget: HomeTabScreen(),
      mobileWidget:  HomeMobScreen(),
      defaultWidget:  HomeMobScreen(),
    );
    
    
    
    Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth > 950){
          return const HomeWebScreen();
        }
           else if(constraints.maxWidth > 500){
                      return const HomeTabScreen();
           }
              else  if(constraints.maxWidth < 500){
                          return  HomeMobScreen();
              }else{
                          // return  Container(child:const Text('small mobile'));
                                       return  HomeMobScreen();
              }

      },),
    );
  }
}


class HomeWebScreen extends ConsumerWidget {
  
  const HomeWebScreen({super.key});
update(WidgetRef ref ){
Future.delayed(Duration(seconds: 1),(){
       ref.watch(deviceTypeProvider.notifier).state =DeviceSizeType.WEB;
         print( ref.read(deviceTypeProvider));
});
}
  @override
  Widget build(BuildContext context,WidgetRef ref) {
  //  update(ref);
    final padding =          AppConstants.webbasePadding;
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
                      Container(
                  width: 1.sw,
                  height: 1.sh,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1605379399642-870262d3d051?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=1506'),fit: BoxFit.cover,opacity: 0.9)),
                  child: Column(
                    children: [
                      Padding(
                        padding: padding,
                        child: HeaderSection()),
                        // First section
         Padding(
            padding: padding,
          child: FirstSection()),
                    ],
                  ),
                ),
          
          //portfolio section
        
         Padding(
            padding: padding,
          child: PortfolioSection()),

               Padding(
            padding: padding,
          child: ServiceSection()),
         Footer(),
        ]),
      ),
    );
  }
}

class HomeTabScreen extends ConsumerWidget {
  const HomeTabScreen({super.key});



update(WidgetRef ref){
Future.delayed(Duration(seconds: 1),(){
       ref.watch(deviceTypeProvider.notifier).state =DeviceSizeType.TAB;



       print( ref.read(deviceTypeProvider));
});
}
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // update(ref);
          // ref.watch(responsiveClassNotifierController.notifier).setDeviceType(DeviceSizeType.TAB);
        final padding =          AppConstants.tabbasePadding;
      return Scaffold(
       
        // appBar: AppBar(),
        body: Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
        //         Padding(
        //           padding: padding,
        //           child: HeaderSection(btnFontSize: 9.sp,)),
        //   // First section
        //  Padding(
        //     padding: padding,
        //   child: FirstSection()),

              Container(
                  width: 1.sw,
                  height: 1.sh,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1605379399642-870262d3d051?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=1506'),fit: BoxFit.cover,opacity: 0.9)),
                  child: Column(
                    children: [
                      Padding(
                        padding: padding,
                        child: HeaderSection(btnFontSize: 9.sp,)),
                        // First section
         Padding(
            padding: padding,
          child: FirstSection()),
                    ],
                  ),
                ),
          //portfolio section
        
         Padding(
            padding: padding,
          child: PortfolioSection()),
                   Padding(
            padding: padding,
          child: ServiceSection()),
         Footer(),
        ]))),
      );
  }
}


class HomeMobScreen extends ConsumerWidget {

 String dropdownvalue = 'ABOUT US ';  
 
update(WidgetRef ref){
Future.delayed(Duration(seconds: 1),(){
       ref.watch(deviceTypeProvider.notifier).state =DeviceSizeType.MOBILE;
         print( ref.read(deviceTypeProvider));
});
}
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // update(ref);
          // ref.watch(responsiveClassNotifierController.notifier).setDeviceType(DeviceSizeType.MOBILE);
            final padding =          AppConstants.mobilebasePadding;
    return Scaffold(
      
      appBar: AppBar(

      ),
      drawer:const DrawerWidget(),
      body: Container(
        
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
        //  Padding(
        //           padding: padding,
        //           child:const HeaderSection()),
          // First section
         Container(
             decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1605379399642-870262d3d051?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=1506'),fit: BoxFit.cover,opacity: 0.9)),
           child: Padding(
              padding: padding,
            child: FirstSection()),
         ),
          // portfolio section
        
         Padding(
            padding: padding,
          child: PortfolioSection()),
               Padding(
            padding: padding,
          child: ServiceSection()),
           Footer(),
        ]),
      ),
    ),
    );
  }
}

