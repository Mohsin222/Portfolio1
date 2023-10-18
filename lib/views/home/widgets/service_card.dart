import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio1/models/services_model.dart';

// class ServiceListCard extends StatelessWidget {
//   const ServiceListCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return      Container(
//       width: 90.w,
//       height: 140.h,
//       // width: 1.sw,
//       child: Column(
//                   // contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
//                children: [
//             Row(children: [Icon(Icons.house_outlined,size: 40.sp,),
//             SizedBox(width: 5.w,),
//             Container(
//                  width: 90.w,
//       height: 120.h,
//               child: Column(
//                 children: [
//                   Text("FIRSR RRARAA",
                  
//                   // overflow: TextOverflow.ellipsis,
//                          style:GoogleFonts.workSans(
//                           textStyle:  TextStyle(
//                         fontSize: 20.sp,
                     
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: 'sans-serif'
//                       ),
//                          )
                  
//                   ),
                  
                  
//                       SizedBox(width: 5.h,),
                  
//                      FittedBox(
//                        child: Text('Lorem ipsum dolor sit amett amet, consectetur adipisit amet, consectetur adipisi, consectetur adipisicing elit. Iusto, earum',
//                                        maxLines: 3,
                                       
//                                        style: GoogleFonts.lato(
//                                          textStyle: TextStyle(fontSize: 16.sp,
//                                        fontWeight: FontWeight.w400,
//                                       //  overflow: TextOverflow.ellipsis,
//                                        color: Colors.black54,
//                                         fontFamily: 'sans-serif'
//                                        ),
//                                        )
//                                        ),
//                      )
//                 ],
//               ),
//             ),
            
//             ],),
       
//                ],
       
//                 ),
//     );
//   }
// }


class ServiceListCard extends StatelessWidget {
  final ServicesModelClass servicesModelClass;
  const ServiceListCard({super.key, required this.servicesModelClass});

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 20.h,
      color: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1505238680356-667803448bb6?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),fit: BoxFit.fill,opacity: 0.5)
        ),

        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              // child: Icon(Icons.house_outlined,size: 40.sp,)
              child: FlutterLogo(size: 40.sp,),
              
              ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                                    alignment: Alignment.center,
                            child: Text(servicesModelClass.name ?? "Web Developement",
                            
                            // overflow: TextOverflow.ellipsis,
                                   style:GoogleFonts.workSans(
                                    textStyle:  TextStyle(
                                  fontSize: 20.sp,
                               
                                  // color: Colors.black,
                                       color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'sans-serif'
                                ),
                                
                                   ),
                                   textAlign: TextAlign.center,
                            
                            ),
                          ),
                          
                          
                              SizedBox(width: 5.h,),
                          
                             Align(
                              alignment: Alignment.center,
                               child: Text(servicesModelClass.description ??'We provide all kind of webiste and web based system like static and dynamic websites CMS etc.',
                                               maxLines: 3,
                                               
                                               style: GoogleFonts.lato(
                                                 textStyle: TextStyle(fontSize: 16.sp,
                                               fontWeight: FontWeight.w400,
                                              //  overflow: TextOverflow.ellipsis,
                                              //  color: Colors.black54,
                                              color: Colors.white,
                                                fontFamily: 'sans-serif'
                                               ),
                                               ),
                                                 textAlign: TextAlign.center,
                                               ),
                             )
                        ],
                      ),
            ),
          ],
        ),
              ),
    );            
   
    
  }
}