

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio1/constants/constants.dart';

import 'package:portfolio1/views/portfolio/port_folio_widget.dart';
import 'package:portfolio1/widgets/drawer_widget.dart';
import 'package:portfolio1/widgets/header.dart';

import 'package:portfolio1/widgets/footer.dart';

import '../../layout/mainlayout.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});


  @override
  Widget build(BuildContext context) {


      return  MainLayout(
      webWidget: PortFolioWebScren(),
      tabWidget: PortFolioTabScren(),
      mobileWidget:  PortFolioMobileScren(),
      defaultWidget:  PortFolioMobileScren(),
    );

  }
}



class PortFolioWebScren extends StatelessWidget {
  
  const PortFolioWebScren({super.key});

  @override
  Widget build(BuildContext context) {
    final padding =          AppConstants.webbasePadding;
    return Container(
      // color: Colors.white,
      color:Color(0xffEEEEEE),
      child: SingleChildScrollView(
        child: Column(children: [
                Padding(
                  padding: padding,
                  child: HeaderSection(btnTextColor: Colors.blue,)),

                  Padding(
                      padding: padding,
                    child: PortFolioWidget(),
                  ),
 
         Footer(),
        ]),
      ),
    );
  }
}





class PortFolioTabScren extends StatelessWidget {
  
  const PortFolioTabScren({super.key});

  @override
  Widget build(BuildContext context) {
    final padding =          AppConstants.tabbasePadding;
    return Container(
      width: 1.sw,
      color:Color(0xffEEEEEE),
      child: SingleChildScrollView(
        child: Column(children: [
                Padding(
                  padding: padding,
                  child: HeaderSection(btnFontSize: 9.sp,btnTextColor: Colors.blue,)),

                  Padding(
                      padding: padding,
                    child: PortFolioWidget(),
                  ),
 
         Footer(),
        ]),
      ),
    );
  }
}


class PortFolioMobileScren extends StatelessWidget {
  
  const PortFolioMobileScren({super.key});

  @override
  Widget build(BuildContext context) {
    final padding =          AppConstants.mobilebasePadding;
    return Scaffold(
      appBar: AppBar(),
      drawer: const DrawerWidget(),
      body: Container(
      color:Color(0xffEEEEEE),
      child: SingleChildScrollView(
        child: Column(children: [
                // Padding(
                //   padding: padding,
                //   child: HeaderSection()),

                  Padding(
                      padding: padding,
                    child: PortFolioWidget(),
                  ),
 
         Footer(),
        ]),
      ),
    ),
    );
  }
}