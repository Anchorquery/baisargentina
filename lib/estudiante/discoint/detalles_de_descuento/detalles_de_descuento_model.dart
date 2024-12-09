import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'detalles_de_descuento_widget.dart' show DetallesDeDescuentoWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetallesDeDescuentoModel
    extends FlutterFlowModel<DetallesDeDescuentoWidget> {
  ///  Local state fields for this page.

  DiscountsStruct? data;
  void updateDataStruct(Function(DiscountsStruct) updateFn) {
    updateFn(data ??= DiscountsStruct());
  }

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (find one descuento)] action in DetallesDeDescuento widget.
  ApiCallResponse? apiGetDescuento;
  // Model for emptyList component.
  late EmptyListModel emptyListModel;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    emptyListModel = createModel(context, () => EmptyListModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    emptyListModel.dispose();
    loaderModel.dispose();
  }
}
