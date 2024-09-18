import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_admin_widget.dart' show HomeAdminWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeAdminModel extends FlutterFlowModel<HomeAdminWidget> {
  ///  Local state fields for this page.

  int? cantidadEstudiantes;

  String? ultimoRegistro;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (get user student)] action in HomeAdmin widget.
  ApiCallResponse? apiResulAdminHome;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
