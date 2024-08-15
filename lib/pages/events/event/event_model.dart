import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_widget.dart' show EventWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EventModel extends FlutterFlowModel<EventWidget> {
  ///  Local state fields for this page.

  int? id;

  EventStruct? data;
  void updateDataStruct(Function(EventStruct) updateFn) {
    updateFn(data ??= EventStruct());
  }

  FileDStruct? portada;
  void updatePortadaStruct(Function(FileDStruct) updateFn) {
    updateFn(portada ??= FileDStruct());
  }

  List<FileDStruct> images = [];
  void addToImages(FileDStruct item) => images.add(item);
  void removeFromImages(FileDStruct item) => images.remove(item);
  void removeAtIndexFromImages(int index) => images.removeAt(index);
  void insertAtIndexInImages(int index, FileDStruct item) =>
      images.insert(index, item);
  void updateImagesAtIndex(int index, Function(FileDStruct) updateFn) =>
      images[index] = updateFn(images[index]);

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetEvent)] action in event widget.
  ApiCallResponse? apiResponseEventId;
  // State field(s) for Carouselhousign widget.
  CarouselController? carouselhousignController;
  int carouselhousignCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (CreateReserve)] action in reservar widget.
  ApiCallResponse? apiResponseCreateReserve;
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
