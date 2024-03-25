import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frifri/src/features/direct_flights/domain/entity/direct_fligths_entity.dart';
import 'package:frifri/src/features/direct_flights/presentation/screens/avia_ticket_screen.dart';
import 'package:frifri/src/features/direct_flights/presentation/widgets/country_text_widget.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.17,
          width: MediaQuery.sizeOf(context).width,
          child: ColoredBox(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const CountryTextWidget(
                      title: 'TBS',
                      subTitle: 'Тбилиси',
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: SvgPicture.asset('assets/icons/avia.svg'),
                    ),
                    CountryTextWidget(
                        title: 'GYD',
                        subTitle: 'Баку',
                        crossAxisAlignment: CrossAxisAlignment.end)
                  ],
                ),
                FractionallySizedBox(
                  widthFactor: 1,
                  child: CustomPaint(
                    painter: DashedLinePainter(),
                    size: const Size(200, 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Стоимость перелета',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            )),
                        Text(
                          '23 690 ₽',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: const Color.fromRGBO(75, 148, 247, 1)),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
