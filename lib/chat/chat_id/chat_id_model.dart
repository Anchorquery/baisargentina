import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/chat/chat_thread/chat_thread_widget.dart';
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
