import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_descuento_widget.dart' show CrearDescuentoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearDescuentoModel extends FlutterFlowModel<CrearDescuentoWidget> {
  ///  Local state fields for this page.

  List<OrganizadorStruct> comercios = [];
  void addToComercios(OrganizadorStruct item) => comercios.add(item);
  void removeFromComercios(OrganizadorStruct item) => comercios.remove(item);
  void removeAtIndexFromComercios(int index) => comercios.removeAt(index);
  void insertAtIndexInComercios(int index, OrganizadorStruct item) =>
      comercios.insert(index, item);
  void updateComerciosAtIndex(
          int index, Function(OrganizadorStruct) updateFn) =>
      comercios[index] = updateFn(comercios[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetOrganizer)] action in CrearDescuento widget.
  ApiCallResponse? apiResponseOrganizer;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for comercio widget.
  int? comercioValue;
  FormFieldController<int>? comercioValueController;
  // Stores action output result for [Backend Call - API (crated)] action in Button widget.
  ApiCallResponse? apiCrearDescuento;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
