import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'faq_model.dart';
export 'faq_model.dart';

class FaqWidget extends StatefulWidget {
  const FaqWidget({super.key});

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> with TickerProviderStateMixin {
  late FaqModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqModel());

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
        ],
      ),
      'richTextOnPageLoadAnimation': AnimationInfo(
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Icon(
                          Icons.chevron_left_sharp,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Preguntas Frecuentes',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Lato',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 35.0, 30.0, 20.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '¿Qué es BAIS?\n',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        TextSpan(
                          text:
                              '\nBAIS es una aplicación que conecta a estudiantes de intercambio con negocios locales y estudiantes locales. Ofrecemos una plataforma donde los usuarios pueden ver y crear eventos, contactar servicios de emergencia y rentar apartamentos o casas para estudiantes.',
                          style: GoogleFonts.getFont(
                            'Lato',
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        TextSpan(
                          text: '\n\n¿Cuánto cuesta usar BAIS?',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              '\n\nEl registro y uso básico de BAIS es gratuito. Sin embargo, algunos eventos y servicios pueden tener un costo asociado. También ofrecemos suscripciones con características adicionales por una tarifa mensual o anual.',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        TextSpan(
                          text: '\n\n¿Cómo puedo crear un evento en BAIS?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        TextSpan(
                          text:
                              '\n\nPara crear un evento, inicie sesión en su cuenta de BAIS y navegue a la sección de eventos. Haga clic en \"Crear Evento\" y complete la información requerida, como el título del evento, la fecha, la hora, la ubicación y una descripción. Una vez completado, publique su evento para que otros usuarios puedan verlo y unirse.',
                          style: GoogleFonts.getFont(
                            'Lato',
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        TextSpan(
                          text:
                              '\n\n¿Qué debo hacer si necesito contactar un servicio de emergencia?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        TextSpan(
                          text:
                              '\n\nEn caso de emergencia, use la función de \"Servicios de Emergencia\" en la aplicación. Puede seleccionar entre diferentes tipos de servicios, como médicos o taxis, y la aplicación lo conectará con el proveedor de servicios correspondiente más cercano.\n',
                          style: GoogleFonts.getFont(
                            'Lato',
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        TextSpan(
                          text:
                              '\n\n¿Qué pasa si un evento al que me inscribí es cancelado?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        TextSpan(
                          text:
                              '\n\nSi un evento es cancelado por el organizador, recibirá una notificación por correo electrónico y se le reembolsará el pago completo del evento automáticamente. Consulte nuestra Política de Reembolso para obtener más información.\n',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: '\n\n ¿Cómo puedo cancelar mi suscripción?',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        TextSpan(
                          text:
                              '\n\n\nPara cancelar su suscripción, vaya a la configuración de su cuenta en la aplicación y seleccione la opción de cancelar suscripción. Si cancela dentro de los primeros 14 días, recibirá un reembolso completo. No se otorgarán reembolsos por cancelaciones realizadas después de este período.\n',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text:
                              '\n\n¿Puedo reportar conductas inapropiadas o problemas con otros usuarios?\n',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        TextSpan(
                          text:
                              '\n\n\nSí, si experimenta conductas inapropiadas o tiene problemas con otros usuarios, puede reportarlo a nuestro equipo de soporte a través de la sección de soporte en la aplicación. Investigaremos todas las denuncias y tomaremos las medidas adecuadas para garantizar la seguridad y bienestar de nuestra comunidad.\n',
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                    textAlign: TextAlign.justify,
                  ).animateOnPageLoad(
                      animationsMap['richTextOnPageLoadAnimation']!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
