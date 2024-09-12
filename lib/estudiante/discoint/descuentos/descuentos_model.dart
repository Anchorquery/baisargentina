import '/components/nav_bar_with_middle_button/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'descuentos_widget.dart' show DescuentosWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DescuentosModel extends FlutterFlowModel<DescuentosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for buscador widget.
  FocusNode? buscadorFocusNode;
  TextEditingController? buscadorTextController;
  String? Function(BuildContext, String?)? buscadorTextControllerValidator;
  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel;

  @override
  void initState(BuildContext context) {
    navBarWithMiddleButtonModel =
        createModel(context, () => NavBarWithMiddleButtonModel());
  }

  @override
  void dispose() {
    buscadorFocusNode?.dispose();
    buscadorTextController?.dispose();

    navBarWithMiddleButtonModel.dispose();
  }
}
