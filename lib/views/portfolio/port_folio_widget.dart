import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio1/controller/portfolio_controller.dart';
import 'package:portfolio1/json/portfolio.dart';
import 'package:portfolio1/models/new_mdl.dart';
import 'package:portfolio1/models/portfolio_model.dart';
import 'package:portfolio1/views/portfolio/widgets/portfolio_card.dart';

import '../../utils/portfolio_filter.dart';

class PortFolioWidget extends ConsumerWidget {
  const PortFolioWidget({super.key});

@override
Widget build(BuildContext context , WidgetRef ref) {
        final prov = ref.watch(portFolioListModel);


    final filterList = ref.watch(filterPortFolioListModel);


print(filterList!.data!.length);
    return  Container(
          // color: Colors.white,
                color:Color(0xffEEEEEE),
          padding: EdgeInsets.only(bottom: 50.h),
          child: Column(
            children: [
        Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 5.w),
                      child:
                          TextButton(onPressed: () {
                    ref.watch(portCategoryValueForHomeScreen.notifier).state ='All';
                          }, child:const Text('All')),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 5.w),
                      child:
                          TextButton(onPressed: () {
                          ref.watch(portCategoryValueForHomeScreen.notifier).state ='camera';
                          }, child:const Text('Camera')),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 5.w),
                      child:
                          TextButton(onPressed: () {
                       ref.watch(portCategoryValueForHomeScreen.notifier).state ='web';
                          }, child:const Text('Web')),
                    ),
                  ],
                ),  
                SizedBox(height: 25.h,),
      
   if(ref.watch(portCategoryValueForHomeScreen) =='All') 
      CustomstaggeredGridWeb()
   else if(ref.watch(portCategoryValueForHomeScreen) =='camera') 

          CustomstaggeredGrid()

     
   
            ],
          ),
        );
  }

}

class CustomstaggeredGrid extends StatelessWidget {
 

 

  List<Data>  portfolioList =[];
 


  @override
  Widget build(BuildContext context) {
    for(var i in dd['data']!){
      portfolioList.add(Data.fromJson(i));
    }
    return SizedBox(
     
      child: StaggeredGrid.count(

   
crossAxisCount:5 ,
  mainAxisSpacing: 10.h,
  crossAxisSpacing: 10.w,
      
      
      children: [
        StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 2,
      child:  PortfolioCard(portfolioDataModel: portfolioList[0],),
    ),

          StaggeredGridTile.count(
 crossAxisCellCount: 2,
      mainAxisCellCount: 1,
      child:  PortfolioCard(portfolioDataModel: portfolioList[0],),
    ),
           StaggeredGridTile.count(
crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child:  PortfolioCard(portfolioDataModel: portfolioList[2],),
    ),
           StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child:  PortfolioCard(portfolioDataModel: portfolioList[3],),
    ),
    //            StaggeredGridTile.count(
    //   crossAxisCellCount: 2,
    //   mainAxisCellCount: 1,
    //   child:  PortfolioCard(portfolioDataModel: filterPortFolioList![5],),
    // ),
    //             StaggeredGridTile.count(
    //   crossAxisCellCount: 1,
    //   mainAxisCellCount: 1,
    //   child:  PortfolioCard(portfolioDataModel: filterPortFolioList![6],),
    // ),


      ],
      
      ),

    );
  }
}
class CustomstaggeredGridWeb extends StatelessWidget {



 List<Data>  portfolioList =[];
  @override
  Widget build(BuildContext context) {
       for(var i in dd['data']!){
      portfolioList.add(Data.fromJson(i));
    }
    return SizedBox(
   
      child: StaggeredGrid.count(

crossAxisCount:3 ,
  mainAxisSpacing: 10.h,
  crossAxisSpacing: 10.w,
      
      
      children: [
        StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 2,
      child:  PortfolioCard(portfolioDataModel: portfolioList[0],),
    ),

          StaggeredGridTile.count(
 crossAxisCellCount: 2,
      mainAxisCellCount: 1,
      child:  PortfolioCard(portfolioDataModel: portfolioList[1],),
    ),
           StaggeredGridTile.count(
crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child:  PortfolioCard(portfolioDataModel: portfolioList[3],),
    ),
           StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child:  PortfolioCard(portfolioDataModel: portfolioList[4],),
    ),
               StaggeredGridTile.count(
      crossAxisCellCount: 2,
      mainAxisCellCount: 1,
      child:  PortfolioCard(portfolioDataModel: portfolioList[5],),
    ),
                StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 1,
      child:  PortfolioCard(portfolioDataModel: portfolioList[3],),
    ),


      ],
      
      ),

    );
  }
}