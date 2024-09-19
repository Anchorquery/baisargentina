import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/components/nav_bar_with_middle_button/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'descuentos_widget.dart' show DescuentosWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DescuentosModel extends FlutterFlowModel<DescuentosWidget> {
  ///  Local state fields for this page.

  List<DiscountsStruct> data = [];
  void addToData(DiscountsStruct item) => data.add(item);
  void removeFromData(DiscountsStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, DiscountsStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index, Function(DiscountsStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = true;

  List<CategoryStruct> categorys = [];
  void addToCategorys(CategoryStruct item) => categorys.add(item);
  void removeFromCategorys(CategoryStruct item) => categorys.remove(item);
  void removeAtIndexFromCategorys(int index) => categorys.removeAt(index);
  void insertAtIndexInCategorys(int index, CategoryStruct item) =>
      categorys.insert(index, item);
  void updateCategorysAtIndex(int index, Function(CategoryStruct) updateFn) =>
      categorys[index] = updateFn(categorys[index]);

  List<PaginationStruct> pagination = [];
  void addToPagination(PaginationStruct item) => pagination.add(item);
  void removeFromPagination(PaginationStruct item) => pagination.remove(item);
  void removeAtIndexFromPagination(int index) => pagination.removeAt(index);
  void insertAtIndexInPagination(int index, PaginationStruct item) =>
      pagination.insert(index, item);
  void updatePaginationAtIndex(
          int index, Function(PaginationStruct) updateFn) =>
      pagination[index] = updateFn(pagination[index]);

  int? idCategory;

  String? searh;

  String? searhComerce;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Find descuentos)] action in Descuentos widget.
  ApiCallResponse? apiGetDescuentos;
  // Stores action output result for [Backend Call - API (Obtner categorias)] action in Descuentos widget.
  ApiCallResponse? apiResultdgg;
  // Stores action output result for [Backend Call - API (Find descuentos)] action in Text widget.
  ApiCallResponse? apiGetDiscoinsByNameCommerce;
  // State field(s) for buscador widget.
  FocusNode? buscadorFocusNode;
  TextEditingController? buscadorTextController;
  String? Function(BuildContext, String?)? buscadorTextControllerValidator;
  // Stores action output result for [Backend Call - API (Find descuentos)] action in buscador widget.
  ApiCallResponse? apiGetDiscoins;
  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel1;
  // Model for loader component.
  late LoaderModel loaderModel;
  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel2;

  @override
  void initState(BuildContext context) {
    navBarWithMiddleButtonModel1 =
        createModel(context, () => NavBarWithMiddleButtonModel());
    loaderModel = createModel(context, () => LoaderModel());
    navBarWithMiddleButtonModel2 =
        createModel(context, () => NavBarWithMiddleButtonModel());
  }

  @override
  void dispose() {
    buscadorFocusNode?.dispose();
    buscadorTextController?.dispose();

    navBarWithMiddleButtonModel1.dispose();
    loaderModel.dispose();
    navBarWithMiddleButtonModel2.dispose();
  }
}
