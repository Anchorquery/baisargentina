import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/modal_informativo/modal_informativo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'eliminar_cuenta_widget.dart' show EliminarCuentaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EliminarCuentaModel extends FlutterFlowModel<EliminarCuentaWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (EliminarMiCuenta)] action in Text widget.
  ApiCallResponse? apiEliminarCuenta;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
