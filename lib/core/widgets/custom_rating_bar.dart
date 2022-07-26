import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({Key? key,  this.initialRating =0, this.minRating =0,  this.allowHalfRating = true, required this.onRatingUpdate,}) : super(key: key);
  final double initialRating;
  final double minRating;
  final bool allowHalfRating;
  final ValueChanged<double> onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: minRating,
      direction: Axis.horizontal,
      allowHalfRating: allowHalfRating,
      itemCount: 5,
      itemSize: 23,
      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
      itemBuilder: (context, _) =>
          const Icon(
            Icons.star,
            color: Colors.amber,
          ),
      onRatingUpdate: onRatingUpdate,
    );
  }
}

class CustomRatingBarWithoutEditing extends StatelessWidget{
  const CustomRatingBarWithoutEditing({Key? key, required this.rating}) : super(key: key);
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      children: List.generate(5,
            (index){
          if(index< rating){
            return const Icon(
              Icons.star,
              color: Colors.amber,
              size: 22,
            );
          }
          else{
            return const Icon(
              Icons.star,
              color: Colors.grey,
              size: 20,
            );
          }
        },
      ),
    );
  }
}