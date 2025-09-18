import 'package:flutter/material.dart';

import '../../../../core/constants/app_styles.dart';

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(BuildContext context) =>
    Text('Hello there', style: AppStyles.helloText,);
}
