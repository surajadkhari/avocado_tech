import 'package:avacado_tech/utils/constant/app_constant.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstant.primaryColor,
        leading: const Center(child: Text("Doctor")),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list_outlined,
              ))
        ],
      ),
    );
  }
}
