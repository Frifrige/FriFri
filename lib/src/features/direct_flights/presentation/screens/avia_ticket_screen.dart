import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frifri/src/features/direct_flights/data/model/direct_flights_model.dart';
import 'package:frifri/src/features/direct_flights/domain/entity/direct_fligths_entity.dart';
import 'package:frifri/src/features/direct_flights/presentation/widgets/avia_ticket_widget.dart';
import 'package:google_fonts/google_fonts.dart';

/// {@template avia_ticket_screen}
/// AviaTicketScreen widget.
/// {@endtemplate}
class AviaTicketScreen extends StatefulWidget {
  /// {@macro avia_ticket_screen}
  const AviaTicketScreen({super.key});

  @override
  State<AviaTicketScreen> createState() => _AviaTicketScreenState();
}

/// State for widget AviaTicketScreen.
class _AviaTicketScreenState extends State<AviaTicketScreen> {
  final List<DirectFligthsEntity> _items = List<DirectFligthsEntity>.generate(
    3,
    (index) => DirectFligthsEntity(
        uuid: '200',
        departureLocation: 'Тбилиси',
        placeOfArrival: 'Баку',
        placeOfArrivalCountryCode: 'TBS',
        departureLocationCountryCode: 'GYD',
        flightTime: '2ч 35м',
        price: '23.690'),
  );

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Color.fromRGBO(237, 239, 244, 1),
          systemNavigationBarColor: Color.fromRGBO(237, 239, 244, 1),
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(237, 239, 244, 1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(237, 239, 244, 1),
          centerTitle: true,
          title: RichText(
              text: TextSpan(
                  text: 'Прямые рейсы из ',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  children: [
                TextSpan(
                    text: 'Тбилиси',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(75, 148, 247, 1)))
              ])),
        ),
        body: SafeArea(
          child: ReorderableListView(
            clipBehavior: Clip.hardEdge,
            proxyDecorator: (context, index, animation) {
              return AviaTicketWidget(
                directFligthsEntity: _items[index],
                index: index,
                key: Key('$index'),
              );
            },
            padding: const EdgeInsets.only(left: 24, right: 24),
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final DirectFligthsEntity item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
              });
            },
            children: <Widget>[
              for (int index = 0; index < _items.length; index += 1)
                AviaTicketWidget(
                  directFligthsEntity: _items[index],
                  key: Key('$index'),
                  index: index,
                )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 21),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 78,
                width: MediaQuery.sizeOf(context).width,
                child: const ColoredBox(
                  color: Colors.white,
                  child: Row(
                    children: [],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final dashedlinePainter = Paint();
    dashedlinePainter.strokeWidth = 1.5;
    dashedlinePainter.style = PaintingStyle.stroke;
    dashedlinePainter.color = const Color.fromRGBO(165, 168, 176, 1);

    double dashWidth = 5;
    double dashSpace = 5;
    double startX = 20;
    double endX = size.width - 20;
    final path = Path();

    while (startX < endX) {
      path.moveTo(startX, size.height / 2);
      path.lineTo(startX + dashWidth, size.height / 2);
      startX += dashWidth + dashSpace;
    }

    final halfCirclePaint = Paint()
      ..color = const Color.fromRGBO(237, 239, 244, 1)
      ..style = PaintingStyle.fill;

    final halfCircleRadius = size.height / 1.5;

    final firstHalfCircleRect = Rect.fromCircle(
        center: Offset(0, size.height / 2), radius: halfCircleRadius);
    final secondHalfCircleRect = Rect.fromCircle(
        center: Offset(size.width, size.height / 2), radius: halfCircleRadius);

    final firstHalfCirclePath = Path()
      ..moveTo(0, size.height / 2)
      ..arcTo(firstHalfCircleRect, -math.pi / 2, math.pi, false);

    final secondHalfCirclePath = Path()
      ..moveTo(size.width, size.height / 2)
      ..arcTo(secondHalfCircleRect, math.pi / 2, math.pi, false);

    canvas.drawPath(path, dashedlinePainter);
    canvas.drawPath(firstHalfCirclePath, halfCirclePaint);
    canvas.drawPath(secondHalfCirclePath, halfCirclePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
