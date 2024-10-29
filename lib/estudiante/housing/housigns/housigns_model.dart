import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_with_middle_button/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'housigns_widget.dart' show HousignsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HousignsModel extends FlutterFlowModel<HousignsWidget> {
  ///  Local state fields for this page.

  List<HousingStruct> data = [];
  void addToData(HousingStruct item) => data.add(item);
  void removeFromData(HousingStruct item) => data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index, HousingStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index, Function(HousingStruct) updateFn) =>
      data[index] = updateFn(data[index]);

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Obtener todos los housing)] action in housigns widget.
  ApiCallResponse? apiResponseHopusing;
  // Stores action output result for [Backend Call - API (Api Get Categories)] action in housigns widget.
  ApiCallResponse? apiResponseCategories;
  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel;

  @override
  void initState(BuildContext context) {
    navBarWithMiddleButtonModel =
        createModel(context, () => NavBarWithMiddleButtonModel());
  }

  @override
  void dispose() {
    navBarWithMiddleButtonModel.dispose();
  }
}
