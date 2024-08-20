import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'create_widget.dart' show CreateWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class CreateModel extends FlutterFlowModel<CreateWidget> {
  ///  Local state fields for this page.

  List<CategoryStruct> categories = [];
  void addToCategories(CategoryStruct item) => categories.add(item);
  void removeFromCategories(CategoryStruct item) => categories.remove(item);
  void removeAtIndexFromCategories(int index) => categories.removeAt(index);
  void insertAtIndexInCategories(int index, CategoryStruct item) =>
      categories.insert(index, item);
  void updateCategoriesAtIndex(int index, Function(CategoryStruct) updateFn) =>
      categories[index] = updateFn(categories[index]);

  List<OrganizadorStruct> organizers = [];
  void addToOrganizers(OrganizadorStruct item) => organizers.add(item);
  void removeFromOrganizers(OrganizadorStruct item) => organizers.remove(item);
  void removeAtIndexFromOrganizers(int index) => organizers.removeAt(index);
  void insertAtIndexInOrganizers(int index, OrganizadorStruct item) =>
      organizers.insert(index, item);
  void updateOrganizersAtIndex(
          int index, Function(OrganizadorStruct) updateFn) =>
      organizers[index] = updateFn(organizers[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (GetOrganizer)] action in create widget.
  ApiCallResponse? apiResponseOrganizers;
  // Stores action output result for [Backend Call - API (Api Get Categories)] action in create widget.
  ApiCallResponse? apiResponseCategories;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese un título';
    }

    return null;
  }

  // State field(s) for placeUrl widget.
  FocusNode? placeUrlFocusNode;
  TextEditingController? placeUrlTextController;
  String? Function(BuildContext, String?)? placeUrlTextControllerValidator;
  String? _placeUrlTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingresá un lugar';
    }

    return null;
  }

  // State field(s) for organizador widget.
  int? organizadorValue;
  FormFieldController<int>? organizadorValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for detenerventas widget.
  String? detenerventasValue;
  FormFieldController<String>? detenerventasValueController;
  // State field(s) for descripcion-evento widget.
  FocusNode? descripcionEventoFocusNode;
  TextEditingController? descripcionEventoTextController;
  String? Function(BuildContext, String?)?
      descripcionEventoTextControllerValidator;
  String? _descripcionEventoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Falta la descripción';
    }

    return null;
  }

  // State field(s) for puedenAsistir widget.
  String? puedenAsistirValue;
  FormFieldController<String>? puedenAsistirValueController;
  // State field(s) for categoria-evento widget.
  String? categoriaEventoValue;
  FormFieldController<String>? categoriaEventoValueController;
  // State field(s) for limiteDePersonas widget.
  FocusNode? limiteDePersonasFocusNode;
  TextEditingController? limiteDePersonasTextController;
  String? Function(BuildContext, String?)?
      limiteDePersonasTextControllerValidator;
  String? _limiteDePersonasTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese un límite';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for precioDelTicket-evento widget.
  FocusNode? precioDelTicketEventoFocusNode;
  TextEditingController? precioDelTicketEventoTextController;
  String? Function(BuildContext, String?)?
      precioDelTicketEventoTextControllerValidator;
  String? _precioDelTicketEventoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Precio del ticket';
    }

    return null;
  }

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  // Stores action output result for [Backend Call - API (Api CreateEvents)] action in creandoevento widget.
  ApiCallResponse? apiResult3i2;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    placeUrlTextControllerValidator = _placeUrlTextControllerValidator;
    descripcionEventoTextControllerValidator =
        _descripcionEventoTextControllerValidator;
    limiteDePersonasTextControllerValidator =
        _limiteDePersonasTextControllerValidator;
    precioDelTicketEventoTextControllerValidator =
        _precioDelTicketEventoTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    placeUrlFocusNode?.dispose();
    placeUrlTextController?.dispose();

    descripcionEventoFocusNode?.dispose();
    descripcionEventoTextController?.dispose();

    limiteDePersonasFocusNode?.dispose();
    limiteDePersonasTextController?.dispose();

    precioDelTicketEventoFocusNode?.dispose();
    precioDelTicketEventoTextController?.dispose();
  }
}
