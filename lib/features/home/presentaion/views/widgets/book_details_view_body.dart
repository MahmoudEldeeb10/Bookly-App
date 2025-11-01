import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentaion/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_detailsa_app_bar.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_item_item.dart';
import 'package:bookly/features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                    child: CustomBookImage(),
                  ),
                  const SizedBox(height: 43),
                  Text(
                    'The Jungle Book',
                    style: Styles.textStyle30.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Rudyard Kipling',
                      style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                  const SizedBox(height: 37),
                  BooksAction(),
                  Expanded(child: SizedBox(height: 50)),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You May Also Like',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SimilarBooksListView(),
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
