import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frifri/src/features/direct_flights/domain/entity/direct_fligths_entity.dart';
import 'package:frifri/src/features/direct_flights/presentation/screens/avia_ticket_screen.dart';
import 'package:frifri/src/features/direct_flights/presentation/widgets/avia_time_widget.dart';
import 'package:frifri/src/features/direct_flights/presentation/widgets/country_text_widget.dart';

/// {@template direct_flights_screen}
/// AviaTicketWidget widget.
/// {@endtemplate}
class AviaTicketWidget extends StatelessWidget {
  /// {@macro direct_flights_screen}
  const AviaTicketWidget(
      {super.key, required this.directFligthsEntity, required this.index});

  final DirectFligthsEntity directFligthsEntity;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.20,
              width: MediaQuery.sizeOf(context).width,
              child: ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CountryTextWidget(
                            title: 'TBS',
                            subTitle: 'Тбилиси',
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          AviaTimeWidget(time: '2ч 35м'),
                          FractionallySizedBox(
                            widthFactor: 0.2,
                            child: CountryTextWidget(
                                title: 'GYD',
                                subTitle: 'Баку',
                                crossAxisAlignment: CrossAxisAlignment.end),
                          )
                        ],
                      ),
                      FractionallySizedBox(
                        widthFactor: 1,
                        child: CustomPaint(
                          painter: BigDashedLinePainter(),
                          size: const Size(200, 50),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
