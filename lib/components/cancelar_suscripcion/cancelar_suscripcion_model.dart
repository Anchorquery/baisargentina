import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/modal_informativo/modal_informativo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'cancelar_suscripcion_widget.dart' show CancelarSuscripcionWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CancelarSuscripcionModel
    extends FlutterFlowModel<CancelarSuscripcionWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (CancelarSuscripcion)] action in Text widget.
  ApiCallResponse? apiResultCancelar;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
