

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio1/controller/portfolio_controller.dart';
import 'package:portfolio1/models/new_mdl.dart';
import 'package:portfolio1/models/portfolio_model.dart';
import 'package:portfolio1/utils/portfolio_filter.dart';

import '../../../constants/constants.dart';
import '../../../json/portfolio.dart';
import 'models/new_mdl.dart';

class PortfolioPRACTICESection extends ConsumerStatefulWidget {



  @override
  ConsumerState<PortfolioPRACTICESection> createState() => _PortfolioPRACTICESectionState();
}

class _PortfolioPRACTICESectionState extends ConsumerState<PortfolioPRACTICESection> {
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getSystemsData(context: context,ref: ref);

     SchedulerBinding.instance.addPostFrameCallback((_) {
   getSystemsData(context: context,ref: ref);
    });
  }
    static  getSystemsData(
      {required BuildContext context, required ref}) async {
    ref.read(portFolioListProv.notifier).getData();



    ref.watch(filterPortFolioListModel);
  }
  List filterVals =[
    'camera',
    "web",
    "other"
  ];

var filterVal ='All';

  @override
  Widget build(BuildContext context) {

  
    final prov = ref.watch(portFolioListModel);


    final filterList = ref.watch(filterPortFolioListModel);


    final patient =Filter.filterList(list: prov,ref: ref);



// var filterList = prov;

    print(prov.toString() +"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    return  SingleChildScrollView(
      child: Container(
            color: Colors.white,
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

      ref.watch(portCategoryValueForHomeScreen.notifier).state ='web';
                                    
                            
                          
                            }, child:const Text('web')),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 5.w),
                        child:
                            TextButton(onPressed: () {
              ref.watch(portCategoryValueForHomeScreen.notifier).state ='camera';
                print(filterList!.data.toString()+'QQQQQQ');
                            }, child: Text('camera')),
                      ),
                    ],
                  ),  
                  SizedBox(height: 25.h,),
   
      
              SizedBox(
                height:MediaQuery.of(context).size.width > 950  ?    280.h *2.2 : MediaQuery.of(context).size.width > 500 ?280.h*3.5:    280.h*6.5,
                child: GridView.builder(
                      physics:const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 950 ?3 :
                MediaQuery.of(context).size.width >500? 2:1  
                 ,
                 mainAxisExtent: 280.h,
                //  childAspectRatio: 3/4,
                crossAxisSpacing: 10.0.w,
                mainAxisSpacing:20.h,
                            ),
                            itemCount: patient!.length,
                             itemBuilder: (context,index){
    
                  List<PortfolioModel> portfolio =[];
      List<PortfolioModel> filerList=[];
    //               for(var i in portfolioJson){
    // portfolio.add(PortfolioModel.fromJson(i));
    //               }
    
    
    //                 for(var i in portfolio){
    
    //                   if(i.name == filterVal){
    // filerList.add(i);
    //                   }
    
                  // }
  
      if(filterVal !='All') {
      //  portfolio.firstWhere((element) =>element.name == filterVal);
    
      }else{
       filerList=portfolio;
      }
    
      
    
      print(filterVal);
        print(portfolio.length);
                  return  PortfolioCard(portfolioModel: patient[index],);
                }),
              )
              ],
            ),
          ),
    );
  }
}

// class PortfolioCard extends StatefulWidget {
//   const PortfolioCard({
//     super.key,
//   });

//   @override
//   State<PortfolioCard> createState() => _PortfolioCardState();
// }

// class _PortfolioCardState extends State<PortfolioCard> {
//   bool _isHovered = false;
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//             onEnter: (PointerEnterEvent event) => _onHoverChanged(enabled: true),
//       onExit: (PointerExitEvent event) => _onHoverChanged(enabled: false),
//       child: Container(
//         height:100.h,
//         // color: Colors.pink,
//         width: 1.sw,
//         // margin: EdgeInsets.symmetric(horizontal: 5.w),
//             // padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 150.h),
//             decoration:const BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1561154464-82e9adf32764?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80'),
//             fit: BoxFit.cover
//             ),
//             ),
//             child: Text(_isHovered == true?'aaaaaaaaa'  :''),
//           ),
//     );
//   }
//   void _onHoverChanged({required bool enabled}) {
//     setState(() {
//       _isHovered = enabled;
//     });
//   }
// }

class PortfolioCard extends StatefulWidget {

  final Data? portfolioModel;
  const PortfolioCard({super.key, required this.portfolioModel});

  @override
  State<PortfolioCard> createState() => _PortfolioCardState();
}

class _PortfolioCardState extends State<PortfolioCard>     with SingleTickerProviderStateMixin {

    late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 600),
    vsync: this,
  );

    late final Animation<Offset> _animation = Tween<Offset>(
    begin: const Offset(1.1, 0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return  MouseRegion(
                onEnter: (event) => _controller.forward(),
          onExit: (event) => _controller.reverse(),
      child: Container(
        // color: Color(0xFF3B6D83),
        color: Colors.white,
        // height: 420.h,
        // width: 320.w,
        child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(widget.portfolioModel!.image ?? 'https://images.unsplash.com/photo-1660845682797-956faba6f2df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1576&q=80'),
                  fit: BoxFit.cover,
                  
                  ),
                              borderRadius: BorderRadius.all(Radius.circular(10.r))
             
                ),
                
              ),
              SlideTransition(
                position: _animation,
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  child: BackdropFilter(
                    
                    filter: ImageFilter.blur(sigmaX :6, sigmaY:6),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50.h,),
                          SelectableText('Isfahan',
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)
                          ),
                                        SizedBox(height: 25.h,),
                                   SelectableText('Isfahan Restarted application Restarted application' ,
                                         style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white)
                                   ),
                                            SelectableText('Isfahan',
                                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)
                                            ),
                    
                                                 ElevatedButton(
                                                   child: FittedBox(
                                                     child: const Text(
                                                       "Discover the Jewel of Iran",
                                                     ),
                                                   ),
                                                   onPressed: () {},
                                                 )
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ),     
                           
                   IgnorePointer(
                     child: SizedBox(
                        height: 420.h,
                         width: 320.w,
                               child: DecoratedBox(decoration: BoxDecoration(
                              //  border: Border.all(color: Colors.grey,width: 6.w),
                               borderRadius: BorderRadius.all(Radius.circular(10.r))
                             )),),
                   ),
            ],
          ),
        ),
      ),
    );
  }
}















