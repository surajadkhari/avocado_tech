

import 'package:flutter/material.dart';

class HomeSearchbarsection extends StatelessWidget {
  const HomeSearchbarsection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 20, left: 12, right: 12, bottom: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        decoration: const InputDecoration(
            suffixIcon: Icon(
              Icons.search,
              color: Color(
                0xff7FCAD4,
              ),
            ),
            border: InputBorder.none,
            hintText: "SEARCH"),
      ),
    );
  }
}
