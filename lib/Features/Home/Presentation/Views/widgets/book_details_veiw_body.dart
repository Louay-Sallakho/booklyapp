import 'package:booklyapp/Features/Home/Presentation/Views/widgets/book_rating.dart';
import 'package:booklyapp/Features/Home/Presentation/Views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var movieItemPadding = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomeBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: movieItemPadding * .17),
              child: const CustomBookImage(),
            ),
            const SizedBox(
              height: 34,
            ),
            const Text(
              'Harry Botter and the Sorecerrey Stone',
              style: Styles.textStyle20,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'JK. Rowling',
              style: Styles.textStyle18
                  .copyWith(color: Colors.white.withOpacity(.4)),
            ),
            const SizedBox(
              height: 18,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}
