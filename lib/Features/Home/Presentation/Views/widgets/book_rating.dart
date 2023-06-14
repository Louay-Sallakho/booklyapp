import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.7',
          style: Styles.textStyle20,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '(7435)',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ],
    );
  }
}
