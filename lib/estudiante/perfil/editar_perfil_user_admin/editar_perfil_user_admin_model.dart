import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'editar_perfil_user_admin_widget.dart' show EditarPerfilUserAdminWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class EditarPerfilUserAdminModel
    extends FlutterFlowModel<EditarPerfilUserAdminWidget> {
  ///  Local state fields for this page.

  UserStruct? misdatos;
  void updateMisdatosStruct(Function(UserStruct) updateFn) {
    updateFn(misdatos ??= UserStruct());
  }

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (obtenerPerfilEstudiante)] action in EditarPerfilUserAdmin widget.
  ApiCallResponse? apiObtenerUser;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Single)] action in imagenDePerfil widget.
  ApiCallResponse? apiUpdateMe;
  // Stores action output result for [Backend Call - API (me )] action in imagenDePerfil widget.
  ApiCallResponse? apiMeResponse;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for apellido widget.
  FocusNode? apellidoFocusNode;
  TextEditingController? apellidoTextController;
  String? Function(BuildContext, String?)? apellidoTextControllerValidator;
  String? _apellidoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for nacionalidad widget.
  String? nacionalidadValue;
  FormFieldController<String>? nacionalidadValueController;
  // State field(s) for estasEnArgentina widget.
  bool? estasEnArgentinaValue;
  FormFieldController<bool>? estasEnArgentinaValueController;
  // State field(s) for phone_number widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for UniversidadField widget.
  FocusNode? universidadFieldFocusNode;
  TextEditingController? universidadFieldTextController;
  String? Function(BuildContext, String?)?
      universidadFieldTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Single)] action in uploadDni widget.
  ApiCallResponse? apiUpdateMeDni;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Single)] action in uploadPasaporte2 widget.
  ApiCallResponse? apiUpdateMe2;
  // Stores action output result for [Backend Call - API (UpdateUserAdmin)] action in crearcuenta widget.
  ApiCallResponse? authUpdateResponse;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    apellidoTextControllerValidator = _apellidoTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    apellidoFocusNode?.dispose();
    apellidoTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    universidadFieldFocusNode?.dispose();
    universidadFieldTextController?.dispose();

    loaderModel.dispose();
  }
}
