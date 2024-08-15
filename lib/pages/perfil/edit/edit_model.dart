import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_widget.dart' show EditWidget;
import 'package:flutter/material.dart';

class EditModel extends FlutterFlowModel<EditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for display_name widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameTextController;
  String? Function(BuildContext, String?)? displayNameTextControllerValidator;
  // State field(s) for apellido widget.
  FocusNode? apellidoFocusNode;
  TextEditingController? apellidoTextController;
  String? Function(BuildContext, String?)? apellidoTextControllerValidator;
  // State field(s) for nacionalidad widget.
  FocusNode? nacionalidadFocusNode;
  TextEditingController? nacionalidadTextController;
  String? Function(BuildContext, String?)? nacionalidadTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for fechanacimiento widget.
  FocusNode? fechanacimientoFocusNode;
  TextEditingController? fechanacimientoTextController;
  String? Function(BuildContext, String?)?
      fechanacimientoTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // State field(s) for estasEnArgentina widget.
  String? estasEnArgentinaValue;
  FormFieldController<String>? estasEnArgentinaValueController;
  // State field(s) for phone_number widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for UniversidadField widget.
  FocusNode? universidadFieldFocusNode;
  TextEditingController? universidadFieldTextController;
  String? Function(BuildContext, String?)?
      universidadFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Api Register)] action in crearcuenta widget.
  ApiCallResponse? authRegisterResponse;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    displayNameFocusNode?.dispose();
    displayNameTextController?.dispose();

    apellidoFocusNode?.dispose();
    apellidoTextController?.dispose();

    nacionalidadFocusNode?.dispose();
    nacionalidadTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    fechanacimientoFocusNode?.dispose();
    fechanacimientoTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    universidadFieldFocusNode?.dispose();
    universidadFieldTextController?.dispose();
  }
}
