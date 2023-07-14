import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, main, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 20,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          '4.7',
          style: Styles.textStyle20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '(7435)',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ],
    );
  }
}
