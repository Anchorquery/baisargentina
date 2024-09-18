import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'payment_form_widget.dart' show PaymentFormWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PaymentFormModel extends FlutterFlowModel<PaymentFormWidget> {
  ///  Local state fields for this component.

  bool loading = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for numerotarjeta widget.
  FocusNode? numerotarjetaFocusNode;
  TextEditingController? numerotarjetaTextController;
  late bool numerotarjetaVisibility;
  String? Function(BuildContext, String?)? numerotarjetaTextControllerValidator;
  String? _numerotarjetaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 13) {
      return 'Requires at least 13 characters.';
    }
    if (val.length > 18) {
      return 'Maximum 18 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for fechaend widget.
  FocusNode? fechaendFocusNode;
  TextEditingController? fechaendTextController;
  final fechaendMask = MaskTextInputFormatter(mask: '##/####');
  String? Function(BuildContext, String?)? fechaendTextControllerValidator;
  String? _fechaendTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }
    if (val.length > 7) {
      return 'Maximum 7 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for cvv widget.
  FocusNode? cvvFocusNode;
  TextEditingController? cvvTextController;
  String? Function(BuildContext, String?)? cvvTextControllerValidator;
  String? _cvvTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }
    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? validacionTarjeta;
  // Stores action output result for [Backend Call - API (Generar Suscripcion)] action in Button widget.
  ApiCallResponse? apiResultckn;

  @override
  void initState(BuildContext context) {
    numerotarjetaVisibility = false;
    numerotarjetaTextControllerValidator =
        _numerotarjetaTextControllerValidator;
    fechaendTextControllerValidator = _fechaendTextControllerValidator;
    cvvTextControllerValidator = _cvvTextControllerValidator;
  }

  @override
  void dispose() {
    numerotarjetaFocusNode?.dispose();
    numerotarjetaTextController?.dispose();

    fechaendFocusNode?.dispose();
    fechaendTextController?.dispose();

    cvvFocusNode?.dispose();
    cvvTextController?.dispose();
  }
}
