import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'editar_servicio_widget.dart' show EditarServicioWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarServicioModel extends FlutterFlowModel<EditarServicioWidget> {
  ///  Local state fields for this page.

  List<ServicesCategoryStruct> categorias = [];
  void addToCategorias(ServicesCategoryStruct item) => categorias.add(item);
  void removeFromCategorias(ServicesCategoryStruct item) =>
      categorias.remove(item);
  void removeAtIndexFromCategorias(int index) => categorias.removeAt(index);
  void insertAtIndexInCategorias(int index, ServicesCategoryStruct item) =>
      categorias.insert(index, item);
  void updateCategoriasAtIndex(
          int index, Function(ServicesCategoryStruct) updateFn) =>
      categorias[index] = updateFn(categorias[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Find category)] action in editarServicio widget.
  ApiCallResponse? apiResultGetCategories;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for caption widget.
  FocusNode? captionFocusNode;
  TextEditingController? captionTextController;
  String? Function(BuildContext, String?)? captionTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for linkToService widget.
  FocusNode? linkToServiceFocusNode;
  TextEditingController? linkToServiceTextController;
  String? Function(BuildContext, String?)? linkToServiceTextControllerValidator;
  // State field(s) for category widget.
  int? categoryValue;
  FormFieldController<int>? categoryValueController;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  // Stores action output result for [Backend Call - API (Created)] action in Button widget.
  ApiCallResponse? apiResultvrg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    captionFocusNode?.dispose();
    captionTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    linkToServiceFocusNode?.dispose();
    linkToServiceTextController?.dispose();
  }
}
