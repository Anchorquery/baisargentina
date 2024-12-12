import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/chat/chat_thread/chat_thread_widget.dart';
import '/components/nota_fin_chat/nota_fin_chat_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'chat_id_widget.dart' show ChatIdWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatIdModel extends FlutterFlowModel<ChatIdWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> imagenes = [];
  void addToImagenes(FFUploadedFile item) => imagenes.add(item);
  void removeFromImagenes(FFUploadedFile item) => imagenes.remove(item);
  void removeAtIndexFromImagenes(int index) => imagenes.removeAt(index);
  void insertAtIndexInImagenes(int index, FFUploadedFile item) =>
      imagenes.insert(index, item);
  void updateImagenesAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      imagenes[index] = updateFn(imagenes[index]);

  bool loadingImage = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Models for chatThread dynamic component.
  late FlutterFlowDynamicModels<ChatThreadModel> chatThreadModels;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - createRandomUuid] action in IconButton widget.
  String? messageUuid;
  // Stores action output result for [Backend Call - API (crear mensaje)] action in IconButton widget.
  ApiCallResponse? apiEnviarMensaje;
  // Stores action output result for [Custom Action - createRandomUuid] action in IconButton widget.
  String? messageUuid2;
  // Stores action output result for [Backend Call - API (crear mensaje)] action in IconButton widget.
  ApiCallResponse? apiEnviarMensajeImagesSinTexto;

  @override
  void initState(BuildContext context) {
    chatThreadModels = FlutterFlowDynamicModels(() => ChatThreadModel());
  }

  @override
  void dispose() {
    chatThreadModels.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
