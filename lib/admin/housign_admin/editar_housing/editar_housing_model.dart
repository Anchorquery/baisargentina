import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import 'editar_housing_widget.dart' show EditarHousingWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarHousingModel extends FlutterFlowModel<EditarHousingWidget> {
  ///  Local state fields for this page.

  HousingStruct? data;
  void updateDataStruct(Function(HousingStruct) updateFn) {
    updateFn(data ??= HousingStruct());
  }

  bool? loading = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Obtener un housing)] action in EditarHousing widget.
  ApiCallResponse? apiGetHousingById;
  // State field(s) for tituloHousingfield widget.
  FocusNode? tituloHousingfieldFocusNode;
  TextEditingController? tituloHousingfieldTextController;
  String? Function(BuildContext, String?)?
      tituloHousingfieldTextControllerValidator;
  String? _tituloHousingfieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Titulo del servicio es obligatorio. ';
    }

    return null;
  }

  // State field(s) for descriptionEdit widget.
  FocusNode? descriptionEditFocusNode;
  TextEditingController? descriptionEditTextController;
  String? Function(BuildContext, String?)?
      descriptionEditTextControllerValidator;
  String? _descriptionEditTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La descripcion es obligatoria. ';
    }

    return null;
  }

  // State field(s) for captionFieldEdit widget.
  FocusNode? captionFieldEditFocusNode;
  TextEditingController? captionFieldEditTextController;
  String? Function(BuildContext, String?)?
      captionFieldEditTextControllerValidator;
  String? _captionFieldEditTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El caption es obligatorio.';
    }

    return null;
  }

  // State field(s) for linkToContactEdit widget.
  FocusNode? linkToContactEditFocusNode;
  TextEditingController? linkToContactEditTextController;
  String? Function(BuildContext, String?)?
      linkToContactEditTextControllerValidator;
  String? _linkToContactEditTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'EL link de contacto es obligatorio';
    }

    return null;
  }

  // State field(s) for typeHousingEdit widget.
  String? typeHousingEditValue;
  FormFieldController<String>? typeHousingEditValueController;
  // State field(s) for venta_alquilerEdit widget.
  String? ventaAlquilerEditValue;
  FormFieldController<String>? ventaAlquilerEditValueController;
  // State field(s) for habitaciones widget.
  FocusNode? habitacionesFocusNode;
  TextEditingController? habitacionesTextController;
  String? Function(BuildContext, String?)? habitacionesTextControllerValidator;
  String? _habitacionesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nçumero de habitaciones es obligatorio. ';
    }

    return null;
  }

  // State field(s) for limite_personaEdit widget.
  FocusNode? limitePersonaEditFocusNode;
  TextEditingController? limitePersonaEditTextController;
  String? Function(BuildContext, String?)?
      limitePersonaEditTextControllerValidator;
  String? _limitePersonaEditTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Límite de personas es obligatorio';
    }

    return null;
  }

  // State field(s) for priceHEdit widget.
  FocusNode? priceHEditFocusNode;
  TextEditingController? priceHEditTextController;
  String? Function(BuildContext, String?)? priceHEditTextControllerValidator;
  String? _priceHEditTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'EL precio es obligatorio. ';
    }

    return null;
  }

  // State field(s) for banosEdit widget.
  FocusNode? banosEditFocusNode;
  TextEditingController? banosEditTextController;
  String? Function(BuildContext, String?)? banosEditTextControllerValidator;
  // State field(s) for areaEdit widget.
  FocusNode? areaEditFocusNode;
  TextEditingController? areaEditTextController;
  String? Function(BuildContext, String?)? areaEditTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  // Stores action output result for [Backend Call - API (editar Housing)] action in ButtonSaveEdit widget.
  ApiCallResponse? apiResultvrg;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    tituloHousingfieldTextControllerValidator =
        _tituloHousingfieldTextControllerValidator;
    descriptionEditTextControllerValidator =
        _descriptionEditTextControllerValidator;
    captionFieldEditTextControllerValidator =
        _captionFieldEditTextControllerValidator;
    linkToContactEditTextControllerValidator =
        _linkToContactEditTextControllerValidator;
    habitacionesTextControllerValidator = _habitacionesTextControllerValidator;
    limitePersonaEditTextControllerValidator =
        _limitePersonaEditTextControllerValidator;
    priceHEditTextControllerValidator = _priceHEditTextControllerValidator;
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    tituloHousingfieldFocusNode?.dispose();
    tituloHousingfieldTextController?.dispose();

    descriptionEditFocusNode?.dispose();
    descriptionEditTextController?.dispose();

    captionFieldEditFocusNode?.dispose();
    captionFieldEditTextController?.dispose();

    linkToContactEditFocusNode?.dispose();
    linkToContactEditTextController?.dispose();

    habitacionesFocusNode?.dispose();
    habitacionesTextController?.dispose();

    limitePersonaEditFocusNode?.dispose();
    limitePersonaEditTextController?.dispose();

    priceHEditFocusNode?.dispose();
    priceHEditTextController?.dispose();

    banosEditFocusNode?.dispose();
    banosEditTextController?.dispose();

    areaEditFocusNode?.dispose();
    areaEditTextController?.dispose();

    loaderModel.dispose();
  }
}
