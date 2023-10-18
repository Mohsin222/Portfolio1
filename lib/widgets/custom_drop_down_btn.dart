import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown extends StatefulWidget {
   String? selectedValue;
   List<String>? dropDownList;
   CustomDropDown({
    Key? key,
    this.selectedValue,
    required this.dropDownList,
  }) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 1.sw,
      height: 200.h,
      child: DropdownButton<String>(
       isExpanded: true,
        value: widget.selectedValue,
        icon:  Icon(Icons.expand_more,size: 20.sp,color: Color(0xffca8b18),),
      
        elevation: 16,
        style: const TextStyle(color: Colors.black,),
       
        // underline: Container(
        //   height: 2,
        //   color: Colors.white,
        // ),
       underline: SizedBox(),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            widget.selectedValue = value!;
          });
        },
      items: widget.dropDownList!.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items,style: TextStyle(fontSize: 14.sp,color: Colors.black,fontWeight: FontWeight.w300,
        letterSpacing: 1,
        ),),
                  );
                }).toList(),
      ),
    );
  }


  

  
}

