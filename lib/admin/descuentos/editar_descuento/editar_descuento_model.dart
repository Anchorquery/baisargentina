import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/modal_informativo/modal_informativo_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'editar_descuento_widget.dart' show EditarDescuentoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarDescuentoModel extends FlutterFlowModel<EditarDescuentoWidget> {
  ///  Local state fields for this page.

  DiscountsStruct? data;
  void updateDataStruct(Function(DiscountsStruct) updateFn) {
    updateFn(data ??= DiscountsStruct());
  }

  bool loading = true;

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

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (GetOrganizer)] action in EditarDescuento widget.
  ApiCallResponse? apiResponseOrganizer;
  // Stores action output result for [Backend Call - API (find one descuento)] action in EditarDescuento widget.
  ApiCallResponse? apiGetDescuento;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Asigna un nombre al descuento es requerido';
    }

    return null;
  }

  // State field(s) for comercioSelector widget.
  int? comercioSelectorValue;
  FormFieldController<int>? comercioSelectorValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  String? _descripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Describe el beneficio  que obtendrán los estudiantes es requerido';
    }

    return null;
  }

  // State field(s) for categoria widget.
  int? categoriaValue;
  FormFieldController<int>? categoriaValueController;
  // State field(s) for PuedenUsarlo widget.
  String? puedenUsarloValue;
  FormFieldController<String>? puedenUsarloValueController;
  // State field(s) for Porcentaje widget.
  FocusNode? porcentajeFocusNode;
  TextEditingController? porcentajeTextController;
  String? Function(BuildContext, String?)? porcentajeTextControllerValidator;
  String? _porcentajeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Porcentaje es requerido.';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? validacionForm;
  // Stores action output result for [Backend Call - API (EditarDescuento)] action in Button widget.
  ApiCallResponse? apiResultpzr;

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    descripcionTextControllerValidator = _descripcionTextControllerValidator;
    porcentajeTextControllerValidator = _porcentajeTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();

    porcentajeFocusNode?.dispose();
    porcentajeTextController?.dispose();
  }
}
