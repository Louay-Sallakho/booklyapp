
import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view_item.dart';
import 'meduim_title.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListViewItem(),
        SizedBox(
          height: 50,
        ),
        MediumTitle(
          text: 'Best Seller',
        ),
        BestSellerListViewItem()
      ],
    );
  }
}
