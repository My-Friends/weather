import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common/colors/app_colors.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.whiteYellow,
              AppColors.orange,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "assets/icon/icon_search.svg",
                    height: 40,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icon/icon_circle.svg",
                        height: 10,
                      ),
                      const SizedBox(width: 7),
                      SvgPicture.asset(
                        "assets/icon/icon_circle.svg",
                        height: 10,
                      ),
                      const SizedBox(width: 7),
                      SvgPicture.asset(
                        "assets/icon/icon_rectangle.svg",
                        height: 10,
                      ),
                      const SizedBox(width: 7),
                      SvgPicture.asset(
                        "assets/icon/icon_circle.svg",
                        height: 10,
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    "assets/icon/icon_tab.svg",
                    height: 40,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Stockholm,\nSweden",
                    style: TextStyle(fontSize: 45),
                  ),
                  Text(
                    "Tue, Jun 30",
                    style: TextStyle(fontSize: 10, fontFamily: "inter_thin"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
