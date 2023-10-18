import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio1/constants/constants.dart';
import 'package:portfolio1/utils/heading_style.dart';
import 'package:portfolio1/views/home/widgets/service_card.dart';

import '../../../controller/resoponsvice_controller.dart';
import '../../../controller/services_controller.dart';

class ServiceSection extends ConsumerStatefulWidget {
  const ServiceSection({super.key});

  @override
  ConsumerState<ServiceSection> createState() => _ServiceSectionState();
}

class _ServiceSectionState extends ConsumerState<ServiceSection> {

   @override
  void initState() {
 
    super.initState();
    // getSystemsData(context: context,ref: ref);

     SchedulerBinding.instance.addPostFrameCallback((_) {
   getServicesData(context: context,ref: ref);
    });
  }
      static  getServicesData(
      {required BuildContext context, required ref}) async {
    ref.read(servicesClassNotifierController.notifier).getData();



    // ref.watch(filterPortFolioListModel);
  }

  @override
  Widget build(BuildContext context) {
            final prov = ref.watch(servicesListModel);
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 0.h, ),
          width: 1.sw,
         
  
          child: Column(
    crossAxisAlignment:MediaQuery.of(context).size.width <400 ? CrossAxisAlignment.center:CrossAxisAlignment.start,
    children: [
      Align(
        alignment: MediaQuery.of(context).size.width <400 ? Alignment.center :Alignment.centerLeft ,
        child: Text('CORE SERVICES',
             style: HeadingStyles.mainHeadingStyle,
                textAlign: MediaQuery.of(context).size.width <400 ? TextAlign.center :TextAlign.left,
        ),
      ),
      SizedBox(height: 20.h,),
      Text('These are the services we provide for our clients.',
      
      style: GoogleFonts.lato(
        textStyle: TextStyle(fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis,
                  color: Colors.black54,
                   fontFamily: 'sans-serif'
        )
      ),
                 textAlign: MediaQuery.of(context).size.width <400 ? TextAlign.center :TextAlign.left,
      ),
     SizedBox(height: 30.h,),
  //        Wrap(
  // //           spacing: 8.0, // gap between adjacent chips
  // // runSpacing: 4.0, 
  //         children: [
  //           ServiceListCard(),
  //                   ServiceListCard(),
  //                             ServiceListCard(),
  //                                      ServiceListCard(),
  //                                                   ServiceListCard(),
  //                                                     ServiceListCard(),
  //         ],
  //        ),
    //   SizedBox(
    //     height:MediaQuery.of(context).size.width > 950  ?    400.h : MediaQuery.of(context).size.width > 750 ?400.h :    700.h ,
    //     child: GridView.builder(
    //           physics:const NeverScrollableScrollPhysics(),
    // shrinkWrap: true,
    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: MediaQuery.of(context).size.width > 950 ?3 :
    //     MediaQuery.of(context).size.width >750? 2:1 ,
    //      mainAxisExtent:  120.h,
    //     //  childAspectRatio: 3/4,
    //     crossAxisSpacing: 1.0.w,
    //     mainAxisSpacing:1.h,
    //                 ),
    //                 itemCount: 6,
    //                  itemBuilder: (context,index){
    //       return  ServiceListCard();
    //     }),
    //   ),


    SizedBox(
      height: MediaQuery.of(context).size.width > 950  ?    300.h *2.2 : MediaQuery.of(context).size.width > 500 ?300.h*3.5:    300.h*6.5,
      child: GridView.builder(
                physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:MediaQuery.of(context).size.width > 950  ?3 :MediaQuery.of(context).size.width > 500 ?2:1,
           mainAxisExtent:  300.h,
          //  childAspectRatio: 3/4,
          crossAxisSpacing: 15.w,
          // mainAxisSpacing:1.h,
                      ),
                      itemCount: prov!.data!.length,
                       itemBuilder: (context,index){
            return  ServiceListCard(servicesModelClass: prov.data![index],);
          })
    ),
        
        // SizedBox(height: 20.h,),
        //  Row(
        //   children:const [
        //     ServiceListCard(),
        //             ServiceListCard(),
        //                       ServiceListCard(),
        //   ],
        //  ),
    ],
          ),
);
  }
}