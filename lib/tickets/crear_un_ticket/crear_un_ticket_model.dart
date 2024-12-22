import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'crear_un_ticket_widget.dart' show CrearUnTicketWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearUnTicketModel extends FlutterFlowModel<CrearUnTicketWidget> {
  ///  Local state fields for this page.

  dynamic data;

  bool succesEmail = false;

  bool errorEmail = false;

  dynamic evento;

  bool succesEvento = false;

  bool errorEvento = false;

  dynamic selectEvent;

  dynamic selectEstudiante;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (buscar estudiante por email)] action in TextField widget.
  ApiCallResponse? apiResultBuscarPersonaEmail;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (buscar evento por nombre evento)] action in TextField widget.
  ApiCallResponse? apiResultBuscarEventoNombre;
  // Stores action output result for [Backend Call - API (crear reserva admin)] action in Button widget.
  ApiCallResponse? apiResultCrearEvent;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
