import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'politicasde_reembolso_model.dart';
export 'politicasde_reembolso_model.dart';

class PoliticasdeReembolsoWidget extends StatefulWidget {
  const PoliticasdeReembolsoWidget({super.key});

  @override
  State<PoliticasdeReembolsoWidget> createState() =>
      _PoliticasdeReembolsoWidgetState();
}

class _PoliticasdeReembolsoWidgetState
    extends State<PoliticasdeReembolsoWidget> {
  late PoliticasdeReembolsoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticasdeReembolsoModel());
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
        body: Align(
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
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
                          'Politicas de reembolso \nBAIS Argentina',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                      EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 20.0),
                  child: Text(
                    'Esta Política de Reembolso contiene información sobre asuntos relacionados con solicitudes de reembolso y los derechos del cliente.\nEn este documento, \"nosotros\", \"nos\", \"nuestro\", \"nuestra\" se refiere a BAIS Argentina y \"usted\" se refiere al usuario/cliente.\nTabla de Contenidos\nGeneral\nTarifa de Procesamiento\nViajes\nEventos Organizados por BAIS\nEventos Organizados por Estudiantes u Otros Organizadores Externos\nCupones y Crédito de Tienda\nViolaciones de Términos y Condiciones y Política de Reembolso\n\n\n1. General\n1.1 – BAIS es una plataforma de organización de actividades donde algunas de ellas tienen costo por la entrada.  BAIS conecta a los organizadores de eventos con posibles compradores. BAIS no es responsable de manejar, administrar o distribuir dinero generado por eventos externos. Como resultado, BAIS puede no poder emitir un reembolso si el organizador del evento ha realizado transferencias y el monto no está disponible para emitir el reembolso. En este caso, debe comunicarse con el organizador del evento para obtener más información.\n1.2 – BAIS se reserva el derecho de agregar, modificar o eliminar estas condiciones en cualquier momento sin la obligación de notificar a los usuarios con anticipación. Es responsabilidad exclusiva del usuario leer y comprender estos artículos antes de realizar un pedido, ya sea en línea u offline. La falta de hacerlo no constituye motivo para un retorno parcial o total por defecto.\n1.3 – Antes de comprar cualquier producto en nuestro sitio web, le recomendamos encarecidamente que lea detenidamente la Política de Reembolso. Al realizar un pedido en nuestra plataforma (sitio web o aplicación), ya sea pagado o no, acepta haber leído, entendido y aceptado estas condiciones.\n1.4 – Algunos productos o servicios pueden tener sus propias condiciones de reembolso mencionadas en la descripción del producto. Si un producto tiene su propia condición de reembolso, esa condición prevalecerá sobre esta Política de Reembolso.\n1.5 – Todas las compras realizadas en cualquier plataforma de BAIS, ya sea en el sitio web o la aplicación móvil, independientemente del método de pago, pago en línea, efectivo o transferencia bancaria, están sujetas a esta Política de Reembolso. Esto significa que al realizar cualquier pago, acepta esta Política de Reembolso (a menos que se indique lo contrario en la descripción del evento).\n1.6 – Utilizamos las plataformas de pago Mercado Pago para recibir pagos a través de tarjetas bancarias y para reembolsar a los clientes. Normalmente emitimos los reembolsos de 7 a 15 días hábiles después de su aprobación. Sin embargo, el monto puede no aparecer en su cuenta hasta 10 días después. El tiempo que tarda en aparecer el monto en su cuenta está completamente fuera de nuestro control y depende de la plataforma de pago y su banco, así como de las regulaciones. Si no ha recibido el reembolso después de algunas semanas, comuníquese con nosotros para investigar y luego con su banco.\n1.7 – Si no puede asistir a un evento o viaje y cree que tiene derecho a un reembolso, envíe su solicitud de reembolso a info@baisargentina.com.\n1.8 – Estos Términos y Condiciones Generales de Compra no afectan ni afectarán sus derechos legales como consumidor.\n2. Tarifa de Procesamiento\n2.1 – BAIS agrega una tarifa de procesamiento sobre los precios de los productos o servicios. La tarifa de procesamiento siempre se muestra en el Carrito y las páginas de Pago.\n2.2 – Algunos productos o servicios pueden no tener tarifas adicionales agregadas al precio del producto. Esto no significa que no haya tarifas involucradas.\n2.3 – Dependiendo del acuerdo entre BAIS y el organizador, las tarifas pueden estar implícitamente incluidas en el precio del producto.\n2.4 – Si se agrega una tarifa al precio del producto, el precio del producto se reembolsará y la tarifa de procesamiento agregada al precio del producto no se reembolsará.\n2.5 – Si se incluye una tarifa en el precio del producto, la tarifa de procesamiento no será visible ni comunicada al usuario. En este caso, el monto total pagado incluye el precio base del producto más la tarifa de procesamiento. La tarifa de procesamiento no se reembolsará.\n2.6 – Las tarifas de procesamiento no son reembolsables bajo ninguna circunstancia, a menos que BAIS lo acuerde.\n2.7 – BAIS se reserva el derecho de comunicar la tarifa de procesamiento incluida en el precio de un producto o no.\n2.8 – Para obtener más información, consulte nuestra Política de Tarifas de Procesamiento.\n3. Viajes\n3.1 – Todos los viajes en las plataformas de BAIS son organizados por agencias de viajes registradas como Wonderworld Travel Agency (Legajo N°18.248) u otras agencias de viajes, y promocionados por BAIS. BAIS no organiza ninguno de sus viajes, sino que utiliza sus plataformas para publicitar los viajes de otras agencias. Como resultado, tenemos muy poco o ningún poder para realizar reembolsos por nuestra cuenta. Es discreción del organizador aceptar o no una solicitud de reembolso. Si el organizador se niega a aprobar una solicitud de reembolso, BAIS no puede intervenir ni cambiar la decisión.\n3.2 – La mayoría de nuestros viajes duran más de 24 horas, debe solicitar un reembolso 10 días antes de la salida. Cualquier solicitud de reembolso dentro del período de 10 días puede no ser aprobada por la agencia de viajes. Los viajes especiales, como nuestro viaje y otros viajes más largos, tienen condiciones especiales. Los depósitos no serán reembolsables por defecto, y el resto de los pagos están sujetos a las políticas de reembolso de las agencias con las que colaboramos. Cualquier solicitud de reembolso realizada menos de dos semanas antes de la salida deberá ser analizada y aprobada o denegada por la agencia.\n3.3 – Si un viaje dura un solo día, es decir, el viaje desde la salida hasta la llegada dura menos de 24 horas, y no puede asistir, debe solicitar un reembolso al menos 72 horas antes de la salida. Cualquier solicitud de reembolso dentro de un período de 72 horas puede no ser aprobada por la agencia de viajes.\n3.4 – Los viajes comprados con un código de descuento o a través de una oferta especial pueden no ser reembolsados.\n3.5 – Cada viaje tiene su propio punto y hora de encuentro, que se incluyen en el itinerario y la información del viaje en el sitio web o la aplicación. Se recomienda encarecidamente que todos los viajeros lleguen a tiempo. Es posible que no tenga derecho a un reembolso parcial o total si llega tarde. Los organizadores no tienen la obligación de esperar a los viajeros que llegan tarde. Si pierde el autobús, debe comunicarse con nosotros de inmediato, pero eso por sí solo no garantiza un reembolso. Perder un autobús simplemente porque llegó tarde (por cualquier motivo) no constituye motivo para un reembolso.\n3.6 – No poder unirse a un viaje (por cambiar de opinión, enfermedad repentina o error al comprar el(los) boleto(s)) no constituirá motivo para un reembolso. Consulte los puntos 3.2 y 3.3.\n3.7 – Si compra un viaje pero nos informa que desea cancelar su boleto menos de 72 horas o 10 días antes de que comience el viaje (consulte los puntos 3.3 y 3.2), no tendrá derecho a un reembolso. La única solución en tal caso sería encontrar un reemplazo para que vaya en su lugar. Si encuentra un reemplazo, deberá informarnos con anticipación para que cambiemos la información que ha proporcionado. Si encontramos un reemplazo por usted, lo informaremos y le reembolsaremos.\n3.8 – A veces, un evento puede agotarse o cancelarse, pero aún estar disponible para su compra en nuestras plataformas. Hacemos todo lo posible para actualizar el sitio web y la aplicación lo antes posible y mantener toda la información precisa y actualizada, sin embargo, puede haber momentos en que no sea posible actualizar el sitio web/aplicación de inmediato o que el organizador no nos informó a tiempo. Si compra un evento o producto que ha sido cancelado pero aún está disponible para su compra en nuestro sitio web/aplicación, le informaremos lo antes posible y tendrá derecho a un reembolso.\n3.9 – El depósito pagado para viajes donde el medio de transporte el aéreo no es reembolsable por defecto. Es discreción de BAIS reembolsar o no casos específicos.\n3.10 – Si un evento, como un viaje, sufre alteraciones importantes, puede optar por confirmar su pedido para el evento alterado o solicitar un reembolso (por el precio de venta de su(s) boleto(s), incluidos los costos administrativos por cada boleto) dentro del período que hemos establecido. Si no está de acuerdo con el nuevo plan o no puede asistir por cualquier motivo, debe informarnos dentro de las 72 horas (y siempre 24 horas antes de la nueva fecha). Si no nos informa, asumiremos que está de acuerdo con la nueva fecha y confirmaremos su asistencia, después de lo cual no tendrá derecho a solicitar un reembolso. Una \"alteración importante\" es un cambio que, según nuestro juicio y el del Organizador, hace que el evento difiera considerablemente de lo que el comprador de boletos general y razonablemente esperaba. Esto incluye, entre otros, cambiar la fecha del evento o el horario completo del evento. En tales casos, le corresponde a BAIS decidir si se debe otorgar o no un reembolso (si el evento es organizado y gestionado por BAIS). De lo contrario, le corresponde al organizador del evento tomar tal decisión.\n3.11 – Cuando un viaje se cancela o pospone y nos informa que no puede asistir, le reembolsaremos su pago.\n4. Eventos Organizados por BAIS\nEstos son eventos organizados, gestionados y dirigidos por BAIS.\n4.1 – Debe solicitar un reembolso al menos 7 días o más antes de que comience el evento para tener derecho a recibir un reembolso.\n4.2 – Si solicita un reembolso menos de 7 días antes del inicio del evento, no tendrá derecho a un reembolso.\n4.3 – Si la fecha de un evento se cambia a otra fecha y no puede asistir al evento en la nueva fecha, tendrá derecho a un reembolso.\n4.4 – Un reembolso siempre excluye la tarifa de procesamiento. Consulte la sección de Tarifa de Procesamiento para obtener más información.\n5. Eventos Organizados por Estudiantes u Otros Organizadores Externos\nEstos son eventos donde BAIS es solo una plataforma de venta de entradas y no participa en la organización, promoción o gestión del evento. Estos eventos tienen sus propios organizadores de eventos (en el resto de esta sección, referidos como el Organizador).\n5.1 – Si un evento es organizado por cualquier parte que no sea BAIS, la decisión de aprobar o rechazar una solicitud de reembolso depende únicamente del Organizador y no de BAIS. Transmitimos todas las solicitudes de reembolso al Organizador y les permitimos decidir.\n5.2 – En eventos no organizados por BAIS, el Organizador es la entidad legalmente responsable del evento. BAIS no será responsable en ningún caso, por nada más allá de garantizar el correcto funcionamiento de nuestras plataformas.\n5.3 – BAIS no tiene control y no desempeña ningún papel en el manejo o la gestión del dinero recolectado a través de la venta de boletos (excepto por la tarifa de procesamiento).\n5.4 – El Organizador tiene control total sobre el dinero recolectado a través de la venta de boletos, por lo tanto, es legalmente responsable de su manejo. Cualquier reclamo, queja o asunto legal debe dirigirse al Organizador, no a BAIS.\n5.5 – BAIS permite a los organizadores de eventos establecer su propia política de reembolso. Por ejemplo, pueden optar por tener una política sin reembolso para su evento. En este caso, la política de reembolso del Organizador prevalece y tiene prioridad sobre la política estándar de reembolso de BAIS. Esto significa que el Organizador tiene pleno control sobre las solicitudes de reembolso y BAIS no tiene voz en este asunto.\n5.6 – Cada Organizador es responsable de manejar los reembolsos relacionados con su evento. BAIS no será responsable de ninguna responsabilidad legal/financiera derivada de tales reembolsos o reclamaciones.\n6. Cupones y Crédito de Tienda\n6.1 – Puede haber casos en los que no sea posible reembolsar al cliente en efectivo. En tales casos, ofreceremos un código de cupón que se puede utilizar en el sitio web para comprar otros eventos. Si está registrado como afiliado en nuestro Programa de Referidos, podemos emitir el reembolso como crédito de tienda.\n6.2 – Si compra un producto utilizando un código de cupón, no podremos reembolsar la cantidad que el código de cupón haya deducido de su subtotal.\n7. Violaciones de Términos & Condiciones y Política de Reembolso\n7.1 – Todos los usuarios tienen la opción de elegir la opción de tener la tarjeta de membresía de BAIS para disfrutar del descuento que la tarjeta de BAIS otorga a sus titulares. Al seleccionar esta opción, confirma que tiene la tarjeta y que su tarjeta es válida. Se considera una violación de nuestros Términos y Condiciones elegir esta opción intencionalmente solo para recibir un descuento sin tener una tarjeta de membresía de BAIS válida. En caso de detección, podemos negarnos a aceptar el pedido del cliente si este se niega a pagar la diferencia. En tal caso, deberá cubrir la diferencia adicional o le reembolsaremos el monto total y eliminaremos su pedido.\n',
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
    );
  }
}
