import '/backend/api_requests/api_calls.dart';
import '/components/modal_informativo/modal_informativo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'establecer_contrasena_widget.dart' show EstablecerContrasenaWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EstablecerContrasenaModel
    extends FlutterFlowModel<EstablecerContrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaTextController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaTextControllerValidator;
  String? _contrasenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 8) {
      return 'La contraseña debe tener mínimo 12 caracteres';
    }
    if (val.length > 18) {
      return 'Maximum 18 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (RestablecerContrasena)] action in Button widget.
  ApiCallResponse? apiRestablecerContrasena;

  @override
  void initState(BuildContext context) {
    contrasenaVisibility = false;
    contrasenaTextControllerValidator = _contrasenaTextControllerValidator;
  }

  @override
  void dispose() {
    contrasenaFocusNode?.dispose();
    contrasenaTextController?.dispose();
  }
}
