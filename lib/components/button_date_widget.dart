import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'button_date_model.dart';
export 'button_date_model.dart';

class ButtonDateWidget extends StatefulWidget {
  /// Boton para seleccionar fechas
  const ButtonDateWidget({
    super.key,
    this.parameter1,
    required this.parameter2,
  });

  final DateTime? parameter1;
  final String? parameter2;

  @override
  State<ButtonDateWidget> createState() => _ButtonDateWidgetState();
}

class _ButtonDateWidgetState extends State<ButtonDateWidget> {
  late ButtonDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonDateModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        final datePickedDate = await showDatePicker(
          context: context,
          initialDate: getCurrentTimestamp,
          firstDate: getCurrentTimestamp,
          lastDate: DateTime(2050),
          builder: (context, child) {
            return wrapInMaterialDatePickerTheme(
              context,
              child!,
              headerBackgroundColor: FlutterFlowTheme.of(context).primary,
              headerForegroundColor: FlutterFlowTheme.of(context).info,
              headerTextStyle:
                  FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Lato',
                        fontSize: 32.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
              pickerBackgroundColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
              pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
              selectedDateTimeBackgroundColor:
                  FlutterFlowTheme.of(context).primary,
              selectedDateTimeForegroundColor:
                  FlutterFlowTheme.of(context).info,
              actionButtonForegroundColor:
                  FlutterFlowTheme.of(context).primaryText,
              iconSize: 24.0,
            );
          },
        );

        if (datePickedDate != null) {
          safeSetState(() {
            _model.datePicked = DateTime(
              datePickedDate.year,
              datePickedDate.month,
              datePickedDate.day,
            );
          });
        }
      },
      text: _model.datePicked != null
          ? dateTimeFormat(
              "d/M/y",
              _model.datePicked,
              locale: FFLocalizations.of(context).languageCode,
            )
          : 'Fecha',
      icon: const Icon(
        Icons.calendar_today,
        size: 15.0,
      ),
      options: FFButtonOptions(
        width: 160.0,
        height: 40.0,
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Lato',
              color: Colors.white,
              letterSpacing: 0.0,
            ),
        elevation: 3.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(24.0),
      ),
    );
  }
}
