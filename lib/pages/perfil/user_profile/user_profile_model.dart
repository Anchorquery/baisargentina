import '/backend/api_requests/api_calls.dart';
import '/components/loader/loader_widget.dart';
import '/components/nav_bar_with_middle_button/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  Local state fields for this page.

  bool loading = true;

  int? idUser;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (me)] action in userProfile widget.
  ApiCallResponse? apiResponseMe;
  // Model for loader component.
  late LoaderModel loaderModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Single)] action in imagenDePerfil widget.
  ApiCallResponse? apiResult64y;
  // Stores action output result for [Backend Call - API (me)] action in imagenDePerfil widget.
  ApiCallResponse? apiMeResponse;
  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel;

  @override
  void initState(BuildContext context) {
    loaderModel = createModel(context, () => LoaderModel());
    navBarWithMiddleButtonModel =
        createModel(context, () => NavBarWithMiddleButtonModel());
  }

  @override
  void dispose() {
    loaderModel.dispose();
    navBarWithMiddleButtonModel.dispose();
  }
}
