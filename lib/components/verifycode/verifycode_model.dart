import '/flutter_flow/flutter_flow_util.dart';
import 'verifycode_widget.dart' show VerifycodeWidget;
import 'package:flutter/material.dart';

class VerifycodeModel extends FlutterFlowModel<VerifycodeWidget> {
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
