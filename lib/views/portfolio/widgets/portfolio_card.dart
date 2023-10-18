import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio1/models/new_mdl.dart';

class PortfolioCard extends StatefulWidget {

  final Data? portfolioDataModel;
  const PortfolioCard({super.key, required this.portfolioDataModel});

  @override
  State<PortfolioCard> createState() => _PortfolioCardState();
}

class _PortfolioCardState extends State<PortfolioCard>   {

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                // image: DecorationImage(image: NetworkImage(widget.portfolioDataModel!.iamge ?? 'https://images.unsplash.com/photo-1660845682797-956faba6f2df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1576&q=80'),
                // fit: BoxFit.cover,
                
                // ),
                image: DecorationImage(image: AssetImage(widget.portfolioDataModel!.image ??'./assets/images/portfolio_images/wall_app/wall_app_pic2.png'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(10.r))
           
              ),
              
            ),
           
                         
      Center(child: Text('MOHSIN'),)
          ],
        ),
      ),
    );
  }
}