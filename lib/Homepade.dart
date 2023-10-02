// ignore: file_names

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:forest_collection/shopcart.dart';
import 'package:page_transition/page_transition.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> with SingleTickerProviderStateMixin {
  // ignore: unused_field
  AnimationController? _controller;
  // ignore: unused_field
  Animation? _colorAnimation;

  bool isFav = false;
 
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _controller!.addListener(() {
      setState(() {
        print(_controller!.value);
        print(_colorAnimation!.value);
      });
    });

    _controller!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
         isFav = true;
      } else if (status == AnimationStatus.dismissed) {
        isFav = false;
      }
    });

    _colorAnimation = ColorTween(begin: Colors.white, end: Colors.redAccent.shade200).animate(_controller!);
  }


 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: const Color(0xFF1A283B),
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
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
                  alignment: AlignmentDirectional(-0.53, -0.73),
                  child: AnimatedTextKit(
                   animatedTexts: [
                      TypewriterAnimatedText(
                      'Forest Collection',
                      textStyle: const TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                   ],
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(0.88, -0.94),
                  child: Icon(
                    Icons.api_sharp,
                    color: Color(0xFFC9C9C9),
                    size: 40,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.61, -0.47),
                  child: Container(
                    width: 203,
                    height: 155,
                    decoration: BoxDecoration(
                      color: const Color(0xFF27CC80),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        const Align(
                          alignment: AlignmentDirectional(-0.64, -0.76),
                          child: Text(
                            'Being in the \nforest',
                            style:
                                TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(-0.78, -0.21),
                          child: Text(
                            '3.15s',
                            style:
                                TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF2C3135),
                                      fontSize: 12,
                                    ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(-0.71, 0.82),
                          child: Text(
                            '01',
                            style:
                                TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                          ),
                        ),
                        Hero(
                          tag: "Forest-img" ,
                          child: Align(
                            alignment: const AlignmentDirectional(0.93, 0.88),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Color(0xFF27CC80),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  'https://picsum.photos/seed/672/600',
                                  width: 300,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        
                         Align(
                          alignment: const AlignmentDirectional(0.93, -1.10),
                          child: IconButton(
                            icon: const Icon(Icons.favorite),
                            color: _colorAnimation!.value,
                            onPressed: () {
                              isFav ? _controller!.reverse() : _controller!.forward();

                            },
                            iconSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.58, 0.12),
                  child: Container(
                    width: 203,
                    height: 155,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4D4487),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        const Align(
                          alignment: AlignmentDirectional(-0.71, 0.82),
                          child: Text(
                            '02',
                            style:
                                TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(-0.71, -0.76),
                          child: Text(
                            'Being in the \nRain',
                            style:
                                TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(-0.82, -0.23),
                          child: Text(
                            '3.15s',
                            style:
                                TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF2C3135),
                                      fontSize: 12,
                                    ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.89, 0.77),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://picsum.photos/seed/185/600',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                         Align(
                          alignment: const AlignmentDirectional(0.92, -1.10),
                          child: IconButton(
                            icon: const Icon(Icons.favorite_border),
                            color: _colorAnimation!.value,
                            onPressed: () {
isFav ? _controller!.reverse() : _controller!.forward();
                            },
                            iconSize: 30,
                          ),
                        ),
                      ],
                    ),
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
                      child:  Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.66, -0.07),
                            child: IconButton(
                              icon: const Icon(Icons.cottage_outlined),
                              color: Colors.white,
                              onPressed: (){
                              },
                            ),
                          ),
                           Align(
                            alignment: const AlignmentDirectional(0.22, -0.06),
                            child: IconButton(
                              icon: const Icon(Icons.mode_of_travel_sharp),
                              color: Colors.white,
                             onPressed: (){
        
                             },
                            ),
                          ),
                           Align(
                            alignment: const AlignmentDirectional(-0.24, -0.06),
                            child: IconButton(
                              icon: const Icon(Icons.shopping_cart),
                              color: Colors.white, 
                              onPressed: () {  
                                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HomePageCopyWidget()));
              //                   Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomePageCopyWidget()),
              // );
                              },
                              
                            ),
                          ),
                           Align(
                            alignment: const AlignmentDirectional(0.63, -0.01),
                            child: IconButton(
                              icon: const Icon(Icons.settings_outlined),
                              color: Colors.white,
                              onPressed: (){
        print("Button pew");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.90, -0.52),
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'NATURAL',
                          style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF374045),
                                fontWeight: FontWeight.bold,
                              ),
                        )
                      ],
                      style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF5C6972),
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.84, -0.28),
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'FOREST',
                          style:TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFFCCCCCC),
                                fontWeight: FontWeight.bold,
                              ),
                        )
                      ],
                      style:TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFFBABABA),
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.75, -0.08),
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'RAIN',
                          style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF374045),
                                fontWeight: FontWeight.bold,
                              ),
                        )
                      ],
                      style:TextStyle(),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.84, 0.14),
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'OTHERS',
                          style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF374045),
                                fontWeight: FontWeight.bold,
                              ),
                        )
                      ],
                      style: TextStyle(),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.56, 0.74),
                  child: Container(
                    width: 203,
                    height: 155,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE1C95C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        const Align(
                          alignment: AlignmentDirectional(-0.71, 0.82),
                          child: Text(
                            '03',
                            style:
                               TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(-0.71, -0.81),
                          child: Text(
                            'Being in the \nforest',
                            style:
                               TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(-0.82, -0.25),
                          child: Text(
                            '3.15s',
                            style:
                                TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF2C3135),
                                      fontSize: 12,
                                    ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.86, -0.81),
                          child: Icon(
                            Icons.collections_bookmark,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.93, 0.92),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://picsum.photos/seed/308/600',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
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
      ),
    );
  }
}
