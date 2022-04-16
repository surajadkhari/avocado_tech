import 'package:avacado_tech/utils/constant/app_constant.dart';
import 'package:flutter/material.dart';

import 'search bar section/home_search_bar_section.dart';

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
          children: const [
            HomeSearchbarsection(),
            
          ],
        ),
      ),
    );
  }
}
