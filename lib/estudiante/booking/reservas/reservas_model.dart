import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/loader/loader_widget.dart';
import '/components/nav_bar_with_middle_button/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reservas_widget.dart' show ReservasWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class ReservasModel extends FlutterFlowModel<ReservasWidget> {
  ///  Local state fields for this page.

  List<BookingsStruct> items = [];
  void addToItems(BookingsStruct item) => items.add(item);
  void removeFromItems(BookingsStruct item) => items.remove(item);
  void removeAtIndexFromItems(int index) => items.removeAt(index);
  void insertAtIndexInItems(int index, BookingsStruct item) =>
      items.insert(index, item);
  void updateItemsAtIndex(int index, Function(BookingsStruct) updateFn) =>
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

  // Stores action output result for [Backend Call - API (findme)] action in reservas widget.
  ApiCallResponse? apiResponseEvents;
  // Stores action output result for [Backend Call - API (Api Get Categories)] action in reservas widget.
  ApiCallResponse? apiResponseCategories;
  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    navBarWithMiddleButtonModel =
        createModel(context, () => NavBarWithMiddleButtonModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    navBarWithMiddleButtonModel.dispose();
    loaderModel.dispose();
  }
}
