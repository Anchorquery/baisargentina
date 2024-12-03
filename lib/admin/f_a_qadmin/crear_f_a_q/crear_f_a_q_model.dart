import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'crear_f_a_q_widget.dart' show CrearFAQWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearFAQModel extends FlutterFlowModel<CrearFAQWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for textfieldTituloFAQ widget.
  FocusNode? textfieldTituloFAQFocusNode1;
  TextEditingController? textfieldTituloFAQTextController1;
  String? Function(BuildContext, String?)?
      textfieldTituloFAQTextController1Validator;
  // State field(s) for textfieldTituloFAQ widget.
  FocusNode? textfieldTituloFAQFocusNode2;
  TextEditingController? textfieldTituloFAQTextController2;
  String? Function(BuildContext, String?)?
      textfieldTituloFAQTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textfieldTituloFAQFocusNode1?.dispose();
    textfieldTituloFAQTextController1?.dispose();

    textfieldTituloFAQFocusNode2?.dispose();
    textfieldTituloFAQTextController2?.dispose();
  }
}
