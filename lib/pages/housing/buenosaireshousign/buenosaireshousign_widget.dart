import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'buenosaireshousign_model.dart';
export 'buenosaireshousign_model.dart';

class BuenosaireshousignWidget extends StatefulWidget {
  const BuenosaireshousignWidget({super.key});

  @override
  State<BuenosaireshousignWidget> createState() =>
      _BuenosaireshousignWidgetState();
}

class _BuenosaireshousignWidgetState extends State<BuenosaireshousignWidget> {
  late BuenosaireshousignModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuenosaireshousignModel());
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight: Radius.circular(70.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                    child: Image.asset(
                      'assets/images/20902de0-7a1f-4b42-94c6-3b9ec7453518.webp',
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.25,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.25,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryText,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70.0),
                          bottomRight: Radius.circular(70.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          15.0, 75.0, 10.0, 10.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Icon(
                          Icons.chevron_left_sharp,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 80.0, 20.0, 20.0),
                      child: Text(
                        'Alquiler: Buenos Aires',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Lato',
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100.0,
                      height: 135.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: Color(0xFFF5F6F9),
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 5.0, 5.0, 5.0),
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Icon(
                                  FFIcons.kbaos,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 40.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Baños',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              '1',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 135.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: Color(0xFFF5F6F9),
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 5.0, 5.0, 5.0),
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Icon(
                                  Icons.bed_outlined,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 40.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Habitaciones',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              '2',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 135.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(
                          color: Color(0xFFF5F6F9),
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 5.0, 5.0, 5.0),
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Icon(
                                  FFIcons.kmetroscuadrados,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  size: 40.0,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Àrea (mtrs²)',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              '45',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lato',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35.0, 10.0, 35.0, 10.0),
                child: AutoSizeText(
                  '3 huéspedes1 habitación2 camas1 baño',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35.0, 10.0, 35.0, 10.0),
                child: AutoSizeText(
                  'Acerca de este espacio\n¡Bienvenido a nuestro departamento!\n\nUbicado a solo dos cuadras del metro, estarás cerca de atracciones turísticas y podrás explorar la ciudad de forma fácil y segura.\n\nNuestro apartamento tiene todo lo necesario para sentirte cómodo y disfrutar de tu estancia al máximo.\n\nTe ayudaremos con cualquier cosa que necesites, recomendaciones de lugares para visitar, información sobre eventos y mucho más.\n\nNo esperes más y reserva tu estadía en nuestro departamento en este momento.\nEl espacio\nLa cocina es amplia y está equipada con lavadora-secadora. Tenemos todo listo para que cocines sin la necesidad de comprar lo básico.\n\nEn la sala de estar, encontrarás un televisor inteligente con Netflix, un sofá cama y una mesa de comedor con 4 sillas. Tiene calefacción y refrigeración, y hay una guía con todo lo que necesitas saber durante tu estancia.\n\nEl dormitorio cuenta con amplios armarios, opciones de calefacción y refrigeración, y dos juegos de sábanas que se cambian para estancias más largas o a petición del huésped.\n\nEl baño incluye una bañera y un armario para guardar todos los artículos de higiene personal.\n\nOfrecemos 2 juegos de llaves.\nAcceso de los huéspedes\nLos huéspedes pueden usar todo el alojamiento. Hay UN solo armario cerrado donde almacenamos las existencias y los productos de limpieza.\nOtros aspectos a destacar\nMi objetivo es convertirme en Superanfitrión. Soy nuevo en esto, y con mi familia (mi esposa y mis dos hijas), queremos que nuestros huéspedes vuelvan siempre en el futuro a través de recomendaciones. Nos esforzamos por ir más allá de las expectativas y ofrecer una experiencia excepcional.',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Lato',
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 10.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Alquiler',
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).tertiary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                        TextSpan(
                          text: ' USD',
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).tertiary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w900,
                              ),
                        ),
                        TextSpan(
                          text: ' \$25',
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).tertiary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w900,
                              ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            letterSpacing: 0.0,
                          ),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: CarouselSlider(
                  items: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.asset(
                                'assets/images/9b218b87-3ea2-42cc-aec3-6635ef576325.webp',
                                fit: BoxFit.contain,
                              ),
                              allowRotation: false,
                              tag: 'imageTag2',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag2',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/9b218b87-3ea2-42cc-aec3-6635ef576325.webp',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.asset(
                                'assets/images/a85ab26d-7334-47e1-88e5-a50f1ad6b306.webp',
                                fit: BoxFit.contain,
                              ),
                              allowRotation: false,
                              tag: 'imageTag3',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag3',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/a85ab26d-7334-47e1-88e5-a50f1ad6b306.webp',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.asset(
                                'assets/images/6d03f85e-d16b-486d-9ae0-201dcc8057d0.webp',
                                fit: BoxFit.contain,
                              ),
                              allowRotation: false,
                              tag: 'imageTag4',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag4',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/6d03f85e-d16b-486d-9ae0-201dcc8057d0.webp',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                  carouselController: _model.carouselhousignController ??=
                      CarouselController(),
                  options: CarouselOptions(
                    initialPage: 1,
                    viewportFraction: 0.5,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.25,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: false,
                    onPageChanged: (index, _) =>
                        _model.carouselhousignCurrentIndex = index,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await launchURL(
                        'https://www.airbnb.mx/rooms/907985442098063169?viralityEntryPoint=1&s=76&source_impression_id=p3_1724114013_P3j8KVJpjGcUPdl5');
                  },
                  text: 'Contactar',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lato',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
