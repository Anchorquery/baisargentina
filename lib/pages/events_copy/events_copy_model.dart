import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/loader/loader_widget.dart';
import '/components/validar_reserva/validar_reserva_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'events_copy_widget.dart' show EventsCopyWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class EventsCopyModel extends FlutterFlowModel<EventsCopyWidget> {
  ///  Local state fields for this page.

  List<EventsStruct> items = [];
  void addToItems(EventsStruct item) => items.add(item);
  void removeFromItems(EventsStruct item) => items.remove(item);
  void removeAtIndexFromItems(int index) => items.removeAt(index);
  void insertAtIndexInItems(int index, EventsStruct item) =>
      items.insert(index, item);
  void updateItemsAtIndex(int index, Function(EventsStruct) updateFn) =>
      items[index] = updateFn(items[index]);

  List<CategoryStruct> categories = [];
  void addToCategories(CategoryStruct item) => categories.add(item);
  void removeFromCategories(CategoryStruct item) => categories.remove(item);
  void removeAtIndexFromCategories(int index) => categories.removeAt(index);
  void insertAtIndexInCategories(int index, CategoryStruct item) =>
      categories.insert(index, item);
  void updateCategoriesAtIndex(int index, Function(CategoryStruct) updateFn) =>
      categories[index] = updateFn(categories[index]);

  bool loading = true;

  PaginationStruct? pagination;
  void updatePaginationStruct(Function(PaginationStruct) updateFn) {
    updateFn(pagination ??= PaginationStruct());
  }

  int? cateorySelected = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetEvents)] action in eventsCopy widget.
  ApiCallResponse? apiResponseEvents;
  // Stores action output result for [Backend Call - API (Api Get Categories)] action in eventsCopy widget.
  ApiCallResponse? apiResponseCategories;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (GetEvents)] action in Text widget.
  ApiCallResponse? apiResponseGetEventsbyCategory;
  // Stores action output result for [Backend Call - API (GetEvents)] action in Text widget.
  ApiCallResponse? apiResponseGetEventsbyCategoryCopy;
  // Model for loader component.
  late LoaderModel loaderModel;
  // Model for validarReserva component.
  late ValidarReservaModel validarReservaModel;

  @override
  void initState(BuildContext context) {
    loaderModel = createModel(context, () => LoaderModel());
    validarReservaModel = createModel(context, () => ValidarReservaModel());
  }

  @override
  void dispose() {
    loaderModel.dispose();
    validarReservaModel.dispose();
  }
}
