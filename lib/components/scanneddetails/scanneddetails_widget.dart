import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'scanneddetails_model.dart';
export 'scanneddetails_model.dart';

class ScanneddetailsWidget extends StatefulWidget {
  const ScanneddetailsWidget({super.key});

  @override
  State<ScanneddetailsWidget> createState() => _ScanneddetailsWidgetState();
}

class _ScanneddetailsWidgetState extends State<ScanneddetailsWidget> {
  late ScanneddetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScanneddetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: StreamBuilder<List<ScannedOutputsRecord>>(
          stream: queryScannedOutputsRecord(
            singleRecord: true,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: SpinKitCircle(
                    color: FlutterFlowTheme.of(context).primary,
                    size: 50.0,
                  ),
                ),
              );
            }
            List<ScannedOutputsRecord> card8ScannedOutputsRecordList =
                snapshot.data!;
            // Return an empty Container when the item does not exist.
            if (snapshot.data!.isEmpty) {
              return Container();
            }
            final card8ScannedOutputsRecord =
                card8ScannedOutputsRecordList.isNotEmpty
                    ? card8ScannedOutputsRecordList.first
                    : null;
            return Container(
              width: double.infinity,
              height: 185.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 7.0,
                    color: Color(0x2F1D2429),
                    offset: Offset(
                      0.0,
                      3.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Already Scanned By',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    Divider(
                      height: 16.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    Text(
                      valueOrDefault<String>(
                        card8ScannedOutputsRecord?.authenticated,
                        'authenticated',
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Open Sans',
                            fontSize: 17.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'at',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              dateTimeFormat('d/M h:mm a',
                                  card8ScannedOutputsRecord?.timeStamp),
                              'time',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ].divide(const SizedBox(width: 5.0)),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 1.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Close',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
