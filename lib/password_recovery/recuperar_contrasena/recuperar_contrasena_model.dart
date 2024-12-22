import '/backend/api_requests/api_calls.dart';
import '/components/ingresar_o_t_p/ingresar_o_t_p_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'recuperar_contrasena_widget.dart' show RecuperarContrasenaWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecuperarContrasenaModel
    extends FlutterFlowModel<RecuperarContrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailText widget.
  FocusNode? emailTextFocusNode;
  TextEditingController? emailTextTextController;
  String? Function(BuildContext, String?)? emailTextTextControllerValidator;
  String? _emailTextTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'El email debe tener más de 5 caracteres. ';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (SolicitarOTP)] action in Button widget.
  ApiCallResponse? apiResultvu2;

  @override
  void initState(BuildContext context) {
    emailTextTextControllerValidator = _emailTextTextControllerValidator;
  }

  @override
  void dispose() {
    emailTextFocusNode?.dispose();
    emailTextTextController?.dispose();
  }
}
