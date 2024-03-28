import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var userId = '';
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? count;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
