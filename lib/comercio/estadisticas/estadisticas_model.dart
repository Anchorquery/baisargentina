import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'estadisticas_widget.dart' show EstadisticasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EstadisticasModel extends FlutterFlowModel<EstadisticasWidget> {
  ///  Local state fields for this page.

  int? totalReservas = 0;

  int? totalEventos = 0;

  int? totalVisitasPerfil = 0;

  bool? loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (toas las estadisticas)] action in Estadisticas widget.
  ApiCallResponse? apiResultwg0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
