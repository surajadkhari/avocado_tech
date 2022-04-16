
import 'package:flutter/material.dart';

import '../../../utils/constant/app_constant.dart';

class HomeHelpcallSection extends StatelessWidget {
  const HomeHelpcallSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Needed help wiht Doctor and Info?",
            style: TextStyle(
                color: AppConstant.primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone_callback_outlined,
                color: Colors.red,
              ),
            ),
            const Text(
              "Call us Now",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ],
        )
      ],
    );
  }
}
