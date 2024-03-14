import 'package:audio_tales_app/pages/search_audio/widgets/search_audio_widget.dart';
import 'package:audio_tales_app/pages/search_audio/widgets/search_form.dart';
import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:audio_tales_app/widgets_general/drawer/drawer_navigation.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_blue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class SearchAudio extends StatelessWidget {
  const SearchAudio({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(140, 132, 226, 1.0),
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: SvgPicture.asset(
              "assets/svg_assets/frame.svg",
              fit: BoxFit.none,
            ),
          ),
          backgroundColor: const Color.fromRGBO(103, 139, 210, 1),
          title: Padding(
            padding: const EdgeInsets.only(
              left: 70.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Поиск',
                  style: globals.AppTextStyles.headline.copyWith(
                    fontSize: 36.0,
                    letterSpacing: 0.5,
                    color: const Color.fromRGBO(246, 246, 246, 1.0),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/svg_assets/three_points.svg",
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: const Drawer(
          child: DrawerNavigation(),
        ),
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
        bottomNavigationBar: const BottomNavigation(),
        body: Stack(
          children: [
            CustomPaint(
              painter: MasterPainterBlue(),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17.0,
                      right: 17.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Найди потеряшку",
                          style: globals.AppTextStyles.bodyline.copyWith(
                            fontSize: 16.0,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SearchWidget(),
                         const SizedBox(
                        height: 35.0,
                      ),
                        const SearchAudioWidget(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const SearchAudioWidget(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const SearchAudioWidget(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const SearchAudioWidget(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const SearchAudioWidget(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const SearchAudioWidget(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const SearchAudioWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
