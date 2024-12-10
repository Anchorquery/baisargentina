import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
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
      _model.misDatos = await UserGroup.meCall.call(
        token: currentAuthenticationToken,
      );

      if ((_model.misDatos?.succeeded ?? true)) {
        await actions.initSocketConnection(
          currentAuthenticationToken!,
        );
        authManager.updateAuthUserData(
          authenticationToken: currentAuthenticationToken,
          authUid: getJsonField(
            (_model.misDatos?.jsonBody ?? ''),
            r'''$.id''',
          ).toString().toString(),
          userData: UserStruct(
            id: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.id''',
            ),
            name: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.name''',
            ).toString().toString(),
            lastName: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.lastName''',
            ).toString().toString(),
            email: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.email''',
            ).toString().toString(),
            birth: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.birth''',
            ).toString().toString(),
            university: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.university''',
            ).toString().toString(),
            country: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.country''',
            ).toString().toString(),
            role: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.role''',
            ),
            confirmed: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.confirmed''',
            ),
            inArgentina: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.inArgentina''',
            ),
            avatar: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.avatar''',
            ).toString(),
            phone: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.phone''',
            ).toString().toString(),
            qrImage: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.qrImage''',
            ).toString(),
            dni: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.dni''',
            ).toString(),
            pasaporte: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.pasaporte''',
            ).toString(),
            isInvited: getJsonField(
              (_model.misDatos?.jsonBody ?? ''),
              r'''$.isInvited''',
            ),
          ),
        );
        if (currentUserData?.role == 1) {
          context.pushNamedAuth('HomeAdmin', context.mounted);

          return;
        } else if (currentUserData?.role == 4) {
          if (FFAppState().user.isInvited == true) {
            context.goNamedAuth(
                'EditarPerfilComercioPrimerLoguin', context.mounted);

            return;
          } else {
            context.pushNamedAuth('HomeComercio', context.mounted);

            return;
          }
        } else {
          if (FFAppState().user.isInvited == true) {
            context.goNamedAuth(
                'EditarPerfilUserPrimerLoguin', context.mounted);

            return;
          } else {
            context.pushNamedAuth('ListarEventos', context.mounted);

            return;
          }
        }
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('Ha ocurido un error, será enviado al loguin.'),
              content: Text(getJsonField(
                (_model.misDatos?.jsonBody ?? ''),
                r'''$.error''',
              ).toString().toString()),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        GoRouter.of(context).prepareAuthEvent();
        await authManager.signOut();
        GoRouter.of(context).clearRedirectLocation();

        context.goNamedAuth('login', context.mounted);

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
    context.watch<FFAppState>();

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
