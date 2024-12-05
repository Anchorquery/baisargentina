import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'perfil_estudiante_by_id_widget.dart' show PerfilEstudianteByIdWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilEstudianteByIdModel
    extends FlutterFlowModel<PerfilEstudianteByIdWidget> {
  ///  Local state fields for this page.

  dynamic data;

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (obtenerPerfilEstudiante)] action in PerfilEstudianteById widget.
  ApiCallResponse? apiGerPerfilEstudiante;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (AdminUdatepUserStra)] action in Switch widget.
  ApiCallResponse? apiResulte77;
  // Stores action output result for [Backend Call - API (AdminUdatepUserStra)] action in Switch widget.
  ApiCallResponse? apiResulte77Copy;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    loaderModel.dispose();
  }
}
