import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'listar_f_a_q_admin_widget.dart' show ListarFAQAdminWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListarFAQAdminModel extends FlutterFlowModel<ListarFAQAdminWidget> {
  ///  Local state fields for this page.

  List<ServicesCategoryStruct> data = [];
  void addToData(ServicesCategoryStruct item) => data.add(item);
  void removeFromData(ServicesCategoryStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, ServicesCategoryStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(
          int index, Function(ServicesCategoryStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Find category)] action in Column widget.
  ApiCallResponse? apiResponseRefreshServicios;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Icon widget.
  List<FaqsRow>? rowDelete;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
