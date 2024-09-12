import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'services_by_category_widget.dart' show ServicesByCategoryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServicesByCategoryModel
    extends FlutterFlowModel<ServicesByCategoryWidget> {
  ///  Local state fields for this page.

  bool loading = false;

  List<ServicesListStruct> services = [];
  void addToServices(ServicesListStruct item) => services.add(item);
  void removeFromServices(ServicesListStruct item) => services.remove(item);
  void removeAtIndexFromServices(int index) => services.removeAt(index);
  void insertAtIndexInServices(int index, ServicesListStruct item) =>
      services.insert(index, item);
  void updateServicesAtIndex(
          int index, Function(ServicesListStruct) updateFn) =>
      services[index] = updateFn(services[index]);

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

  ServicesCategoryStruct? categoryService;
  void updateCategoryServiceStruct(Function(ServicesCategoryStruct) updateFn) {
    updateFn(categoryService ??= ServicesCategoryStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Find)] action in servicesByCategory widget.
  ApiCallResponse? apiResponseService;
  // Stores action output result for [Backend Call - API (findOneCtegory)] action in servicesByCategory widget.
  ApiCallResponse? apiResultCategory;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
