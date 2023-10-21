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
             final deviceTypeProv = ref.watch(deviceTypeProvider);
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 0.h, ),
          width: 1.sw,
         
  
          child: Column(
    crossAxisAlignment:MediaQuery.of(context).size.width <400 ? CrossAxisAlignment.center:CrossAxisAlignment.start,
    children: [
      Align(
     alignment: deviceTypeProv ==DeviceSizeType.MOBILE ? Alignment.center :Alignment.centerLeft,
        child: Text('CORE SERVICES',
             style: HeadingStyles.mainHeadingStyle,
                textAlign: MediaQuery.of(context).size.width <400 ? TextAlign.center :TextAlign.left,
        ),
      ),
      SizedBox(height: 20.h,),
      Align(
         alignment: deviceTypeProv ==DeviceSizeType.MOBILE ? Alignment.center :Alignment.centerLeft,
        child: Text('These are the services we provide for our clients.',
        
        style: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black54,
                     fontFamily: 'sans-serif'
          )
        ),
        
              
        ),
      ),
     SizedBox(height: 30.h,),
  

    SizedBox(
      height: deviceTypeProv == DeviceSizeType.WEB  ?    240.h *2.2 :deviceTypeProv == DeviceSizeType.TAB  ?240.h*3.5:    240.h*6.5,
      child: GridView.builder(
                physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:MediaQuery.of(context).size.width > 950  ?3 :MediaQuery.of(context).size.width > 500 ?2:1,
           mainAxisExtent:  240.h,
          //  childAspectRatio: 3/4,
          crossAxisSpacing: 20.w,
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