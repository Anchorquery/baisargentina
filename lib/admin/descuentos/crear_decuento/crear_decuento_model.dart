import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_decuento_widget.dart' show CrearDecuentoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CrearDecuentoModel extends FlutterFlowModel<CrearDecuentoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for comercio widget.
  String? comercioValue;
  FormFieldController<String>? comercioValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  // State field(s) for uso widget.
  String? usoValue;
  FormFieldController<String>? usoValueController;
  // State field(s) for porcentaje widget.
  FocusNode? porcentajeFocusNode;
  TextEditingController? porcentajeTextController;
  final porcentajeMask = MaskTextInputFormatter(mask: '# %');
  String? Function(BuildContext, String?)? porcentajeTextControllerValidator;
  // Stores action output result for [Backend Call - API (crated)] action in Button widget.
  ApiCallResponse? apiCrarDescuento;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();

    porcentajeFocusNode?.dispose();
    porcentajeTextController?.dispose();
  }
}
