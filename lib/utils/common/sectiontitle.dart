import 'package:avacado_tech/utils/constant/app_constant.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.title, required this.view})
      : super(key: key);
  final String title;
  final String view;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin:
              const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppConstant.primaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 11),
          child: Text(
            view,
            style: const TextStyle(
                color: AppConstant.primaryColor,
                fontSize: 12,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
