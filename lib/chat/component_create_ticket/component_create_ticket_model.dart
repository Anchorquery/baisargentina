import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'component_create_ticket_widget.dart' show ComponentCreateTicketWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComponentCreateTicketModel
    extends FlutterFlowModel<ComponentCreateTicketWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for asunto widget.
  FocusNode? asuntoFocusNode;
  TextEditingController? asuntoTextController;
  String? Function(BuildContext, String?)? asuntoTextControllerValidator;
  String? _asuntoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for texto widget.
  FocusNode? textoFocusNode;
  TextEditingController? textoTextController;
  String? Function(BuildContext, String?)? textoTextControllerValidator;
  String? _textoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? validacionForm;
  // Stores action output result for [Backend Call - API (buscar o crear chat)] action in Button widget.
  ApiCallResponse? apiGenerarChat;

  @override
  void initState(BuildContext context) {
    asuntoTextControllerValidator = _asuntoTextControllerValidator;
    textoTextControllerValidator = _textoTextControllerValidator;
  }

  @override
  void dispose() {
    asuntoFocusNode?.dispose();
    asuntoTextController?.dispose();

    textoFocusNode?.dispose();
    textoTextController?.dispose();
  }
}
