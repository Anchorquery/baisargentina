import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terminosycondiciones_model.dart';
export 'terminosycondiciones_model.dart';

class TerminosycondicionesWidget extends StatefulWidget {
  const TerminosycondicionesWidget({super.key});

  @override
  State<TerminosycondicionesWidget> createState() =>
      _TerminosycondicionesWidgetState();
}

class _TerminosycondicionesWidgetState extends State<TerminosycondicionesWidget>
    with TickerProviderStateMixin {
  late TerminosycondicionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerminosycondicionesModel());

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
      'richTextOnPageLoadAnimation1': AnimationInfo(
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
      'richTextOnPageLoadAnimation2': AnimationInfo(
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
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
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Al usar BAIS aceptas  nuestros',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'Terminos y condiciones',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Ultima actualizacion  5/06/2024',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      color: Color(0xFF7C7C7C),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(SizedBox(height: 2.0)),
                          ),
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation']!),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Color(0xFFD9D9D9),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 15.0, 30.0, 15.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Buenos Aires Integración Social Asociación Civil (BAIS Argentina o BAIS) es una entidad constituida bajo las leyes de Argentina, con número de identificación CUIT 30-71418077-7 y domicilio legal en Ayacucho 1571, Capital Federal, Argentina. En adelante, nos referiremos a BAIS Argentina como BAIS (“nosotros”, “nos”, “nuestro”) en el resto de este documento.\nUSO DEL SITIO WEB Y APLICACIÓN MÓVIL:\nBAIS opera en dos plataformas: el sitio web (baisargentina.com) y una aplicación móvil. Nuestras plataformas tienen como objetivo respaldar la misión de BAIS, que es fomentar la conexión entre estudiantes dentro y entre universidades, ofreciendo las mejores ofertas en productos o servicios y servicios relevantes para estudiantes en Argentina. Aunque nos esforzamos por optimizar la calidad, seguridad y funcionalidad de las plataformas, no podemos garantizar de manera perfecta el funcionamiento continuo y la disponibilidad de las plataformas o la ausencia de virus, malware u otros elementos externos responsables de alteraciones en su sistema informático. BAIS no asume responsabilidad por estas situaciones.\n\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                'El sitio web y las aplicaciones móviles están disponibles para uso personal y comercial. Al navegar, registrarse o utilizar nuestras plataformas y los servicios ofrecidos por nosotros a través de ellas, reconoces haber leído, comprendido y aceptado vincularte a estos términos y cumplir con todas las leyes y regulaciones aplicables. Si no estás de acuerdo con estos Términos y Condiciones de Uso (en adelante, T&C), por favor, no utilices el sitio web o la aplicación móvil de BAIS.\nProhibimos estrictamente a los usuarios intentar alterar nuestro sitio web o aplicaciones móviles sin una autorización escrita de BAIS. También prohibimos estrictamente el uso de nuestras plataformas o su contenido para fines ilícitos, contrarios a la moral, buena fe, orden público, decencia o para la transmisión de material publicitario, así como actividades ilícitas, pornografía, racismo e incitación al racismo, vulgaridad o cualquier material que pueda ofender a otra persona o interferir con la prestación de nuestros servicios de acuerdo con nuestro juicio corporativo.\nEl incumplimiento de cualquiera de las condiciones mencionadas por parte del usuario puede llevar a BAIS a tomar las medidas necesarias para proteger sus propios intereses. Estas medidas incluyen el bloqueo y/o eliminación del perfil del usuario, o en casos más graves, acciones legales contra el usuario que no cumple.\nNuestro sitio web baisargentina.com utiliza el protocolo Secure Sockets Layer (SSL) para garantizar que los datos estén cifrados y que no se deje vulnerable información personal accesible a atacantes. SSL es una tecnología estándar de seguridad para establecer un enlace cifrado entre un servidor y un usuario. Esto garantiza que durante las compras, todos los datos personales y financieros se transmitan de manera segura.\nEnlaces a baisargentina.com:\nLos enlaces a nuestros sitios en otras páginas web o aplicaciones móviles se denominan enlaces de retroceso (backlinks). BAIS permite la colocación de enlaces que redirigen a nuestro sitio web en sitios web externos bajo las siguientes condiciones:\n\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n1 ',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'La página web externa no debe participar ni contener información que sea objeto de actividades ilícitas, pornografía, violencia o cualquier material que pueda ofender a otra persona o interferir con la prestación de nuestros servicios según nuestro juicio corporativo.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n2',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' La marca, lema, logo o cualquier símbolo distintivo solo puede usarse con la autorización explícita y las pautas proporcionadas por BAIS.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Los enlaces externos pueden vincular a sitios web que estén en directo contraste con los valores de BAIS.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                '\n\nBAIS no tiene responsabilidad ni se hace responsable de la información, productos o servicios, contenidos o servicios proporcionados por otros sitios web que mencionen o enlacen a nuestro sitio web y/o aplicación móvil. En caso de notar alguna incongruencia o anomalía con BAIS en enlaces externos que redirigen o se refieren a nuestra marca y/o plataformas, por favor, contáctenos de inmediato.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nPROPIEDAD INTELECTUAL:\n',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\nTodo el contenido escrito, de audio, video, gráfico y cualquier otro tipo creado por BAIS o terceros, presente en el sitio web y la aplicación móvil, son propiedad de BAIS o de sus proveedores de contenido. BAIS prohíbe usar, alterar, reproducir o distribuir cualquiera de estos materiales sin el consentimiento de BAIS y/o sus proveedores y/o sus socios. En caso de uso de cualquier contenido no propiedad de BAIS, el/los propietario(s) se acreditarán con un enlace directo a la fuente original.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nMEMBRESÍA DE BAIS:\n',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\nBAIS ofrece dos tipos de membresía: Gratuita y Premium. \nTodos los usuarios registrados en la aplicación BAIS comienzan como miembros gratuitos pero tienen la opción de actualizar su cuenta a Premium. Los miembros gratuitos tienen acceso solo a los descuentos y beneficios gratuitos, mientras que los miembros Premium tienen acceso a todos los descuentos de BAIS (gratuitos y Premium) junto con otros beneficios.\nLa mayoría de nuestros descuentos son proporcionados por nuestros socios. NO PODEMOS garantizar que el descuento siempre funcione, ya que esto depende totalmente del socio. Tenemos acuerdos con cada uno de los lugares anunciados como parte de nuestro programa de Socios. Los socios y sus descuentos pueden agregarse, eliminarse o modificarse en cualquier momento sin notificar a los usuarios.\nBAIS no es responsable si un socio no aplica el descuento en algún momento dado. Si encuentras un socio que no aplicó el descuento, te animamos a que nos lo hagas saber. Informaremos al socio. Si el problema persiste, eliminaremos al socio de nuestro sistema.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nEVENTOS Y ACTIVIDADES:',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' \n\nPlanificar y organizar eventos y experiencias es una actividad central de BAIS. Todo tipo de contenido tomado de eventos y actividades que involucren a BAIS puede ser utilizado libremente por BAIS en nuestro sitio web y aplicación móvil, cuentas de redes sociales u otras plataformas de comunicación y promoción. Estos contenidos incluyen, pero no se limitan a, audio, video, imágenes, etc. Los participantes en eventos aceptan transferir sus derechos de imagen a BAIS para contenido de comunicación y promoción. En tales casos, los propietarios del contenido serán notificados y consultados antes del uso de los materiales. BAIS no utilizará estos contenidos para actividades ilícitas, pornografía, racismo e incitación al racismo, vulgaridad o cualquier material que pueda ofender a otra persona o interferir con la integridad de las personas según el juicio corporativo de BAIS.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nVIAJES:',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\n\n BAIS no organiza viajes por sí misma. Nuestra misión es colaborar con otras agencias de viajes para preparar paquetes adaptados a los estándares de calidad y precio de nuestros estudiantes. Por lo tanto, BAIS se limita a comercializar viajes organizados por otras agencias, sobre las cuales recae toda la responsabilidad de la organización, logística y cualquier otra responsabilidad derivada de los viajes.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                '\n\nCOMPRA DE productos o servicios COMO MIEMBROS DE LA TARJETA DE BAIS:\n\n',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Los titulares de tarjetas de membresía de BAIS tienen el beneficio de adquirir algunos de nuestros productos o servicios a un precio más bajo, siempre que el miembro haya adquirido su tarjeta de membresía dentro de un período de 6 meses desde la compra del producto. Es decir, por ejemplo, si se compró una tarjeta en julio de 2023, el titular ya no se considera miembro después de diciembre de 2023, ya que las tarjetas de membresía son válidas solo por 6 meses y los productos o servicios después de diciembre de 2023 no se pueden adquirir a precios más bajos, salvo renovación.\nAntes de comprar un producto, a los usuarios se les da la opción de indicar si tienen la tarjeta o no. Al seleccionar que tienes la tarjeta de membresía, confirmas que la has comprado dentro de un período de 6 meses y que tu tarjeta aún es válida. Si deseas comprar un producto para más de una persona (por ejemplo, tú y tus amigos), debes consultar con todas las personas si tienen la tarjeta o no. Si no la tienen, deberán tenerla para obtener el beneficio.\nEjemplo: Quieres viajar con tu amigo John. Tienes la tarjeta de membresía de BAIS pero John no la tiene. Debes agregar el viaje dos veces a tu carrito de compras: una vez con la opción de que tienes la tarjeta y otra vez con la opción de que no tienes la tarjeta. No hacerlo se considera una violación de nuestros Términos y Condiciones.\nSi un individuo compra un producto como miembro pero sin tener la tarjeta de membresía, esto se considera una violación de nuestros Términos y Condiciones. En este caso, BAIS se pondrá en contacto con el individuo y solicitará una prueba de membresía (correo electrónico o imagen de la tarjeta). También podemos pedir al individuo que presente su tarjeta de membresía antes o durante el evento. Si el individuo no puede demostrar su membresía, se le pedirá que pague la diferencia antes de unirse al evento.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                '\n\nINCUMPLIMIENTO DE NUESTROS TÉRMINOS Y CONDICIONES:\n\n',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'En caso de que no cumplas con estos T&C, BAIS puede suspender temporalmente, cancelar tu perfil sin previo aviso y/o retener el pago hasta que se resuelva el problema. Cualquier suspensión o cancelación no te otorga derecho a ninguna compensación.\nEn caso de discrepancia entre los T&C y una condición específica de una oferta proporcionada por BAIS, prevalecerá esta última. Si alguna disposición o disposiciones de estos Términos de Uso se consideran nulas o inaplicables, ya sea en su totalidad o en parte, por cualquier tribunal competente o entidad administrativa, dicha nulidad o inaplicabilidad no afectará las demás disposiciones de estos Términos de Uso',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                '\n\nINCUMPLIMIENTO DE OBLIGACIONES LEGALES:\n\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'En caso de prueba o sospecha de actividad ilegal por parte de nuestros usuarios, incluido, entre otros, el acoso, la difusión de rumores e información falsa, y la difusión de malware, BAIS puede notificar y cooperar con la policía y las autoridades legales competentes.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                '\n\nRESEÑAS, COMENTARIOS, CORREOS ELECTRÓNICOS Y OTRO CONTENIDO:\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Los visitantes pueden publicar reseñas, comentarios y otro contenido, y enviar sugerencias, ideas, comentarios, preguntas u otra información, siempre que el contenido no sea ilegal, obsceno, amenazante, difamatorio, invasivo de la privacidad, infrinja los derechos de propiedad intelectual o sea de otro modo perjudicial o objetable y no consista en o contenga virus de software, campañas políticas, solicitudes comerciales, cadenas de mensajes, envíos masivos o cualquier forma de \"spam\". No puedes utilizar una dirección de correo electrónico falsa, hacerse pasar por otra persona o entidad, ni tergiversar el origen de un contenido o tarjeta. BAIS se reserva el derecho (pero no la obligación) de eliminar o editar dicho contenido, aunque no revisamos regularmente el contenido publicado. Si publicas contenido o envías material y a menos que indiquemos lo contrario, otorgas a BAIS y sus asociados un derecho no exclusivo, libre de regalías, perpetuo, irrevocable y totalmente sublicenciable para usar, reproducir, modificar, adaptar, publicar, traducir, crear obras derivadas, distribuir y mostrar dicho contenido en todo el mundo en cualquier medio. Concedes a BAIS y a sus asociados y sublicenciatarios el derecho de usar el nombre que envías en conexión con dicho contenido, si así lo eligen. Declaras y garantizas que posees o controlas todos los derechos sobre el contenido que publicas, que el contenido es preciso, que el uso del contenido que proporcionas no viola esta política y no causará daño a ninguna persona o entidad, y que indemnizará a BAIS o a sus asociados por todas las reclamaciones resultantes del contenido que proporcionas. BAIS tiene el derecho pero no la obligación de supervisar y editar o eliminar cualquier actividad o contenido. No asumimos responsabilidad y no nos hacemos responsables de ningún contenido publicado por ti o cualquier tercero.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nDESCRIPCIÓN DEL PRODUCTO:\n\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'BAIS y sus asociados intentan ser lo más precisos posible al generar descripciones de productos o servicios. Lo hacemos principalmente consultando diferentes fuentes creíbles para obtener la mayor cantidad de información posible. Estas descripciones pueden hacer referencia a las descripciones de cualquier producto que vendemos, ya sea físico o digital. Si una descripción de un producto no coincide estrechamente con lo que se te ha entregado, contáctanos lo antes posible.',
                            style: TextStyle(
                              color: Color(0xFF494949),
                            ),
                          ),
                          TextSpan(
                            text: '\n\nPAGOS:\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\nAceptamos compras mediante el uso de tarjetas de débito y crédito. Nuestro sistema acepta tarjetas VISA, MASTERCARD y AMERICAN EXPRESS. Todos los pagos deben realizarse en línea en nuestro sitio web o en nuestra aplicación móvil. Nuestro sitio web utiliza cifrado SSL para garantizar que la transacción se realice de manera segura y que ningún dato personal, incluidas, entre otras, direcciones de correo electrónico y datos de tarjetas de crédito, sea accesible para hackers y otros atacantes. Todos los usuarios que compren un producto en baisargentina.com deben pagar una tarifa de procesamiento además del precio del producto. La tarifa de procesamiento puede variar entre el 2% y el 5% según la categoría del producto, ya sea coorganizado o no, u otras razones. Si deseas evitar esta tarifa de procesamiento, puedes transferir la cantidad a nuestra cuenta bancaria o pagar en efectivo en nuestra oficina.\nConsulta nuestra Política de Tarifas de Procesamiento para obtener más información sobre las tarifas de procesamiento.',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: '\n\nRECOLECCIÓN Y USO DE INFORMACIÓN:\n\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Al utilizar nuestro servicio, es posible que te solicitemos que nos proporciones cierta información personal identificable que se pueda utilizar para contactarte o identificarte. La información personal identificable puede incluir, entre otras cosas, tu nombre y dirección de correo electrónico (\"Información personal\"). Recopilamos esta información con el propósito de proporcionar el servicio, identificarte y comunicarnos contigo, responder a tus solicitudes/consultas y mejorar nuestros servicios.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nCOMUNICACIONES:\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\nPodemos utilizar tu información personal para contactarte con newsletter informativos, marketing o materiales promocionales y otra información que pueda ser de interés para ti. Puedes optar por no recibir alguna o todas estas comunicaciones siguiendo el enlace para darte de baja o las instrucciones proporcionadas en cualquier correo electrónico que te enviemos.\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: '\n\nNewsletter:\n\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Al suscribirte a nuestro newsletter, aceptas recibir newsletter informativos de nuestra parte. El objetivo de nuestro servicio de newsletter es mantener actualizados a nuestros clientes y visitantes sobre nuevos lanzamientos de software o nuevas ofertas de servicios. La suscripción a nuestro servicio de newsletter no es obligatoria, y todos los usuarios deben ingresar su información y aceptar nuestros Términos y Condiciones para ser agregados a nuestra lista de newsletter. Todos los newsletter enviados tienen el botón de Anular suscripción en la parte inferior del correo electrónico, brindando al destinatario la opción de anular la suscripción.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nFRECUENCIA\n\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'La frecuencia de los newsletter será de una a dos veces por semana como máximo.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nLIMITACIÓN DE RESPONSABILIDAD:\n\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Nos reservamos el derecho exclusivo de modificar o interrumpir el boletín en cualquier momento con o sin previo aviso a los suscriptores. No seremos responsables ante los suscriptores ni ante ningún tercero si ejercemos dicho derecho. Cualquier nueva característica que aumente o mejore los servicios actuales en este sitio también estará sujeta a estos Términos de Uso.\nNos reservamos el derecho exclusivo de dar de baja a usuarios/visitantes de nuestro servicio de boletín, sin previo aviso. Lo haremos con cualquier suscriptor que consideremos registrado con datos falsos.\nCORREO DE BIENVENIDA DE SUSCRIPCIÓN:\nNuestro sistema envía automáticamente un correo de bienvenida a todos los nuevos suscriptores de nuestro boletín semanal. El propósito de este correo electrónico es saludar a los suscriptores y brindarles una imagen más clara de nuestros servicios y valores.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nPOLÍTICA DE PRIVACIDAD:\n\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'No comunicaremos, difundiremos, publicaremos ni daremos a conocer tu Información Personal a menos que lo autorices explícitamente. Podrás cambiar la configuración de tu suscripción o eliminarla en cualquier momento.\nPOLÍTICA DE COMPRA Y REEMBOLSO:\nConsulta nuestra Política de Reembolso.\nSi tienes algún problema o pregunta, contáctanos por correo electrónico a info@baisargentina.com o por Whatsapp al +541136918877.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nENVÍO:\n\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Casi todos nuestros productos o servicios son de formato digital y la mayoría de los productos o servicios no requieren ningún envío.\nLa opción de envío se aplica a nuestros productos físicos, como la Tarjeta de Membresía de BAIS. Al comprar un producto físico, se le brinda al usuario la opción de enviar el producto a su ubicación a una tarifa fija o recogerlo en persona en nuestra oficina. Solo podemos enviar a direcciones dentro del territorio argentino. Cualquier dirección fuera de Argentina no será elegible para entrega gratuita.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\nCONTACTO:\n\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Puedes contactarnos enviando un correo electrónico a nuestra dirección info@baisargentina.com o un mensaje a nuestra página de Instagram (@baisargentina).\n- Llamada telefónica/Whatsapp: +54 11 36918877\n- Correo electrónico: info@baisargentina.com\n- Oficina: Ayacucho 1571, Planta Baja, Ciudad Autónoma de Buenos Aires, Argentina.\n\nEsperamos que esta información aclare cualquier pregunta o inquietud que puedas tener. Para cualquier asistencia adicional, no dudes en comunicarte con nosotros. ¡Gracias por elegir a BAIS Argentina!',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: Color(0xFF494949),
                              letterSpacing: 0.0,
                            ),
                      ),
                      textAlign: TextAlign.justify,
                    ).animateOnPageLoad(
                        animationsMap['richTextOnPageLoadAnimation1']!),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                        child: Text(
                          'Política de reembolso',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 15.0, 30.0, 15.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Esta Política de Reembolso contiene información sobre asuntos relacionados con solicitudes de reembolso y los derechos del cliente.\n\nEn este documento, \"nosotros\", \"nos\", \"nuestro\", \"nuestra\" se refiere a BAIS Argentina y \"usted\" se refiere al usuario/cliente.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n1 General',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: '\n\n1.1',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' BAIS es una plataforma de organización de actividades donde algunas de ellas tienen costo por la entrada.  BAIS conecta a los organizadores de eventos con posibles compradores. BAIS no es responsable de manejar, administrar o distribuir dinero generado por eventos externos. Como resultado, BAIS puede no poder emitir un reembolso si el organizador del evento ha realizado transferencias y el monto no está disponible para emitir el reembolso. En este caso, debe comunicarse con el organizador del evento para obtener más información.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n1.2',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' BAIS se reserva el derecho de agregar, modificar o eliminar estas condiciones en cualquier momento sin la obligación de notificar a los usuarios con anticipación. Es responsabilidad exclusiva del usuario leer y comprender estos artículos antes de realizar un pedido, ya sea en línea u offline. La falta de hacerlo no constituye motivo para un retorno parcial o total por defecto.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n1.3',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Antes de comprar cualquier producto en nuestro sitio web, le recomendamos encarecidamente que lea detenidamente la Política de Reembolso. Al realizar un pedido en nuestra plataforma (sitio web o aplicación), ya sea pagado o no, acepta haber leído, entendido y aceptado estas condiciones.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n1.4',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Algunos productos o servicios pueden tener sus propias condiciones de reembolso mencionadas en la descripción del producto. Si un producto tiene su propia condición de reembolso, esa condición prevalecerá sobre esta Política de Reembolso.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n1.5',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Todas las compras realizadas en cualquier plataforma de BAIS, ya sea en el sitio web o la aplicación móvil, independientemente del método de pago, pago en línea, efectivo o transferencia bancaria, están sujetas a esta Política de Reembolso. Esto significa que al realizar cualquier pago, acepta esta Política de Reembolso (a menos que se indique lo contrario en la descripción del evento).',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n1.6',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Utilizamos las plataformas de pago Mercado Pago para recibir pagos a través de tarjetas bancarias y para reembolsar a los clientes. Normalmente emitimos los reembolsos de 7 a 15 días hábiles después de su aprobación. Sin embargo, el monto puede no aparecer en su cuenta hasta 10 días después. El tiempo que tarda en aparecer el monto en su cuenta está completamente fuera de nuestro control y depende de la plataforma de pago y su banco, así como de las regulaciones. Si no ha recibido el reembolso después de algunas semanas, comuníquese con nosotros para investigar y luego con su banco.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n1.7',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '  Si no puede asistir a un evento o viaje y cree que tiene derecho a un reembolso, envíe su solicitud de reembolso a info@baisargentina.com.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n1.8',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Estos Términos y Condiciones Generales de Compra no afectan ni afectarán sus derechos legales como consumidor.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n2. Tarifa de Procesamiento',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: '\n\n2.1',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' BAIS agrega una tarifa de procesamiento sobre los precios de los productos o servicios. La tarifa de procesamiento siempre se muestra en el Carrito y las páginas de Pago.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n2.2',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Algunos productos o servicios pueden no tener tarifas adicionales agregadas al precio del producto. Esto no significa que no haya tarifas involucradas.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n2.3',
                            style: GoogleFonts.getFont(
                              'Lato',
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Dependiendo del acuerdo entre BAIS y el organizador, las tarifas pueden estar implícitamente incluidas en el precio del producto.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n2.4',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '  Si se agrega una tarifa al precio del producto, el precio del producto se reembolsará y la tarifa de procesamiento agregada al precio del producto no se reembolsará.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n2.5',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Si se incluye una tarifa en el precio del producto, la tarifa de procesamiento no será visible ni comunicada al usuario. En este caso, el monto total pagado incluye el precio base del producto más la tarifa de procesamiento. La tarifa de procesamiento no se reembolsará.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n 2.6 ',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Las tarifas de procesamiento no son reembolsables bajo ninguna circunstancia, a menos que BAIS lo acuerde.',
                            style: TextStyle(
                              color: Color(0xFF494949),
                            ),
                          ),
                          TextSpan(
                            text: '\n\n2.7',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' BAIS se reserva el derecho de comunicar la tarifa de procesamiento incluida en el precio de un producto o no.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n2.8',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Para obtener más información, consulte nuestra Política de Tarifas de Procesamiento.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3. Viajes',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: '\n\n3.1',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '  Todos los viajes en las plataformas de BAIS son organizados por agencias de viajes registradas como Wonderworld Travel Agency (Legajo N°18.248) u otras agencias de viajes, y promocionados por BAIS. BAIS no organiza ninguno de sus viajes, sino que utiliza sus plataformas para publicitar los viajes de otras agencias. Como resultado, tenemos muy poco o ningún poder para realizar reembolsos por nuestra cuenta. Es discreción del organizador aceptar o no una solicitud de reembolso. Si el organizador se niega a aprobar una solicitud de reembolso, BAIS no puede intervenir ni cambiar la decisión. ',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.2',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Todos los viajes en las plataformas de BAIS son organizados por agencias de viajes registradas como Wonderworld Travel Agency (Legajo N°18.248) u otras agencias de viajes, y promocionados por BAIS. BAIS no organiza ninguno de sus viajes, sino que utiliza sus plataformas para publicitar los viajes de otras agencias. Como resultado, tenemos muy poco o ningún poder para realizar reembolsos por nuestra cuenta. Es discreción del organizador aceptar o no una solicitud de reembolso. Si el organizador se niega a aprobar una solicitud de reembolso, BAIS no puede intervenir ni cambiar la decisión.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.3',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '  Si un viaje dura un solo día, es decir, el viaje desde la salida hasta la llegada dura menos de 24 horas, y no puede asistir, debe solicitar un reembolso al menos 72 horas antes de la salida. Cualquier solicitud de reembolso dentro de un período de 72 horas puede no ser aprobada por la agencia de viajes.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.4',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Los viajes comprados con un código de descuento o a través de una oferta especial pueden no ser reembolsados.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.5',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '  Cada viaje tiene su propio punto y hora de encuentro, que se incluyen en el itinerario y la información del viaje en el sitio web o la aplicación. Se recomienda encarecidamente que todos los viajeros lleguen a tiempo. Es posible que no tenga derecho a un reembolso parcial o total si llega tarde. Los organizadores no tienen la obligación de esperar a los viajeros que llegan tarde. Si pierde el autobús, debe comunicarse con nosotros de inmediato, pero eso por sí solo no garantiza un reembolso. Perder un autobús simplemente porque llegó tarde (por cualquier motivo) no constituye motivo para un reembolso.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.6',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' No poder unirse a un viaje (por cambiar de opinión, enfermedad repentina o error al comprar el(los) boleto(s)) no constituirá motivo para un reembolso. Consulte los puntos 3.2 y 3.3.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.7',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '  Si compra un viaje pero nos informa que desea cancelar su boleto menos de 72 horas o 10 días antes de que comience el viaje (consulte los puntos 3.3 y 3.2), no tendrá derecho a un reembolso. La única solución en tal caso sería encontrar un reemplazo para que vaya en su lugar. Si encuentra un reemplazo, deberá informarnos con anticipación para que cambiemos la información que ha proporcionado. Si encontramos un reemplazo por usted, lo informaremos y le reembolsaremos.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.8',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' A veces, un evento puede agotarse o cancelarse, pero aún estar disponible para su compra en nuestras plataformas. Hacemos todo lo posible para actualizar el sitio web y la aplicación lo antes posible y mantener toda la información precisa y actualizada, sin embargo, puede haber momentos en que no sea posible actualizar el sitio web/aplicación de inmediato o que el organizador no nos informó a tiempo. Si compra un evento o producto que ha sido cancelado pero aún está disponible para su compra en nuestro sitio web/aplicación, le informaremos lo antes posible y tendrá derecho a un reembolso.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.9',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                'El depósito pagado para viajes donde el medio de transporte el aéreo no es reembolsable por defecto. Es discreción de BAIS reembolsar o no casos específicos.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.10',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Si un evento, como un viaje, sufre alteraciones importantes, puede optar por confirmar su pedido para el evento alterado o solicitar un reembolso (por el precio de venta de su(s) boleto(s), incluidos los costos administrativos por cada boleto) dentro del período que hemos establecido. Si no está de acuerdo con el nuevo plan o no puede asistir por cualquier motivo, debe informarnos dentro de las 72 horas (y siempre 24 horas antes de la nueva fecha). Si no nos informa, asumiremos que está de acuerdo con la nueva fecha y confirmaremos su asistencia, después de lo cual no tendrá derecho a solicitar un reembolso. Una \"alteración importante\" es un cambio que, según nuestro juicio y el del Organizador, hace que el evento difiera considerablemente de lo que el comprador de boletos general y razonablemente esperaba. Esto incluye, entre otros, cambiar la fecha del evento o el horario completo del evento. En tales casos, le corresponde a BAIS decidir si se debe otorgar o no un reembolso (si el evento es organizado y gestionado por BAIS). De lo contrario, le corresponde al organizador del evento tomar tal decisión.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n3.11',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Cuando un viaje se cancela o pospone y nos informa que no puede asistir, le reembolsaremos su pago.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n4. Eventos Organizados por BAIS',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\nEstos son eventos organizados, gestionados y \ndirigidos por BAIS.\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n4.1',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Debe solicitar un reembolso al menos 7 días o más antes de que comience el evento para tener derecho a recibir un reembolso.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n4.2',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Si solicita un reembolso menos de 7 días antes del inicio del evento, no tendrá derecho a un reembolso.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n4.3',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Si la fecha de un evento se cambia a otra fecha y no puede asistir al evento en la nueva fecha, tendrá derecho a un reembolso.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n4.4',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                '  Un reembolso siempre excluye la tarifa de procesamiento. Consulte la sección de Tarifa de Procesamiento para obtener más información.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                '\n\n5 Eventos Organizados por Estudiantes u Otros Organizadores Externos\n',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\n Estos son eventos donde BAIS es solo una plataforma de venta de entradas y no participa en la organización, promoción o gestión del evento. Estos eventos tienen sus propios organizadores de eventos (en el resto de esta sección, referidos como el Organizador).',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n5.1',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Si un evento es organizado por cualquier parte que no sea BAIS, la decisión de aprobar o rechazar una solicitud de reembolso depende únicamente del Organizador y no de BAIS. Transmitimos todas las solicitudes de reembolso al Organizador y les permitimos decidir.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n5.2',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' En eventos no organizados por BAIS, el Organizador es la entidad legalmente responsable del evento. BAIS no será responsable en ningún caso, por nada más allá de garantizar el correcto funcionamiento de nuestras plataformas.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n5.3',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' BAIS no tiene control y no desempeña ningún papel en el manejo o la gestión del dinero recolectado a través de la venta de boletos (excepto por la tarifa de procesamiento).',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n5.4',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' El Organizador tiene control total sobre el dinero recolectado a través de la venta de boletos, por lo tanto, es legalmente responsable de su manejo. Cualquier reclamo, queja o asunto legal debe dirigirse al Organizador, no a BAIS.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n5.5',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' BAIS permite a los organizadores de eventos establecer su propia política de reembolso. Por ejemplo, pueden optar por tener una política sin reembolso para su evento. En este caso, la política de reembolso del Organizador prevalece y tiene prioridad sobre la política estándar de reembolso de BAIS. Esto significa que el Organizador tiene pleno control sobre las solicitudes de reembolso y BAIS no tiene voz en este asunto.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n5.6',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Cada Organizador es responsable de manejar los reembolsos relacionados con su evento. BAIS no será responsable de ninguna responsabilidad legal/financiera derivada de tales reembolsos o reclamaciones.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n6. Cupones y Crédito de Tienda',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: '\n\n6.1',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Puede haber casos en los que no sea posible reembolsar al cliente en efectivo. En tales casos, ofreceremos un código de cupón que se puede utilizar en el sitio web para comprar otros eventos. Si está registrado como afiliado en nuestro Programa de Referidos, podemos emitir el reembolso como crédito de tienda.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '\n\n6.2',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Si compra un producto utilizando un código de cupón, no podremos reembolsar la cantidad que el código de cupón haya deducido de su subtotal.',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                '\n\n7. Violaciones de Términos & Condiciones y Política de Reembolso',
                            style: TextStyle(
                              color: Color(0xFF494949),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text: '\n\n7.1',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Todos los usuarios tienen la opción de elegir la opción de tener la tarjeta de membresía de BAIS para disfrutar del descuento que la tarjeta de BAIS otorga a sus titulares. Al seleccionar esta opción, confirma que tiene la tarjeta y que su tarjeta es válida. Se considera una violación de nuestros Términos y Condiciones elegir esta opción intencionalmente solo para recibir un descuento sin tener una tarjeta de membresía de BAIS válida. En caso de detección, podemos negarnos a aceptar el pedido del cliente si este se niega a pagar la diferencia. En tal caso, deberá cubrir la diferencia adicional o le reembolsaremos el monto total y eliminaremos su pedido.',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Lato',
                              color: Color(0xFF494949),
                              letterSpacing: 0.0,
                            ),
                      ),
                      textAlign: TextAlign.justify,
                    ).animateOnPageLoad(
                        animationsMap['richTextOnPageLoadAnimation2']!),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
