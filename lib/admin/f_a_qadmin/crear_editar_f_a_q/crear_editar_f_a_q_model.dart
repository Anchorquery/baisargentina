import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'crear_editar_f_a_q_widget.dart' show CrearEditarFAQWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearEditarFAQModel extends FlutterFlowModel<CrearEditarFAQWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in CrearEditarFAQ widget.
  List<FaqsRow>? faq;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  String? _descripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? validacionForm;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<FaqsRow>? editarFAQ;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? validacionForm2;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  FaqsRow? crearFAQ;

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    descripcionTextControllerValidator = _descripcionTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();
  }
}
