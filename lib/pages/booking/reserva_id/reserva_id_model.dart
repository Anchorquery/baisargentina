import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reserva_id_widget.dart' show ReservaIdWidget;
import 'package:flutter/material.dart';

class ReservaIdModel extends FlutterFlowModel<ReservaIdWidget> {
  ///  Local state fields for this page.

  BookingStruct? data;
  void updateDataStruct(Function(BookingStruct) updateFn) {
    updateFn(data ??= BookingStruct());
  }

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (findme One)] action in reservaId widget.
  ApiCallResponse? apiResponseFindMeBooking;
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
