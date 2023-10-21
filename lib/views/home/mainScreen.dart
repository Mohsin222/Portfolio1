

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
      webWidget: const HomeWebScreen(),
      tabWidget: const HomeTabScreen(),
      mobileWidget:  HomeMobScreen(),
      defaultWidget:  HomeMobScreen(),
    );
    
    

  }
}


class HomeWebScreen extends ConsumerStatefulWidget {
  
  const HomeWebScreen({super.key});

  @override
  ConsumerState<HomeWebScreen> createState() => _HomeWebScreenState();
}

class _HomeWebScreenState extends ConsumerState<HomeWebScreen> {
update(WidgetRef ref ){
Future.delayed(Duration(seconds: 1),(){
       ref.watch(deviceTypeProvider.notifier).state =DeviceSizeType.WEB;
         print( ref.read(deviceTypeProvider));
});
}


@override
  void initState() {
    // TODO: implement initState
    super.initState();
     update(ref);
  }
  @override
  Widget build(BuildContext context) {
  // 
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

class HomeTabScreen extends ConsumerStatefulWidget {
  const HomeTabScreen({super.key});

  @override
  ConsumerState<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends ConsumerState<HomeTabScreen> {
update(WidgetRef ref){
Future.delayed(const Duration(seconds: 1),(){
       ref.watch(deviceTypeProvider.notifier).state =DeviceSizeType.TAB;



       print( ref.read(deviceTypeProvider));
});
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
     update(ref);
  }
  @override
  Widget build(BuildContext context) {
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


class HomeMobScreen extends ConsumerStatefulWidget {

  @override
  ConsumerState<HomeMobScreen> createState() => _HomeMobScreenState();
}

class _HomeMobScreenState extends ConsumerState<HomeMobScreen> {
 String dropdownvalue = 'ABOUT US ';  

update(WidgetRef ref){
Future.delayed(const Duration(seconds: 1),(){
       ref.watch(deviceTypeProvider.notifier).state =DeviceSizeType.MOBILE;
         print( ref.read(deviceTypeProvider));
});
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
     update(ref);
  }
  @override
  Widget build(BuildContext context) {
 
            final padding =          AppConstants.mobilebasePadding;
    return Scaffold(
      key: drawerGlobalKey,
      // appBar: AppBar(

      // ),
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
          height: 1.sh,
          width: 1.sw,
             decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1605379399642-870262d3d051?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=1506'),fit: BoxFit.cover,opacity: 0.9)),
           child: Column(
             children: [
                 Container(
              padding: EdgeInsets.all(20),
                  alignment: Alignment.centerLeft,
                  child: IconButton(onPressed: (){
                    drawerGlobalKey.currentState!.openDrawer();
                  }, icon: Icon(Icons.menu,color: Colors.white,),)),
               Padding(
                  padding: padding,
                child:const FirstSection()),
             ],
           ),
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

