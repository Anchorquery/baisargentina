import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/modal_informativo/modal_informativo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'nota_fin_chat_widget.dart' show NotaFinChatWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotaFinChatModel extends FlutterFlowModel<NotaFinChatWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for notafinal widget.
  FocusNode? notafinalFocusNode;
  TextEditingController? notafinalTextController;
  String? Function(BuildContext, String?)? notafinalTextControllerValidator;
  String? _notafinalTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (MarcarChatComoCerrado)] action in Button widget.
  ApiCallResponse? marcarChatFinalizado;

  @override
  void initState(BuildContext context) {
    notafinalTextControllerValidator = _notafinalTextControllerValidator;
  }

  @override
  void dispose() {
    notafinalFocusNode?.dispose();
    notafinalTextController?.dispose();
  }
}
