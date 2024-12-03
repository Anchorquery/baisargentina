import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'editar_perfil_comercio_admin_widget.dart'
    show EditarPerfilComercioAdminWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarPerfilComercioAdminModel
    extends FlutterFlowModel<EditarPerfilComercioAdminWidget> {
  ///  Local state fields for this page.

  bool? loading = true;

  CommercePerfilStruct? perfil;
  void updatePerfilStruct(Function(CommercePerfilStruct) updateFn) {
    updateFn(perfil ??= CommercePerfilStruct());
  }

  List<CommerceCategoriesRow> categorias = [];
  void addToCategorias(CommerceCategoriesRow item) => categorias.add(item);
  void removeFromCategorias(CommerceCategoriesRow item) =>
      categorias.remove(item);
  void removeAtIndexFromCategorias(int index) => categorias.removeAt(index);
  void insertAtIndexInCategorias(int index, CommerceCategoriesRow item) =>
      categorias.insert(index, item);
  void updateCategoriasAtIndex(
          int index, Function(CommerceCategoriesRow) updateFn) =>
      categorias[index] = updateFn(categorias[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (obtenerPerfilComercio)] action in editarPerfilComercioAdmin widget.
  ApiCallResponse? apiResulteme;
  // Stores action output result for [Backend Call - Query Rows] action in editarPerfilComercioAdmin widget.
  List<CommerceCategoriesRow>? categoriasComercios;
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
  // State field(s) for category widget.
  int? categoryValue;
  FormFieldController<int>? categoryValueController;
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
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 0;

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  // Stores action output result for [Backend Call - API (UpdateMetaComercioAdmin)] action in Button widget.
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
