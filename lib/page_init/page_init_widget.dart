import '/auth/custom_auth/auth_util.dart';
import '/components/loader/loader_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_init_model.dart';
export 'page_init_model.dart';

class PageInitWidget extends StatefulWidget {
  const PageInitWidget({super.key});

  @override
  State<PageInitWidget> createState() => _PageInitWidgetState();
}

class _PageInitWidgetState extends State<PageInitWidget> {
  late PageInitModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageInitModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.initSocketConnection(
        currentAuthenticationToken!,
      );
      if (currentUserData?.role == 1) {
        context.pushNamed('HomeAdmin');

        return;
      } else if (currentUserData?.role == 4) {
        context.pushNamed('HomeComercio');

        return;
      } else {
        context.pushNamed('events');

        return;
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.loaderModel,
              updateCallback: () => safeSetState(() {}),
              child: LoaderWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
