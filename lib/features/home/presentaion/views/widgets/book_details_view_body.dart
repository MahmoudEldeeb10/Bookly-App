import 'package:bookly/features/home/presentaion/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_detailsa_app_bar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  const BookDetailsSection(),
                  const Expanded(child: SizedBox(height: 50)),
                  const SimilarBooksSiction(),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
