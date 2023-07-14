import 'package:booklyapp/Features/Home/Presentation/Views/widgets/custom_book_image.dart';
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
          children: [
            const CustomeBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: movieItemPadding * .17),
              child: const CustomBookImage(),
            ),
          ],
        ),
      ),
    );
  }
}
