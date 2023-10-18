import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio1/controller/portfolio_controller.dart';
import 'package:portfolio1/models/new_mdl.dart';

class Filter{
  static List<Data>? filterList({required PortFolioListClass? list ,required WidgetRef ref }){

    // List<dynamic>? fltrLIst = 

    String? categoryVal =ref.watch(portCategoryValueForHomeScreen);
List<Data>  filterList =[];
if(categoryVal =='All'){
  filterList=list!.data!;
}
else{
 filterList= list!.data!
        .where((element) => element.name == categoryVal)
        .toList();

}

     

   
return filterList;
   
// return fltrLIst;
  }




  //protfolio page filter product with category
    static List<Data>? filterListOnPortfolioPage({required PortFolioListClass? list ,required WidgetRef ref }){

    // List<dynamic>? fltrLIst = 

    String? categoryVal =ref.watch(portCategoryValueForHomeScreen);
List<Data>  filterList =[];
if(categoryVal =='All'){
  filterList=list!.data!;
}
else{
 filterList= list!.data!
        .where((element) => element.name == categoryVal)
        .toList();

}

     

   
return filterList;
   
// return fltrLIst;
  }
}