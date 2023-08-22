import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryHorizontalListView extends StatelessWidget {
  final String categoryTitle;
  const CategoryHorizontalListView({required this.categoryTitle,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryTitle,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500),
          ),
          TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Colors.blue),))
        ],
      ),
      SizedBox(height: 8.h,),
      SizedBox(
        height: 220.h,
        child: ListView.separated(itemCount: 14,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index){
            return Container(
                width: 140.w,
                decoration: ShapeDecoration(
                  image:DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/movie_$index.jpg")
                  ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),)
            );
          },separatorBuilder: (BuildContext context, int index){
            return SizedBox(width: 16.w,);
          },),
      ),

    ],);
  }
}
