import 'package:avacado_tech/screens/homepage/searchbar%20section/home_search_bar_section.dart';
import 'package:avacado_tech/utils/constant/app_constant.dart';
import 'package:flutter/material.dart';

import '../../utils/common/sectiontitle.dart';
import 'carouselslirer section/home_carouselslider_section.dart';
import 'categories section/categories_section.dart';
import 'helpcall section/home_helpcall_section.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.primaryColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 120,
        backgroundColor: AppConstant.primaryColor,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_outlined,
                )),
            const Center(child: Text("Doctors")),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list_outlined,
              ))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: AppConstant.secondaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(22))),
        child: ListView(
          children: [
            const HomeSearchbarSection(),
            const HomeCarouselSliderSection(),
            const HomeCategoriesSection(),
            const HomeHelpcallSection(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SectionTitle(
                  title: 'Available Doctors',
                  view: "View ALl",
                ),
                SizedBox(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(AppConstant.image)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4, top: 4),
                              child: Text(
                                "Dr. Hsh",
                                style: TextStyle(
                                    color: AppConstant.primaryColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 1,
                      childAspectRatio: 3.6 / 3.3,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
