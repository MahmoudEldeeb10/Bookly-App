import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/best_seller_lost_view.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(height: 50),
                Text("Best Seller", style: Styles.textStyle18),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
