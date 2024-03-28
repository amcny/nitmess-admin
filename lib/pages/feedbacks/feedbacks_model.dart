import '/flutter_flow/flutter_flow_util.dart';
import 'feedbacks_widget.dart' show FeedbacksWidget;
import 'package:flutter/material.dart';

class FeedbacksModel extends FlutterFlowModel<FeedbacksWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
