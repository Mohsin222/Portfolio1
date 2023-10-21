import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
   Footer({super.key});


List<Widget> socialMediaButtons=[
//  IconButton(onPressed: (){}, icon: Icon(Icons.facebook,color: Colors.white,)),
InkWell(
  onTap: ()async{
   
  },
  child:   Container(
  
    height: 30.h,
  
    width: 30.w,
  
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('./assets/images/social_icons/facebook.png'))),),
),
  Container(
  height: 30.h,
  width: 30.w,
  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('./assets/images/social_icons/linkedin.png'))),),
  Container(
  height: 30.h,
  width: 30.w,
  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('./assets/images/social_icons/freelancer.png'))),),
 
  // IconButton(onPressed: (){}, icon: Icon(Icons.telegram,color: Colors.white,)),
];
Future<void> launch(String url) async {

  final Uri _url = Uri.parse(url);
await launchUrl(_url);
  // if (!await launchUrl(_url)) {
  //   throw Exception('Could not launch $_url');
  // }
}
  @override
  Widget build(BuildContext context) {
    return    Container(
         decoration: BoxDecoration(
           color: Colors.black,
       
       
          // image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1605379399642-870262d3d051?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=1506'),fit: BoxFit.cover,opacity: 0.9),
          ),
        width:1.sw,
       
        padding: EdgeInsets.symmetric(vertical: 60.h,horizontal: 20.w),
        child: Flex(
          direction: MediaQuery.of(context).size.width > 750 ? Axis.horizontal :Axis.vertical,
      // alignment: MediaQuery.of(context).size.width > 750 ? WrapAlignment.spaceBetween:WrapAlignment.center,

// crossAxisAlignment: WrapCrossAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

            const SizedBox(
                //  width: 0.4.sw,
              child: Text('Mohsin Irfan',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                _socialMediaButton(
                  onpress: ()async{
 launch('https://www.facebook.com/profile.php?id=100008292136346');
                  },
                  imageURl: './assets/images/social_icons/facebook.png'
                ),
                   _socialMediaButton(
                  onpress: ()async{
 launch('https://www.linkedin.com/in/mohsin-irfan-b15a19204/');
                  },
                  imageURl: './assets/images/social_icons/linkedin.png'
                ),
                   _socialMediaButton(
                  onpress: ()async{
 launch('https://www.freelancer.com/u/mohsinirfan222');
                  },
                  imageURl: './assets/images/social_icons/freelancer.png'
                ),
              ]
            )
          ],
        ),
      );
  }

  _socialMediaButton({VoidCallback? onpress, String? imageURl}){
    return InkWell(
  // onTap: ()async{
  //  
  // },
  onTap: onpress,
  child:   Container(
  
    height: 30.h,
  
    width: 30.w,
  
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imageURl!))),),
);
  }
}