import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'successful_scan_widget.dart' show SuccessfulScanWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SuccessfulScanModel extends FlutterFlowModel<SuccessfulScanWidget> {
  ///  Local state fields for this component.

  PlanStruct? plan;
  void updatePlanStruct(Function(PlanStruct) updateFn) {
    updateFn(plan ??= PlanStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (restarSuscripcionBebida)] action in Button widget.
  ApiCallResponse? apiResultf3u;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
