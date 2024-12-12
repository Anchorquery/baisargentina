import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'listar_categorias_servicios_admin_model.dart';
export 'listar_categorias_servicios_admin_model.dart';

class ListarCategoriasServiciosAdminWidget extends StatefulWidget {
  const ListarCategoriasServiciosAdminWidget({super.key});

  @override
  State<ListarCategoriasServiciosAdminWidget> createState() =>
      _ListarCategoriasServiciosAdminWidgetState();
}

class _ListarCategoriasServiciosAdminWidgetState
    extends State<ListarCategoriasServiciosAdminWidget>
    with TickerProviderStateMixin {
  late ListarCategoriasServiciosAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListarCategoriasServiciosAdminModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResponseServiciosCategorias =
          await ServicesGroup.findCategoryCall.call(
        token: currentAuthenticationToken,
      );

      if ((_model.apiResponseServiciosCategorias?.succeeded ?? true)) {
        _model.data = (getJsonField(
          (_model.apiResponseServiciosCategorias?.jsonBody ?? ''),
          r'''$.data''',
          true,
        )!
                .toList()
                .map<ServicesCategoryStruct?>(
                    ServicesCategoryStruct.maybeFromMap)
                .toList() as Iterable<ServicesCategoryStruct?>)
            .withoutNulls
            .toList()
            .cast<ServicesCategoryStruct>();
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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 0.0),
            child: Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.max,
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
                        if (currentUserData?.role == 1) {
                          context.pushNamed('HomeAdmin');

                          return;
                        } else {
                          context.safePop();
                          return;
                        }
                      },
                      child: Icon(
                        Icons.chevron_left_rounded,
                        color: Color(0xFFFF8F14),
                        size: 24.0,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Categorías de servicios',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(width: 20.0)),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('CrearCategoriaServicio');
                    },
                    text: 'Crear categoria',
                    icon: Icon(
                      Icons.add_circle,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.sizeOf(context).height * 0.7,
                      ),
                      decoration: BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final categorias = _model.data.toList();
                          if (categorias.isEmpty) {
                            return Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 100.0,
                              child: EmptyListWidget(
                                message: 'No hay categorias creadas',
                                error: 'Sin categorias',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textColor:
                                    FlutterFlowTheme.of(context).primaryText,
                              ),
                            );
                          }

                          return RefreshIndicator(
                            color: FlutterFlowTheme.of(context).tertiary,
                            onRefresh: () async {
                              _model.apiResponseRefreshServicios =
                                  await ServicesGroup.findCategoryCall.call(
                                token: currentAuthenticationToken,
                              );

                              if ((_model
                                      .apiResponseRefreshServicios?.succeeded ??
                                  true)) {
                                _model.data = (getJsonField(
                                  (_model.apiResponseRefreshServicios
                                          ?.jsonBody ??
                                      ''),
                                  r'''$.data''',
                                  true,
                                )!
                                            .toList()
                                            .map<ServicesCategoryStruct?>(
                                                ServicesCategoryStruct.maybeFromMap)
                                            .toList()
                                        as Iterable<ServicesCategoryStruct?>)
                                    .withoutNulls
                                    .toList()
                                    .cast<ServicesCategoryStruct>();
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
                                children: List.generate(categorias.length,
                                    (categoriasIndex) {
                                  final categoriasItem =
                                      categorias[categoriasIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 15.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: OctoImage(
                                            placeholderBuilder: (_) =>
                                                SizedBox.expand(
                                              child: Image(
                                                image: BlurHashImage(
                                                    categoriasItem
                                                        .image.blurhash),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            image: NetworkImage(
                                              categoriasItem.image.url,
                                            ),
                                            width: 70.0,
                                            height: 70.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              categoriasItem.name,
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'EditarCategoriaServicio',
                                                  queryParameters: {
                                                    'id': serializeParam(
                                                      categoriasItem.id,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Icon(
                                                Icons.edit_square,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                var confirmDialogResponse =
                                                    await showDialog<bool>(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Eliminar Servicio'),
                                                              content: Text(
                                                                  '¿Está seguro que desea eliminar este item?'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                  child: Text(
                                                                      'Cancelar'),
                                                                ),
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                  child: Text(
                                                                      'Confirmar'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ) ??
                                                        false;
                                                if (confirmDialogResponse) {
                                                  _model.removeAtIndexFromData(
                                                      categoriasIndex);
                                                  safeSetState(() {});
                                                  return;
                                                } else {
                                                  Navigator.pop(context);
                                                  return;
                                                }
                                              },
                                              child: Icon(
                                                Icons.delete_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                size: 24.0,
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 15.0)),
                                        ),
                                      ],
                                    ).animateOnPageLoad(animationsMap[
                                        'rowOnPageLoadAnimation']!),
                                  );
                                }),
                              ),
                            ),
                          );
                        },
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
