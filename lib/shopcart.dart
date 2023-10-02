

import 'package:flutter/material.dart';
import 'package:forest_collection/Homepade.dart';
import 'package:page_transition/page_transition.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageCopyWidgetState createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
  
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
   
  }

  @override
  void dispose() {
   

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF1A283B),
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child: SafeArea(
            top: true,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(-0.83, -0.96),
                  child: Container(
                    width: 60,
                    height: 60,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/682/600',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(-0.32, -0.94),
                  child: Text(
                    'Tim Crew',
                    style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(-0.35, -0.86),
                  child: Text(
                    '133 sounds',
                    style: TextStyle(),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.88, -0.94),
                  child: IconButton(
                    icon: const Icon(Icons.api_sharp),
                    color: const Color(0xFFC9C9C9),
                    onPressed: () {},
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.05, 1.08),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 386,
                      height: 66,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0F1B27),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                           Align(
                            alignment:  const AlignmentDirectional(-0.66, -0.0),
                            child: IconButton(
                              icon:   const Icon(Icons.cottage_outlined),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const HomePageWidget(), isIos: true));
        
                              },
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(0.22, -0.06),
                            child: Icon(
                              Icons.mode_of_travel_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.24, -0.06),
                            child: IconButton(
                              icon: const Icon(Icons.shopping_cart),
                              color: Colors.white,
                             onPressed: () {
                              
                             },
                            ),
                          ),
                           Align(
                            alignment: const AlignmentDirectional(0.63, -0.01),
                            child: IconButton(
                              icon: const Icon(Icons.settings_outlined),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.02, -0.59),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/seed/781/600',
                      width: 196,
                      height: 159,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(-0.22, -0.35),
                  child: Text(
                    'Natural Sounds',
                    style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(-0.35, -0.31),
                  child: Text(
                    '26 aounds',
                    style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 10,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.26, 0.35),
                  child: Container(
                    width: 100,
                    height: 583,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0F1B27),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xB50F1B27),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.80, -0.45),
                          child: Container(
                            width: 40,
                            height: 42,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE1C95C),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: IconButton(
                                    icon: const Icon(Icons.air_rounded),
                                    color: Colors.white,
                                    onPressed: () {
                                      
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.80, 0.42),
                          child: Container(
                            width: 40,
                            height: 42,
                            decoration: BoxDecoration(
                              color: const Color(0xFF4F280C),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: IconButton(
                                    icon: const Icon(Icons.air_rounded),
                                    color: Colors.white,
                                   onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.95, -0.53),
                  child: Container(
                    width: 40,
                    height: 42,
                    decoration: BoxDecoration(
                      color: const Color(0xFF27CC80),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: IconButton(
                            icon: const Icon(Icons.access_time),
                            color: Colors.white,
                             onPressed: () {  },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
               
               
                Align(
                  alignment: const AlignmentDirectional(-0.95, -0.37),
                  child: Container(
                    width: 40,
                    height: 42,
                    decoration: BoxDecoration(
                      color: const Color(0xFF554BAE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: IconButton(
                            icon: Icon(Icons.account_balance_outlined),
                            color: Colors.white,
                           onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.95, 0.20),
                  child: Container(
                    width: 40,
                    height: 42,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4A9AAB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Icon(
                            Icons.dehaze,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.94, 0.01),
                  child: Container(
                    width: 40,
                    height: 42,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBF9E9E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: IconButton(
                            icon: const Icon(Icons.access_time),
                            color: Colors.white,
                            onPressed: () {  },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.94, 0.58),
                  child: Container(
                    width: 40,
                    height: 42,
                    decoration: BoxDecoration(
                      color: const Color(0xFF372983),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Icon(
                            Icons.assistant_navigation,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.94, 0.75),
                  child: Container(
                    width: 40,
                    height: 42,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9849AD),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: IconButton(
                            icon: Icon(Icons.deblur),
                            color: Colors.white,
                             onPressed: () {  },
                           
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.01, 0.02),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/seed/781/600',
                      width: 196,
                      height: 159,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.02, 0.65),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/seed/781/600',
                      width: 196,
                      height: 159,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(-0.35, 0.19),
                  child: Text(
                    '10 sounds',
                    style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 10,
                        ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(-0.23, 0.15),
                  child: Text(
                    'Sound of forest',
                    style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(-0.29, 0.65),
                  child: Text(
                    'Sound of rain',
                    style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
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
