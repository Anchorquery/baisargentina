import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/eliminar_cuenta/eliminar_cuenta_widget.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'mi_perfil_comercio_widget.dart' show MiPerfilComercioWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class MiPerfilComercioModel extends FlutterFlowModel<MiPerfilComercioWidget> {
  ///  Local state fields for this page.

  dynamic data;

  bool loading = true;

  List<FileDStruct> images = [];
  void addToImages(FileDStruct item) => images.add(item);
  void removeFromImages(FileDStruct item) => images.remove(item);
  void removeAtIndexFromImages(int index) => images.removeAt(index);
  void insertAtIndexInImages(int index, FileDStruct item) =>
      images.insert(index, item);
  void updateImagesAtIndex(int index, Function(FileDStruct) updateFn) =>
      images[index] = updateFn(images[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (me )] action in MiPerfilComercio widget.
  ApiCallResponse? apiGetPerfilComercio;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    loaderModel.dispose();
  }
}
