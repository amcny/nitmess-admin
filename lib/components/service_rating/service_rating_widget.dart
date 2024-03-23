import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'service_rating_model.dart';
export 'service_rating_model.dart';

class ServiceRatingWidget extends StatefulWidget {
  const ServiceRatingWidget({
    super.key,
    required this.serviceRating,
  });

  final FeedbackRecord? serviceRating;

  @override
  State<ServiceRatingWidget> createState() => _ServiceRatingWidgetState();
}

class _ServiceRatingWidgetState extends State<ServiceRatingWidget> {
  late ServiceRatingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceRatingModel());

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
      rating: widget.serviceRating!.serviceRating,
      unratedColor: FlutterFlowTheme.of(context).accent3,
      itemCount: 5,
      itemSize: 40.0,
    );
  }
}
