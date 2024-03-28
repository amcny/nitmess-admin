import '/flutter_flow/flutter_flow_util.dart';
import 'codeverify_widget.dart' show CodeverifyWidget;
import 'package:flutter/material.dart';

class CodeverifyModel extends FlutterFlowModel<CodeverifyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
