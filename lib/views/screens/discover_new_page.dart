import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ottapp/views/widgets/category_horizontal_listview.dart';
import 'package:ottapp/views/widgets/custom_searchbar.dart';

class DiscoverNewPage extends StatelessWidget {
  const DiscoverNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
        "Discover New",
        style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold),
      ),),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Search_Bar
              SizedBox(
                height: 20.h,
              ),
              const CustomSearchBar(hintText: "Search Here"),
              //Hollywood
              SizedBox(
                height: 20.h,
              ),
              CategoryHorizontalListView(categoryTitle: "Hollywood"),
              //WebSeries
              SizedBox(
                height: 20.h,
              ),
              CategoryHorizontalListView(categoryTitle: "Web Series"),
              //Bollywood
              SizedBox(
                height: 20.h,
              ),
              CategoryHorizontalListView(categoryTitle: "Bollywood"),
              //TvShows
              SizedBox(height: 20.h,),
              CategoryHorizontalListView(categoryTitle: "Tv Shows"),
              //Sports
              SizedBox(height: 20.h,),
              CategoryHorizontalListView(categoryTitle: "Sports")
            ],
          ),
        ),
      ),
    );
  }
}
