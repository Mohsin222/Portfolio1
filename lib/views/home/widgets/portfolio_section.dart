import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio1/controller/portfolio_controller.dart';
import 'package:portfolio1/controller/resoponsvice_controller.dart';
import 'package:portfolio1/models/new_mdl.dart';
import 'package:portfolio1/utils/heading_style.dart';

import 'package:portfolio1/utils/portfolio_filter.dart';



class PortfolioSection extends ConsumerStatefulWidget {
  const PortfolioSection({super.key});




  @override
  ConsumerState<PortfolioSection> createState() => _PortfolioSectionState();
}

class _PortfolioSectionState extends ConsumerState<PortfolioSection> {


  @override
  void initState() {
 
    super.initState();
    // getSystemsData(context: context,ref: ref);

     SchedulerBinding.instance.addPostFrameCallback((_) {
   getSystemsData(context: context,ref: ref);
    });
  }
    static  getSystemsData(
      {required BuildContext context, required ref}) async {
    ref.read(portFolioListProv.notifier).getData();



    // ref.watch(filterPortFolioListModel);
  }

  @override
  Widget build(BuildContext context) {
        final prov = ref.watch(portFolioListModel);

     final deviceTypeProv = ref.watch(deviceTypeProvider);


    final filterPortFolioList =Filter.filterList(list: prov,ref: ref);
    return  Container(
          color: Colors.white,
          padding: EdgeInsets.only(bottom: 50.h,top: 50.h),
          child: Column(
            children: [
   
              Align(
        alignment: deviceTypeProv ==DeviceSizeType.MOBILE ? Alignment.center :Alignment.centerLeft,
        child: Text('PORTFOLIO',
             style: HeadingStyles.mainHeadingStyle,
                textAlign:deviceTypeProv ==DeviceSizeType.MOBILE ? TextAlign.center :TextAlign.left,
        ),
      ),
                SizedBox(height: 50.h,),
       
            SizedBox(
            // height:MediaQuery.of(context).size.width > 950  ?    280.h *2.2 : MediaQuery.of(context).size.width > 400 ?280.h*3.5:    280.h*6.5,
                    //  height:MediaQuery.of(context).size.width > 950  ?    350.h *2.2 : MediaQuery.of(context).size.width > 500 ?350.h*3.5:    350.h*6.5,
 height:deviceTypeProv ==DeviceSizeType.WEB ? 350.h *2.2 :deviceTypeProv ==DeviceSizeType.TAB ?350.h*3.5:350.h*3.5,
        // height:MediaQuery.of(context).size.width > 950  ?    280.h *2.2 : (MediaQuery.of(context).size.width > 500) ?280.h*3.5: (MediaQuery.of(context).size.width < 500 && filterPortFolioList!.length < 4)   ? 280*3:    280.h*6.5,  
              child: GridView.builder(
                    physics:const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width > 950 ?3 :
              MediaQuery.of(context).size.width >400? 2:1  
               ,
              //  mainAxisExtent: 280.h,
                             mainAxisExtent: 350.h,

              //  childAspectRatio: 3/4,
              // crossAxisSpacing: 10.0.w,
              mainAxisSpacing:5.h,
                          ),
                          // itemCount: filterPortFolioList!.length,
                          itemCount: prov!.data!.length,
                           itemBuilder: (context,index){




  

   
                return  PortfolioCard(portfolioDataModel: prov.data![index],);
              }),
            )
            ],
          ),
        );
  }
}


class PortfolioCard extends StatefulWidget {

  final Data? portfolioDataModel;
  const PortfolioCard({super.key, required this.portfolioDataModel});

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
        margin: EdgeInsets.all(5.h),
        // color: Color(0xFF3B6D83),
        color: Color.fromARGB(255, 114, 81, 81),
        // height: 420.h,
        // width: 320.w,
        child: ClipRRect(
                          clipBehavior: Clip.hardEdge,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.portfolioDataModel!.image ?? "./assets/images/portfolio_images/todo_app/todo_app_pic1.png"),
                  fit: BoxFit.cover,
                  
                  ),
                              // borderRadius: BorderRadius.all(Radius.circular(10.r))
             
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
                      child: SizedBox(
                        width: 1.sw, 
                        child: Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50.h,),
                            SelectableText(widget.portfolioDataModel!.title ?? '',
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)
                            ),
                                          SizedBox(height: 25.h,),
                                     SelectableText( widget.portfolioDataModel!.description ??'',
                                           style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white)
                                     ),
                                              // SelectableText('Isfahan',
                                              //       style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)
                                              // ),
                                          
                                              //      ElevatedButton(
                                              //        child: FittedBox(
                                              //          child: const Text(
                                              //            "Discover the Jewel of Iran",
                                              //          ),
                                              //        ),
                                              //        onPressed: () {},
                                              //      )
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),     
                           
                   IgnorePointer(
                     child: SizedBox(
                        height: 420.h,
                                // height: 500.h,
                         width: 320.w,
                               child: DecoratedBox(decoration: BoxDecoration(
                              //  border: Border.all(color: Colors.grey,width: 6.w),
                              //  borderRadius: BorderRadius.all(Radius.circular(10.r))
                             )),),
                   ),
            ],
          ),
        ),
      ),
    );
  }
}