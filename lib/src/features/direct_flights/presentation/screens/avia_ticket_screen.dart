import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:frifri/src/features/direct_flights/data/model/direct_flights_model.dart';
import 'package:frifri/src/features/direct_flights/domain/entity/direct_fligths_entity.dart';
import 'package:frifri/src/features/direct_flights/presentation/widgets/avia_ticket_widget.dart';

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
    100,
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
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView(
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
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final dashedlinePainter = Paint();
    dashedlinePainter.strokeWidth = 1;
    dashedlinePainter.style = PaintingStyle.stroke;

    final arcPainter = Paint();
    arcPainter.color = const Color.fromRGBO(237, 239, 244, 1);
    arcPainter.style = PaintingStyle.stroke;
    arcPainter.strokeWidth = 0;

    double dashWidth = 5;
    double dashSpace = 5;
    double startX = 20;
    double endX = size.width - 20;
    final path = Path();

    final arcPath = Path();

    arcPath.moveTo(0, size.height / 2);
    arcPath.arcTo(
        Rect.fromCircle(center: Offset(0, size.height / 2), radius: 50),
        -3.14 / 2,
        3.14,
        false);

    while (startX < endX) {
      path.moveTo(startX, size.height / 2);
      path.lineTo(startX + dashWidth, size.height / 2);
      startX += dashWidth + dashSpace;
    }

    arcPath.moveTo(size.width, size.height / 2);
    arcPath.arcTo(
        Rect.fromCircle(
            center: Offset(size.width, size.height / 2), radius: 50),
        3.14 / 2,
        3.14,
        false);

    canvas.drawPath(path, dashedlinePainter);
    // canvas.drawPath(arcPath, arcPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class BigDashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final dashedlinePainter = Paint();
    dashedlinePainter.strokeWidth = 2;
    dashedlinePainter.style = PaintingStyle.stroke;
    dashedlinePainter.color = const Color.fromRGBO(165, 168, 176, 1);
    double dashSpace = 5;
    double startX = 0;
    double endX = size.width;
    final path = Path();

    final double commonDashLength = (size.width + dashSpace) / 32;
    final double reducedDashLength = commonDashLength / 2;

    while (startX < endX) {
      double dashLength = startX + commonDashLength >= endX
          ? reducedDashLength
          : commonDashLength;

      path.moveTo(startX, size.height / 2);
      path.lineTo(startX + dashLength, size.height / 2);
      startX += dashLength + dashSpace;
    }

    canvas.drawPath(path, dashedlinePainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
