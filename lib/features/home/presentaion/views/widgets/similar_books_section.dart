import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSiction extends StatelessWidget {
  const SimilarBooksSiction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You May Also Like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        SimilarBooksListView(),
      ],
    );
  }
}
