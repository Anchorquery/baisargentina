import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'planes_widget.dart' show PlanesWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlanesModel extends FlutterFlowModel<PlanesWidget> {
  ///  Local state fields for this page.

  List<PlanStruct> planes = [];
  void addToPlanes(PlanStruct item) => planes.add(item);
  void removeFromPlanes(PlanStruct item) => planes.remove(item);
  void removeAtIndexFromPlanes(int index) => planes.removeAt(index);
  void insertAtIndexInPlanes(int index, PlanStruct item) =>
      planes.insert(index, item);
  void updatePlanesAtIndex(int index, Function(PlanStruct) updateFn) =>
      planes[index] = updateFn(planes[index]);

  PlanStruct? myPlan;
  void updateMyPlanStruct(Function(PlanStruct) updateFn) {
    updateFn(myPlan ??= PlanStruct());
  }

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Bucar planes)] action in planes widget.
  ApiCallResponse? apiBuscarPlanes;
  // Stores action output result for [Backend Call - API (mi plan)] action in planes widget.
  ApiCallResponse? apiMyPlan;
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
