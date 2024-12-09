import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lista_categoria_descuentos_admin_model.dart';
export 'lista_categoria_descuentos_admin_model.dart';

class ListaCategoriaDescuentosAdminWidget extends StatefulWidget {
  const ListaCategoriaDescuentosAdminWidget({super.key});

  @override
  State<ListaCategoriaDescuentosAdminWidget> createState() =>
      _ListaCategoriaDescuentosAdminWidgetState();
}

class _ListaCategoriaDescuentosAdminWidgetState
    extends State<ListaCategoriaDescuentosAdminWidget>
    with TickerProviderStateMixin {
  late ListaCategoriaDescuentosAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaCategoriaDescuentosAdminModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResponseCategorias =
          await DiscoinGroup.obtenerCategoriasDescuentoCall.call(
        token: currentAuthenticationToken,
      );

      if ((_model.apiResponseCategorias?.succeeded ?? true)) {
        _model.data = (getJsonField(
          (_model.apiResponseCategorias?.jsonBody ?? ''),
          r'''$.data''',
          true,
        )!
                .toList()
                .map<CategoryStruct?>(CategoryStruct.maybeFromMap)
                .toList() as Iterable<CategoryStruct?>)
            .withoutNulls
            .toList()
            .cast<CategoryStruct>();
        _model.loading = !_model.loading;
        safeSetState(() {});
        return;
      } else {
        return;
      }
    });

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'dividerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('HomeAdmin');
                      },
                      child: Icon(
                        Icons.chevron_left_rounded,
                        color: Color(0xFFFF8F14),
                        size: 24.0,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Lista Categorías',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('CrearEditarCategoriaDescuento');
                        },
                        text: 'Crear una categoría',
                        icon: Icon(
                          Icons.add_circle,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Lato',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 10.0)),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.676,
                    decoration: BoxDecoration(),
                    child: RefreshIndicator(
                      color: FlutterFlowTheme.of(context).tertiary,
                      onRefresh: () async {
                        _model.apiResponseCategoriasRefresh = await DiscoinGroup
                            .obtenerCategoriasDescuentoCall
                            .call(
                          token: currentAuthenticationToken,
                        );

                        if ((_model.apiResponseCategoriasRefresh?.succeeded ??
                            true)) {
                          _model.data = (getJsonField(
                            (_model.apiResponseCategoriasRefresh?.jsonBody ??
                                ''),
                            r'''$.data''',
                            true,
                          )!
                                  .toList()
                                  .map<CategoryStruct?>(
                                      CategoryStruct.maybeFromMap)
                                  .toList() as Iterable<CategoryStruct?>)
                              .withoutNulls
                              .toList()
                              .cast<CategoryStruct>();
                          _model.loading = !_model.loading;
                          safeSetState(() {});
                          return;
                        } else {
                          return;
                        }
                      },
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final categories = _model.data.toList();

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: categories.length,
                                    itemBuilder: (context, categoriesIndex) {
                                      final categoriesItem =
                                          categories[categoriesIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 15.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/6815332.png',
                                                    width: 70.0,
                                                    height: 70.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'DetallesDeDescuento',
                                                          queryParameters: {
                                                            'id':
                                                                serializeParam(
                                                              categoriesItem.id,
                                                              ParamType.int,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Text(
                                                        categoriesItem.name,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lato',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      'CrearEditarCategoriaDescuento',
                                                      queryParameters: {
                                                        'id': serializeParam(
                                                          categoriesItem.id,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.edit_square,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.apiResultbwl =
                                                        await DiscoinGroup
                                                            .eliminarDescuentoCall
                                                            .call(
                                                      token:
                                                          currentAuthenticationToken,
                                                      id: categoriesItem.id,
                                                    );

                                                    if ((_model.apiResultbwl
                                                            ?.succeeded ??
                                                        true)) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Item eliminado'),
                                                            content: Text(
                                                                'El descuento fue eliminado'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      _model
                                                          .removeAtIndexFromData(
                                                              categoriesIndex);
                                                      safeSetState(() {});
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.delete_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'rowOnPageLoadAnimation']!),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ).animateOnPageLoad(animationsMap[
                                              'dividerOnPageLoadAnimation']!),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
