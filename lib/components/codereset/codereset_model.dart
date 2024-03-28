import '/flutter_flow/flutter_flow_util.dart';
import 'codereset_widget.dart' show CoderesetWidget;
import 'package:flutter/material.dart';

class CoderesetModel extends FlutterFlowModel<CoderesetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
