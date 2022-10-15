import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:provider/provider.dart';

class FloatingMenu extends StatefulWidget {
  final String add;
  final String documents;
  final String favorites;

  FloatingMenu({@required this.add, @required this.documents, @required this.favorites});

  @override
  _FloatingMenuState createState() => _FloatingMenuState(add: add, documents: documents, favorites: favorites);
}

class _FloatingMenuState extends State<FloatingMenu> with SingleTickerProviderStateMixin {
  final String add;
  final String documents;
  final String favorites;
  _FloatingMenuState({@required this.add, @required this.documents, @required this.favorites});

  AnimationController animationController;
  Animation degOneTranslationAnimation, degTwoTranslationAnimation, degThreeTranslationAnimation;
  Animation rotationAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0),
    ]).animate(animationController);
    degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0),
    ]).animate(animationController);
    degThreeTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.75), weight: 35.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.75, end: 1.0), weight: 65.0),
    ]).animate(animationController);
    rotationAnimation = Tween<double>(begin: 180.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: <Widget>[
          Positioned(
              right: 0,
              bottom: 0,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  IgnorePointer(
                    child: Container(
                      color: Colors.transparent,
                      height: 150.0,
                      width: 150.0,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(270), degOneTranslationAnimation.value * 100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation.value))..scale(degOneTranslationAnimation.value),
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(237, 37, 36, 1),
                              Color.fromRGBO(242, 113, 33, 1),
                            ],
                          ),
                        ),
                        child: CircularButton(
                          // color: Colors.blue,
                          width: 50,
                          height: 50,
                          icon: Icon(
                            Icons.star_outline_outlined,
                            color: Colors.white,
                          ),
                          onClick: () {
                            g.global = true;
                            g.favorite = true;
                            Navigator.of(context).pushReplacementNamed(documents);
                            routes.setForwardRoute(documents);
                            routes.setBackRoute(ModalRoute.of(context).settings.name);
                          },
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(225), degTwoTranslationAnimation.value * 100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation.value))..scale(degTwoTranslationAnimation.value),
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(237, 37, 36, 1),
                              Color.fromRGBO(242, 113, 33, 1),
                            ],
                          ),
                        ),
                        child: CircularButton(
                          // color: Colors.black,
                          width: 50,
                          height: 50,
                          icon: Icon(
                            Icons.folder_open_outlined,
                            color: Colors.white,
                          ),
                          onClick: () {
                            g.global = true;
                            g.favorite = false;
                            Navigator.of(context).pushReplacementNamed(documents);
                            routes.setForwardRoute(documents);
                            routes.setBackRoute(ModalRoute.of(context).settings.name);
                          },
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(180), degThreeTranslationAnimation.value * 100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation.value))..scale(degThreeTranslationAnimation.value),
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(237, 37, 36, 1),
                              Color.fromRGBO(242, 113, 33, 1),
                            ],
                          ),
                        ),
                        child: CircularButton(
                          // color: Colors.orangeAccent,
                          width: 50,
                          height: 50,
                          icon: Icon(
                            Icons.add_rounded,
                            color: Colors.white,
                          ),
                          onClick: () {
                            g.edit = false;
                            Navigator.of(context).pushReplacementNamed(add);
                            routes.setForwardRoute(add);
                            routes.setBackRoute(ModalRoute.of(context).settings.name);
                          },
                        ),
                      ),
                    ),
                  ),
                  Transform(
                    transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation.value)),
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(237, 37, 36, 1),
                            Color.fromRGBO(242, 113, 33, 1),
                          ],
                        ),
                      ),
                      child: CircularButton(
                        // color: Colors.red,
                        width: 60,
                        height: 60,
                        icon: Icon(
                          Icons.apps_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        onClick: () {
                          if (animationController.isCompleted) {
                            animationController.reverse();
                          } else {
                            animationController.forward();
                          }
                        },
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onClick;

  CircularButton({this.color, this.width, this.height, this.icon, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon, enableFeedback: true, onPressed: onClick),
    );
  }
}
