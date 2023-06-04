import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class MediumTitle extends StatelessWidget {
  const MediumTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        text,
        style: Styles.titleMedium,
      ),
    );
  }
}
