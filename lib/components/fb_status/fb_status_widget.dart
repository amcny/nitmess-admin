import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'fb_status_model.dart';
export 'fb_status_model.dart';

class FbStatusWidget extends StatefulWidget {
  const FbStatusWidget({
    super.key,
    required this.fbdoc,
    required this.fbRef,
  });

  final FeedbackRecord? fbdoc;
  final DocumentReference? fbRef;

  @override
  State<FbStatusWidget> createState() => _FbStatusWidgetState();
}

class _FbStatusWidgetState extends State<FbStatusWidget> {
  late FbStatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FbStatusModel());

    _model.textController ??=
        TextEditingController(text: widget.fbdoc?.fbDoc.mgmt);
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
            child: Text(
              'Management Feedback',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).primary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
        Form(
          key: _model.formKey1,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
            child: TextFormField(
              controller: _model.textController,
              focusNode: _model.textFieldFocusNode,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Enter your feedback',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                    ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                  ),
              maxLines: null,
              maxLength: 100,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              keyboardType: TextInputType.multiline,
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
            child: Text(
              'Status',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).primary,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Form(
                  key: _model.formKey2,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: FlutterFlowRadioButton(
                    options: ['In Progress', 'Resolved'].toList(),
                    onChanged: (val) => setState(() {}),
                    controller: _model.radioButtonValueController ??=
                        FormFieldController<String>(widget.fbdoc!.fbDoc.radio),
                    optionHeight: 32.0,
                    textStyle: FlutterFlowTheme.of(context).labelMedium,
                    textPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primary,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).secondaryText,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    if (_model.formKey1.currentState == null ||
                        !_model.formKey1.currentState!.validate()) {
                      return;
                    }
                    if (_model.formKey2.currentState == null ||
                        !_model.formKey2.currentState!.validate()) {
                      return;
                    }
                    if (_model.radioButtonValue == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Please Select Status',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                          ),
                          duration: const Duration(milliseconds: 2000),
                          backgroundColor: FlutterFlowTheme.of(context).primary,
                        ),
                      );
                      return;
                    }

                    await widget.fbRef!.update(createFeedbackRecordData(
                      fbDoc: updateFbStatusStruct(
                        FbStatusStruct(
                          mgmt: _model.textController.text,
                          radio: _model.radioButtonValue,
                        ),
                        clearUnsetFields: false,
                      ),
                    ));
                  },
                  text: 'Update',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(const SizedBox(width: 10.0)),
            ),
          ),
        ),
      ],
    );
  }
}
