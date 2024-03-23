import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'hygiene_rating_model.dart';
export 'hygiene_rating_model.dart';

class HygieneRatingWidget extends StatefulWidget {
  const HygieneRatingWidget({
    super.key,
    required this.hygieneRating,
  });

  final FeedbackRecord? hygieneRating;

  @override
  State<HygieneRatingWidget> createState() => _HygieneRatingWidgetState();
}

class _HygieneRatingWidgetState extends State<HygieneRatingWidget> {
  late HygieneRatingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HygieneRatingModel());

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
      rating: widget.hygieneRating!.hygieneRating,
      unratedColor: FlutterFlowTheme.of(context).accent3,
      itemCount: 5,
      itemSize: 40.0,
    );
  }
}
