import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
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

class _TerminosycondicionesWidgetState
    extends State<TerminosycondicionesWidget> {
  late TerminosycondicionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerminosycondicionesModel());
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              40.0, 55.0, 0.0, 44.0),
                          child: Text(
                            'Términos y condiciones \nBAIS Argentina',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lato',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Text(
                      'Buenos Aires Integración Social Asociación Civil (BAIS Argentina o BAIS) es una entidad constituida bajo las leyes de Argentina, con número de identificación CUIT 30-71418077-7 y domicilio legal en Ayacucho 1571, Capital Federal, Argentina. En adelante, nos referiremos a BAIS Argentina como BAIS (“nosotros”, “nos”, “nuestro”) en el resto de este documento.\nUSO DEL SITIO WEB Y APLICACIÓN MÓVIL:\nBAIS opera en dos plataformas: el sitio web (baisargentina.com) y una aplicación móvil. Nuestras plataformas tienen como objetivo respaldar la misión de BAIS, que es fomentar la conexión entre estudiantes dentro y entre universidades, ofreciendo las mejores ofertas en productos o servicios y servicios relevantes para estudiantes en Argentina. Aunque nos esforzamos por optimizar la calidad, seguridad y funcionalidad de las plataformas, no podemos garantizar de manera perfecta el funcionamiento continuo y la disponibilidad de las plataformas o la ausencia de virus, malware u otros elementos externos responsables de alteraciones en su sistema informático. BAIS no asume responsabilidad por estas situaciones.\nEl sitio web y las aplicaciones móviles están disponibles para uso personal y comercial. Al navegar, registrarse o utilizar nuestras plataformas y los servicios ofrecidos por nosotros a través de ellas, reconoces haber leído, comprendido y aceptado vincularte a estos términos y cumplir con todas las leyes y regulaciones aplicables. Si no estás de acuerdo con estos Términos y Condiciones de Uso (en adelante, T&C), por favor, no utilices el sitio web o la aplicación móvil de BAIS.\nProhibimos estrictamente a los usuarios intentar alterar nuestro sitio web o aplicaciones móviles sin una autorización escrita de BAIS. También prohibimos estrictamente el uso de nuestras plataformas o su contenido para fines ilícitos, contrarios a la moral, buena fe, orden público, decencia o para la transmisión de material publicitario, así como actividades ilícitas, pornografía, racismo e incitación al racismo, vulgaridad o cualquier material que pueda ofender a otra persona o interferir con la prestación de nuestros servicios de acuerdo con nuestro juicio corporativo.\nEl incumplimiento de cualquiera de las condiciones mencionadas por parte del usuario puede llevar a BAIS a tomar las medidas necesarias para proteger sus propios intereses. Estas medidas incluyen el bloqueo y/o eliminación del perfil del usuario, o en casos más graves, acciones legales contra el usuario que no cumple.\nNuestro sitio web baisargentina.com utiliza el protocolo Secure Sockets Layer (SSL) para garantizar que los datos estén cifrados y que no se deje vulnerable información personal accesible a atacantes. SSL es una tecnología estándar de seguridad para establecer un enlace cifrado entre un servidor y un usuario. Esto garantiza que durante las compras, todos los datos personales y financieros se transmitan de manera segura.\nEnlaces a baisargentina.com:\nLos enlaces a nuestros sitios en otras páginas web o aplicaciones móviles se denominan enlaces de retroceso (backlinks). BAIS permite la colocación de enlaces que redirigen a nuestro sitio web en sitios web externos bajo las siguientes condiciones:\n1. La página web externa no debe participar ni contener información que sea objeto de actividades ilícitas, pornografía, violencia o cualquier material que pueda ofender a otra persona o interferir con la prestación de nuestros servicios según nuestro juicio corporativo.\n2. La marca, lema, logo o cualquier símbolo distintivo solo puede usarse con la autorización explícita y las pautas proporcionadas por BAIS.\n3. Los enlaces externos pueden vincular a sitios web que estén en directo contraste con los valores de BAIS.\nBAIS no tiene responsabilidad ni se hace responsable de la información, productos o servicios, contenidos o servicios proporcionados por otros sitios web que mencionen o enlacen a nuestro sitio web y/o aplicación móvil. En caso de notar alguna incongruencia o anomalía con BAIS en enlaces externos que redirigen o se refieren a nuestra marca y/o plataformas, por favor, contáctenos de inmediato.\nPROPIEDAD INTELECTUAL:\nTodo el contenido escrito, de audio, video, gráfico y cualquier otro tipo creado por BAIS o terceros, presente en el sitio web y la aplicación móvil, son propiedad de BAIS o de sus proveedores de contenido. BAIS prohíbe usar, alterar, reproducir o distribuir cualquiera de estos materiales sin el consentimiento de BAIS y/o sus proveedores y/o sus socios. En caso de uso de cualquier contenido no propiedad de BAIS, el/los propietario(s) se acreditarán con un enlace directo a la fuente original.\nMEMBRESÍA DE BAIS:\nBAIS ofrece dos tipos de membresía: Gratuita y Premium. \nTodos los usuarios registrados en la aplicación BAIS comienzan como miembros gratuitos pero tienen la opción de actualizar su cuenta a Premium. Los miembros gratuitos tienen acceso solo a los descuentos y beneficios gratuitos, mientras que los miembros Premium tienen acceso a todos los descuentos de BAIS (gratuitos y Premium) junto con otros beneficios.\nLa mayoría de nuestros descuentos son proporcionados por nuestros socios. NO PODEMOS garantizar que el descuento siempre funcione, ya que esto depende totalmente del socio. Tenemos acuerdos con cada uno de los lugares anunciados como parte de nuestro programa de Socios. Los socios y sus descuentos pueden agregarse, eliminarse o modificarse en cualquier momento sin notificar a los usuarios.\nBAIS no es responsable si un socio no aplica el descuento en algún momento dado. Si encuentras un socio que no aplicó el descuento, te animamos a que nos lo hagas saber. Informaremos al socio. Si el problema persiste, eliminaremos al socio de nuestro sistema.\nEVENTOS Y ACTIVIDADES:\nPlanificar y organizar eventos y experiencias es una actividad central de BAIS. Todo tipo de contenido tomado de eventos y actividades que involucren a BAIS puede ser utilizado libremente por BAIS en nuestro sitio web y aplicación móvil, cuentas de redes sociales u otras plataformas de comunicación y promoción. Estos contenidos incluyen, pero no se limitan a, audio, video, imágenes, etc. Los participantes en eventos aceptan transferir sus derechos de imagen a BAIS para contenido de comunicación y promoción. En tales casos, los propietarios del contenido serán notificados y consultados antes del uso de los materiales. BAIS no utilizará estos contenidos para actividades ilícitas, pornografía, racismo e incitación al racismo, vulgaridad o cualquier material que pueda ofender a otra persona o interferir con la integridad de las personas según el juicio corporativo de BAIS.\nVIAJES:\nBAIS no organiza viajes por sí misma. Nuestra misión es colaborar con otras agencias de viajes para preparar paquetes adaptados a los estándares de calidad y precio de nuestros estudiantes. Por lo tanto, BAIS se limita a comercializar viajes organizados por otras agencias, sobre las cuales recae toda la responsabilidad de la organización, logística y cualquier otra responsabilidad derivada de los viajes.\n\nCOMPRA DE productos o servicios COMO MIEMBROS DE LA TARJETA DE BAIS:\nLos titulares de tarjetas de membresía de BAIS tienen el beneficio de adquirir algunos de nuestros productos o servicios a un precio más bajo, siempre que el miembro haya adquirido su tarjeta de membresía dentro de un período de 6 meses desde la compra del producto. Es decir, por ejemplo, si se compró una tarjeta en julio de 2023, el titular ya no se considera miembro después de diciembre de 2023, ya que las tarjetas de membresía son válidas solo por 6 meses y los productos o servicios después de diciembre de 2023 no se pueden adquirir a precios más bajos, salvo renovación.\nAntes de comprar un producto, a los usuarios se les da la opción de indicar si tienen la tarjeta o no. Al seleccionar que tienes la tarjeta de membresía, confirmas que la has comprado dentro de un período de 6 meses y que tu tarjeta aún es válida. Si deseas comprar un producto para más de una persona (por ejemplo, tú y tus amigos), debes consultar con todas las personas si tienen la tarjeta o no. Si no la tienen, deberán tenerla para obtener el beneficio.\nEjemplo: Quieres viajar con tu amigo John. Tienes la tarjeta de membresía de BAIS pero John no la tiene. Debes agregar el viaje dos veces a tu carrito de compras: una vez con la opción de que tienes la tarjeta y otra vez con la opción de que no tienes la tarjeta. No hacerlo se considera una violación de nuestros Términos y Condiciones.\nSi un individuo compra un producto como miembro pero sin tener la tarjeta de membresía, esto se considera una violación de nuestros Términos y Condiciones. En este caso, BAIS se pondrá en contacto con el individuo y solicitará una prueba de membresía (correo electrónico o imagen de la tarjeta). También podemos pedir al individuo que presente su tarjeta de membresía antes o durante el evento. Si el individuo no puede demostrar su membresía, se le pedirá que pague la diferencia antes de unirse al evento.\n\nINCUMPLIMIENTO DE NUESTROS TÉRMINOS Y CONDICIONES:\nEn caso de que no cumplas con estos T&C, BAIS puede suspender temporalmente, cancelar tu perfil sin previo aviso y/o retener el pago hasta que se resuelva el problema. Cualquier suspensión o cancelación no te otorga derecho a ninguna compensación.\nEn caso de discrepancia entre los T&C y una condición específica de una oferta proporcionada por BAIS, prevalecerá esta última. Si alguna disposición o disposiciones de estos Términos de Uso se consideran nulas o inaplicables, ya sea en su totalidad o en parte, por cualquier tribunal competente o entidad administrativa, dicha nulidad o inaplicabilidad no afectará las demás disposiciones de estos Términos de Uso.\nINCUMPLIMIENTO DE OBLIGACIONES LEGALES:\nEn caso de prueba o sospecha de actividad ilegal por parte de nuestros usuarios, incluido, entre otros, el acoso, la difusión de rumores e información falsa, y la difusión de malware, BAIS puede notificar y cooperar con la policía y las autoridades legales competentes.\nRESEÑAS, COMENTARIOS, CORREOS ELECTRÓNICOS Y OTRO CONTENIDO:\nLos visitantes pueden publicar reseñas, comentarios y otro contenido, y enviar sugerencias, ideas, comentarios, preguntas u otra información, siempre que el contenido no sea ilegal, obsceno, amenazante, difamatorio, invasivo de la privacidad, infrinja los derechos de propiedad intelectual o sea de otro modo perjudicial o objetable y no consista en o contenga virus de software, campañas políticas, solicitudes comerciales, cadenas de mensajes, envíos masivos o cualquier forma de \"spam\". No puedes utilizar una dirección de correo electrónico falsa, hacerse pasar por otra persona o entidad, ni tergiversar el origen de un contenido o tarjeta. BAIS se reserva el derecho (pero no la obligación) de eliminar o editar dicho contenido, aunque no revisamos regularmente el contenido publicado. Si publicas contenido o envías material y a menos que indiquemos lo contrario, otorgas a BAIS y sus asociados un derecho no exclusivo, libre de regalías, perpetuo, irrevocable y totalmente sublicenciable para usar, reproducir, modificar, adaptar, publicar, traducir, crear obras derivadas, distribuir y mostrar dicho contenido en todo el mundo en cualquier medio. Concedes a BAIS y a sus asociados y sublicenciatarios el derecho de usar el nombre que envías en conexión con dicho contenido, si así lo eligen. Declaras y garantizas que posees o controlas todos los derechos sobre el contenido que publicas, que el contenido es preciso, que el uso del contenido que proporcionas no viola esta política y no causará daño a ninguna persona o entidad, y que indemnizará a BAIS o a sus asociados por todas las reclamaciones resultantes del contenido que proporcionas. BAIS tiene el derecho pero no la obligación de supervisar y editar o eliminar cualquier actividad o contenido. No asumimos responsabilidad y no nos hacemos responsables de ningún contenido publicado por ti o cualquier tercero.\nDESCRIPCIÓN DEL PRODUCTO:\nBAIS y sus asociados intentan ser lo más precisos posible al generar descripciones de productos o servicios. Lo hacemos principalmente consultando diferentes fuentes creíbles para obtener la mayor cantidad de información posible. Estas descripciones pueden hacer referencia a las descripciones de cualquier producto que vendemos, ya sea físico o digital. Si una descripción de un producto no coincide estrechamente con lo que se te ha entregado, contáctanos lo antes posible.\nPAGOS:\nAceptamos compras mediante el uso de tarjetas de débito y crédito. Nuestro sistema acepta tarjetas VISA, MASTERCARD y AMERICAN EXPRESS. Todos los pagos deben realizarse en línea en nuestro sitio web o en nuestra aplicación móvil. Nuestro sitio web utiliza cifrado SSL para garantizar que la transacción se realice de manera segura y que ningún dato personal, incluidas, entre otras, direcciones de correo electrónico y datos de tarjetas de crédito, sea accesible para hackers y otros atacantes. Todos los usuarios que compren un producto en baisargentina.com deben pagar una tarifa de procesamiento además del precio del producto. La tarifa de procesamiento puede variar entre el 2% y el 5% según la categoría del producto, ya sea coorganizado o no, u otras razones. Si deseas evitar esta tarifa de procesamiento, puedes transferir la cantidad a nuestra cuenta bancaria o pagar en efectivo en nuestra oficina.\nConsulta nuestra Política de Tarifas de Procesamiento para obtener más información sobre las tarifas de procesamiento.\nRECOLECCIÓN Y USO DE INFORMACIÓN:\nAl utilizar nuestro servicio, es posible que te solicitemos que nos proporciones cierta información personal identificable que se pueda utilizar para contactarte o identificarte. La información personal identificable puede incluir, entre otras cosas, tu nombre y dirección de correo electrónico (\"Información personal\"). Recopilamos esta información con el propósito de proporcionar el servicio, identificarte y comunicarnos contigo, responder a tus solicitudes/consultas y mejorar nuestros servicios.\nCOMUNICACIONES:\nPodemos utilizar tu información personal para contactarte con newsletter informativos, marketing o materiales promocionales y otra información que pueda ser de interés para ti. Puedes optar por no recibir alguna o todas estas comunicaciones siguiendo el enlace para darte de baja o las instrucciones proporcionadas en cualquier correo electrónico que te enviemos.\nNewsletter:\nAl suscribirte a nuestro newsletter, aceptas recibir newsletter informativos de nuestra parte. El objetivo de nuestro servicio de newsletter es mantener actualizados a nuestros clientes y visitantes sobre nuevos lanzamientos de software o nuevas ofertas de servicios. La suscripción a nuestro servicio de newsletter no es obligatoria, y todos los usuarios deben ingresar su información y aceptar nuestros Términos y Condiciones para ser agregados a nuestra lista de newsletter. Todos los newsletter enviados tienen el botón de Anular suscripción en la parte inferior del correo electrónico, brindando al destinatario la opción de anular la suscripción.\nFRECUENCIA:\nLa frecuencia de los newsletter será de una a dos veces por semana como máximo.\n\nLIMITACIÓN DE RESPONSABILIDAD:\nNos reservamos el derecho exclusivo de modificar o interrumpir el boletín en cualquier momento con o sin previo aviso a los suscriptores. No seremos responsables ante los suscriptores ni ante ningún tercero si ejercemos dicho derecho. Cualquier nueva característica que aumente o mejore los servicios actuales en este sitio también estará sujeta a estos Términos de Uso.\nNos reservamos el derecho exclusivo de dar de baja a usuarios/visitantes de nuestro servicio de boletín, sin previo aviso. Lo haremos con cualquier suscriptor que consideremos registrado con datos falsos.\nCORREO DE BIENVENIDA DE SUSCRIPCIÓN:\nNuestro sistema envía automáticamente un correo de bienvenida a todos los nuevos suscriptores de nuestro boletín semanal. El propósito de este correo electrónico es saludar a los suscriptores y brindarles una imagen más clara de nuestros servicios y valores.\n\nPOLÍTICA DE PRIVACIDAD:\nNo comunicaremos, difundiremos, publicaremos ni daremos a conocer tu Información Personal a menos que lo autorices explícitamente. Podrás cambiar la configuración de tu suscripción o eliminarla en cualquier momento.\nPOLÍTICA DE COMPRA Y REEMBOLSO:\nConsulta nuestra Política de Reembolso.\nSi tienes algún problema o pregunta, contáctanos por correo electrónico a info@baisargentina.com o por Whatsapp al +541136918877.\nENVÍO:\nCasi todos nuestros productos o servicios son de formato digital y la mayoría de los productos o servicios no requieren ningún envío.\nLa opción de envío se aplica a nuestros productos físicos, como la Tarjeta de Membresía de BAIS. Al comprar un producto físico, se le brinda al usuario la opción de enviar el producto a su ubicación a una tarifa fija o recogerlo en persona en nuestra oficina. Solo podemos enviar a direcciones dentro del territorio argentino. Cualquier dirección fuera de Argentina no será elegible para entrega gratuita.\nCONTACTO:\nPuedes contactarnos enviando un correo electrónico a nuestra dirección info@baisargentina.com o un mensaje a nuestra página de Instagram (@baisargentina).\n- Llamada telefónica/Whatsapp: +54 11 36918877\n- Correo electrónico: info@baisargentina.com\n- Oficina: Ayacucho 1571, Planta Baja, Ciudad Autónoma de Buenos Aires, Argentina.\n\nEsperamos que esta información aclare cualquier pregunta o inquietud que puedas tener. Para cualquier asistencia adicional, no dudes en comunicarte con nosotros. ¡Gracias por elegir a BAIS Argentina!\n\n',
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lato',
                            letterSpacing: 0.0,
                          ),
                    ),
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
