import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'create_housing_widget.dart' show CreateHousingWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateHousingModel extends FlutterFlowModel<CreateHousingWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for caption widget.
  FocusNode? captionFocusNode;
  TextEditingController? captionTextController;
  String? Function(BuildContext, String?)? captionTextControllerValidator;
  // State field(s) for linkToService widget.
  FocusNode? linkToServiceFocusNode;
  TextEditingController? linkToServiceTextController;
  String? Function(BuildContext, String?)? linkToServiceTextControllerValidator;
  // State field(s) for typeHousing widget.
  String? typeHousingValue;
  FormFieldController<String>? typeHousingValueController;
  // State field(s) for venta_alquiler widget.
  String? ventaAlquilerValue;
  FormFieldController<String>? ventaAlquilerValueController;
  // State field(s) for habitaciones widget.
  FocusNode? habitacionesFocusNode;
  TextEditingController? habitacionesTextController;
  String? Function(BuildContext, String?)? habitacionesTextControllerValidator;
  // State field(s) for limite_persona widget.
  FocusNode? limitePersonaFocusNode;
  TextEditingController? limitePersonaTextController;
  String? Function(BuildContext, String?)? limitePersonaTextControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for banos widget.
  FocusNode? banosFocusNode;
  TextEditingController? banosTextController;
  String? Function(BuildContext, String?)? banosTextControllerValidator;
  // State field(s) for area widget.
  FocusNode? areaFocusNode;
  TextEditingController? areaTextController;
  String? Function(BuildContext, String?)? areaTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  // Stores action output result for [Backend Call - API (creear housing)] action in Button widget.
  ApiCallResponse? apiResultvrg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    captionFocusNode?.dispose();
    captionTextController?.dispose();

    linkToServiceFocusNode?.dispose();
    linkToServiceTextController?.dispose();

    habitacionesFocusNode?.dispose();
    habitacionesTextController?.dispose();

    limitePersonaFocusNode?.dispose();
    limitePersonaTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    banosFocusNode?.dispose();
    banosTextController?.dispose();

    areaFocusNode?.dispose();
    areaTextController?.dispose();
  }
}
