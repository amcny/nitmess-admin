import '/flutter_flow/flutter_flow_util.dart';
import 'pincode_reset_widget.dart' show PincodeResetWidget;
import 'package:flutter/material.dart';

class PincodeResetModel extends FlutterFlowModel<PincodeResetWidget> {
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
