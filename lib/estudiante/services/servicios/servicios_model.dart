import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'servicios_widget.dart' show ServiciosWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiciosModel extends FlutterFlowModel<ServiciosWidget> {
  ///  Local state fields for this page.

  bool loading = false;

  List<ServicesCategoryStruct> services = [];
  void addToServices(ServicesCategoryStruct item) => services.add(item);
  void removeFromServices(ServicesCategoryStruct item) => services.remove(item);
  void removeAtIndexFromServices(int index) => services.removeAt(index);
  void insertAtIndexInServices(int index, ServicesCategoryStruct item) =>
      services.insert(index, item);
  void updateServicesAtIndex(
          int index, Function(ServicesCategoryStruct) updateFn) =>
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

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Find category)] action in servicios widget.
  ApiCallResponse? apiResponseCategoryService;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
