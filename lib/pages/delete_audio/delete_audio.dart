import 'package:audio_tales_app/pages/delete_audio/widgets/delete_audio_widget.dart';
import 'package:flutter/material.dart';
import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:audio_tales_app/widgets_general/drawer/drawer_navigation.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_blue.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class DeleteAudio extends StatefulWidget {
  const DeleteAudio({super.key});

  @override
  State<DeleteAudio> createState() => _DeleteAudioState();
}

class _DeleteAudioState extends State<DeleteAudio> {
  bool status = true;
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
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 100.0,
                  top: 50.0,
                ),
                child: SizedBox(
                  width: 210,
                  child: Text(
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    softWrap: true,
                    'Недавно удаленные',
                    style: globals.AppTextStyles.headline.copyWith(
                      fontSize: 37.0,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(246, 246, 246, 1.0),
                      // wordSpacing: -15.0,уменьшает расст между словами
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  right: 5.0,
                ),
                child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(''),
                          content: Container(
                            width: 150.0,
                            height: 150.0,
                            child: Center(
                              child: Text(''),
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Закрыть'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: SvgPicture.asset(
                    "assets/svg_assets/three_points.svg",
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: const Drawer(
          child: DrawerNavigation(),
        ),
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
        bottomNavigationBar: const BottomNavigation(),
        body: SingleChildScrollView(
          child: Stack(
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
                          const SizedBox(
                            height: 165.0,
                          ),
                          Text(
                            "29.01.20",
                            style: globals.AppTextStyles.bodyline.copyWith(
                              color: const Color.fromRGBO(58, 58, 85, 0.5),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          DeleteAudioWidget(
                            selectBool: status,
                            onChanged: (bool value) {
                              setState(() {status =value;});
                            },
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // DeleteAudioWidget(selectBool: status,),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // DeleteAudioWidget(),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // DeleteAudioWidget(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "27.01.20",
                            style: globals.AppTextStyles.bodyline.copyWith(
                              color: const Color.fromRGBO(58, 58, 85, 0.5),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          // DeleteAudioWidget(
                          //   name: 'dsdssssss',
                          //   selectBool: true,
                          //   onPressed: () {},
                          // ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // DeleteAudioWidget(),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // DeleteAudioWidget(),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "25.01.20",
                            style: globals.AppTextStyles.bodyline.copyWith(
                              color: const Color.fromRGBO(58, 58, 85, 0.5),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          // DeleteAudioWidget(),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // DeleteAudioWidget(),
                          const SizedBox(
                            height: 10.0,
                          ),
                          // DeleteAudioWidget(),
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
