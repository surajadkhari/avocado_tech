
import 'package:avacado_tech/utils/common/sectiontitle.dart';
import 'package:avacado_tech/utils/constant/app_constant.dart';
import 'package:flutter/material.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SectionTitle(
            title: 'Categories',
            view: "View ALl",
          ),
          SizedBox(
            height: 130,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 4,
                      childAspectRatio: 1.2),
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color:
                            AppConstant.primaryColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(AppConstant.image),
                        )),
                  ),
                  const Text(
                    "hi",
                    style: TextStyle(
                        color: AppConstant.primaryColor,
                        fontSize: 12,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
