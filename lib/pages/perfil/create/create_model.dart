import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_widget.dart' show CreateWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
  FocusNode? organizadorFocusNode;
  TextEditingController? organizadorTextController;
  String? Function(BuildContext, String?)? organizadorTextControllerValidator;
  String? _organizadorTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'nombre del oganizador';
    }

    return null;
  }

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
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  // Stores action output result for [Backend Call - API (Api CreateEvents)] action in creandoevento widget.
  ApiCallResponse? apiResult3i2;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    placeUrlTextControllerValidator = _placeUrlTextControllerValidator;
    organizadorTextControllerValidator = _organizadorTextControllerValidator;
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

    organizadorFocusNode?.dispose();
    organizadorTextController?.dispose();

    descripcionEventoFocusNode?.dispose();
    descripcionEventoTextController?.dispose();

    limiteDePersonasFocusNode?.dispose();
    limiteDePersonasTextController?.dispose();

    precioDelTicketEventoFocusNode?.dispose();
    precioDelTicketEventoTextController?.dispose();
  }
}
