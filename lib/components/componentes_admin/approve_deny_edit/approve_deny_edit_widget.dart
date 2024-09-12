import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'approve_deny_edit_model.dart';
export 'approve_deny_edit_model.dart';

class ApproveDenyEditWidget extends StatefulWidget {
  const ApproveDenyEditWidget({super.key});

  @override
  State<ApproveDenyEditWidget> createState() => _ApproveDenyEditWidgetState();
}

class _ApproveDenyEditWidgetState extends State<ApproveDenyEditWidget> {
  late ApproveDenyEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApproveDenyEditModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 50.0,
              buttonSize: 35.0,
              fillColor: FlutterFlowTheme.of(context).success,
              icon: Icon(
                Icons.check_circle_outline_sharp,
                color: Colors.white,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 50.0,
              buttonSize: 35.0,
              fillColor: FlutterFlowTheme.of(context).error,
              icon: Icon(
                Icons.cancel_outlined,
                color: Colors.white,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 50.0,
              buttonSize: 35.0,
              fillColor: Colors.black,
              icon: FaIcon(
                FontAwesomeIcons.edit,
                color: Colors.white,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ],
      ),
    );
  }
}
