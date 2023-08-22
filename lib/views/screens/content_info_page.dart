import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:ottapp/views/widgets/category_horizontal_listview.dart';

class ContentInfoPage extends StatelessWidget {
  ContentInfoPage({super.key});

  final List ratingTextList = ["Action", "Adventure", "2H 45M", "✨3.5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(

              backgroundColor: Colors.black,
              leading: Icon(
                CupertinoIcons.back,
                color: Colors.white,
              ),
              elevation: 0,
              floating: true,
              expandedHeight: MediaQuery.of(context).size.height / 2,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1.5,
                collapseMode: CollapseMode.parallax,
                background: Container(
                    foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(1),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/movie_9.jpg",
                          ),
                        ),
                      ),
                      child: Center(
                        child:
                            Lottie.asset("assets/lottie_animation/play.json"),
                      ),
                    )),
                stretchModes: const [StretchMode.blurBackground],
                centerTitle: true,
                titlePadding: EdgeInsets.only(left: 16.w),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transformers: \nRise of the Beasts",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(CupertinoIcons.heart_fill))
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0.w),
                child: SizedBox(
                  height: 80.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Chip(
                          label: Text(ratingTextList[index]),
                          backgroundColor: Colors.grey.shade900,
                          labelStyle: TextStyle(color: Colors.white),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 2.w,
                        );
                      },
                      itemCount: 4),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 22.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: 22.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                      " Lorem Ipsum has been the industry's standard dummy text "
                      "ever since the 1500s, when an unknown printer took a galley "
                      "of type and scrambled it to make a type specimen book. "
                      "It has survived not only five centuries, but also the "
                      "leap into electronic typesetting, remaining essentially "
                      "unchanged. It was popularised in the 1960s with the release ",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 25.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cast",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      height: 200.h,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                CircleAvatar(
                                  radius: 70.r,
                                  backgroundImage:
                                      AssetImage("assets/images/spidey.jpg"),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  "Spidey",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 16.w,
                            );
                          },
                          itemCount: 6),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 16.0.w, right: 16.0.w, bottom: 100.h),
                child: CategoryHorizontalListView(
                  categoryTitle: "Recommended for you",
                ),
              ),
            ),
          ],
        ));
  }
}
