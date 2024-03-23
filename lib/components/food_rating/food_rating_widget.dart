import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'food_rating_model.dart';
export 'food_rating_model.dart';

class FoodRatingWidget extends StatefulWidget {
  const FoodRatingWidget({
    super.key,
    required this.foodRating,
  });

  final FeedbackRecord? foodRating;

  @override
  State<FoodRatingWidget> createState() => _FoodRatingWidgetState();
}

class _FoodRatingWidgetState extends State<FoodRatingWidget> {
  late FoodRatingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodRatingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (context, index) => Icon(
        Icons.star,
        color: FlutterFlowTheme.of(context).warning,
      ),
      direction: Axis.horizontal,
      rating: widget.foodRating!.foodRating,
      unratedColor: FlutterFlowTheme.of(context).accent3,
      itemCount: 5,
      itemSize: 40.0,
    );
  }
}
