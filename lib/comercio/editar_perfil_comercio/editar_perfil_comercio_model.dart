import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'editar_perfil_comercio_widget.dart' show EditarPerfilComercioWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarPerfilComercioModel
    extends FlutterFlowModel<EditarPerfilComercioWidget> {
  ///  Local state fields for this page.

  bool? loading = true;

  CommercePerfilStruct? perfil;
  void updatePerfilStruct(Function(CommercePerfilStruct) updateFn) {
    updateFn(perfil ??= CommercePerfilStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (me )] action in editarPerfilComercio widget.
  ApiCallResponse? apiResulteme;
  // Model for loader component.
  late LoaderModel loaderModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextFieldNombreComercio widget.
  FocusNode? textFieldNombreComercioFocusNode;
  TextEditingController? textFieldNombreComercioTextController;
  String? Function(BuildContext, String?)?
      textFieldNombreComercioTextControllerValidator;
  // State field(s) for SwitchLunes widget.
  bool? switchLunesValue;
  // State field(s) for SwitchMartes widget.
  bool? switchMartesValue;
  // State field(s) for SwitchMiercoles widget.
  bool? switchMiercolesValue;
  // State field(s) for SwitchJueves widget.
  bool? switchJuevesValue;
  // State field(s) for SwitchViernes widget.
  bool? switchViernesValue;
  // State field(s) for SwitchSabado widget.
  bool? switchSabadoValue;
  // State field(s) for SwitchDomingo widget.
  bool? switchDomingoValue;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextFieldUbicacion widget.
  FocusNode? textFieldUbicacionFocusNode;
  TextEditingController? textFieldUbicacionTextController;
  String? Function(BuildContext, String?)?
      textFieldUbicacionTextControllerValidator;
  // State field(s) for Carousel widget.
  CarouselController? carouselController1;
  int carouselCurrentIndex1 = 0;

  // State field(s) for Carousel widget.
  CarouselController? carouselController2;
  int carouselCurrentIndex2 = 0;

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  // Stores action output result for [Backend Call - API (updatemetadata comercio)] action in Button widget.
  ApiCallResponse? apiResultbmb;

  @override
  void initState(BuildContext context) {
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    loaderModel.dispose();
    textFieldNombreComercioFocusNode?.dispose();
    textFieldNombreComercioTextController?.dispose();

    textFieldUbicacionFocusNode?.dispose();
    textFieldUbicacionTextController?.dispose();
  }
}
