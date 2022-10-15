// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class QRViewCB extends StatefulWidget {
//   const QRViewCB({
//     Key key,
//   }) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => _QRViewCBState();
// }

// class _QRViewCBState extends State<QRViewCB> {
//   Barcode result;
//   QRViewController controller;
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

//   // In order to get hot reload to work we need to pause the camera if the platform
//   // is android, or resume the camera if the platform is iOS.
//   @override
//   void reassemble() {
//     super.reassemble();
//     if (Platform.isAndroid) {
//       controller.pauseCamera();
//     }
//     controller.resumeCamera();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Container(
//             height: 400,
//             child: _buildQrView(context),
//           ),
//           Flexible(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Container(
//                       margin: EdgeInsets.only(top: 20),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           Container(
//                             decoration: decoration(),
//                             margin: EdgeInsets.all(2),
//                             child: TextButton(
//                                 style: TextButton.styleFrom(
//                                   primary: Colors.white,
//                                   onSurface: Colors.grey,
//                                 ),
//                                 onPressed: () async {
//                                   await controller?.toggleFlash();
//                                   setState(() {});
//                                 },
//                                 child: FutureBuilder(
//                                   future: controller?.getFlashStatus(),
//                                   builder: (context, snapshot) {
//                                     if (snapshot.data != null &&
//                                         snapshot.data == true) {
//                                       return Container(
//                                         child: Icon(
//                                           Icons.flash_on,
//                                           color: Colors.white,
//                                         ),
//                                       );
//                                     } else if (snapshot.data != null &&
//                                         snapshot.data == false) {
//                                       return Container(
//                                         child: Icon(
//                                           Icons.flash_off,
//                                           color: Colors.white,
//                                         ),
//                                       );
//                                     } else {
//                                       return Text('loading');
//                                     }
//                                   },
//                                 )),
//                           ),
//                           Container(
//                             decoration: decoration(),
//                             margin: EdgeInsets.all(2),
//                             child: TextButton(
//                                 style: TextButton.styleFrom(
//                                   primary: Colors.white,
//                                   onSurface: Colors.grey,
//                                 ),
//                                 onPressed: () async {
//                                   await controller?.flipCamera();
//                                   setState(() {});
//                                 },
//                                 child: FutureBuilder(
//                                   future: controller?.getCameraInfo(),
//                                   builder: (context, snapshot) {
//                                     if (snapshot.data != null &&
//                                         describeEnum(snapshot.data) ==
//                                             'front') {
//                                       return Container(
//                                         child: Icon(
//                                           Icons.camera_front,
//                                           color: Colors.white,
//                                         ),
//                                       );
//                                     } else if (snapshot.data != null &&
//                                         describeEnum(snapshot.data) == 'back') {
//                                       return Container(
//                                         child: Icon(
//                                           Icons.camera_rear,
//                                           color: Colors.white,
//                                         ),
//                                       );
//                                     } else {
//                                       return Text('loading');
//                                     }
//                                   },
//                                 )),
//                           ),
//                           Container(
//                             decoration: decoration(),
//                             margin: EdgeInsets.all(2),
//                             child: TextButton(
//                               style: TextButton.styleFrom(
//                                 primary: Colors.white,
//                                 onSurface: Colors.grey,
//                               ),
//                               onPressed: () async {
//                                 await controller?.pauseCamera();
//                               },
//                               child: Icon(
//                                 Icons.pause,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: decoration(),
//                             margin: EdgeInsets.all(2),
//                             child: TextButton(
//                               style: TextButton.styleFrom(
//                                 primary: Colors.white,
//                                 onSurface: Colors.grey,
//                               ),
//                               onPressed: () async {
//                                 await controller?.resumeCamera();
//                               },
//                               child: Icon(
//                                 Icons.play_arrow,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   if (result != null)
//                     Container(
//                       margin: EdgeInsets.all(30),
//                       padding: EdgeInsets.all(30),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black12,
//                             offset: Offset(5, 2),
//                             blurRadius: 5,
//                           )
//                         ],
//                         border: Border(
//                           top: BorderSide(width: 0.5, color: Colors.black12),
//                           left: BorderSide(width: 0.5, color: Colors.black12),
//                           right: BorderSide(width: 0.5, color: Colors.black12),
//                           bottom: BorderSide(width: 0.5, color: Colors.black12),
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                       width: 300,
//                       child: Column(
//                         children: [
//                           Text(
//                             'QR CODE:',
//                             style: TextStyle(fontWeight: FontWeight.w700),
//                           ),
//                           SizedBox(height: 20),
//                           // Text('Barcode Type: ${describeEnum(result.format)}'),
//                           Text('${result.code}'),
//                         ],
//                       ),
//                     )
//                   else
//                     Container(
//                       margin: EdgeInsets.all(30),
//                       padding: EdgeInsets.all(30),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black12,
//                             offset: Offset(5, 2),
//                             blurRadius: 5,
//                           )
//                         ],
//                         border: Border(
//                           top: BorderSide(width: 0.5, color: Colors.black12),
//                           left: BorderSide(width: 0.5, color: Colors.black12),
//                           right: BorderSide(width: 0.5, color: Colors.black12),
//                           bottom: BorderSide(width: 0.5, color: Colors.black12),
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                       ),
//                       width: 300,
//                       child: Column(
//                         children: [
//                           Text(
//                             'QR CODE:',
//                             style: TextStyle(fontWeight: FontWeight.w700),
//                           ),
//                           SizedBox(height: 20),
//                           Text('...'),
//                         ],
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildQrView(BuildContext context) {
//     // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
//     var scanArea = (MediaQuery.of(context).size.width < 400 ||
//             MediaQuery.of(context).size.height < 400)
//         ? 200.0
//         : 300.0;
//     // To ensure the Scanner view is properly sizes after rotation
//     // we need to listen for Flutter SizeChanged notification and update controller
//     return QRView(
//       key: qrKey,
//       onQRViewCreated: _onQRViewCreated,
//       overlay: QrScannerOverlayShape(
//           borderColor: Colors.red,
//           borderRadius: 10,
//           borderLength: 30,
//           borderWidth: 10,
//           cutOutSize: scanArea),
//     );
//   }

//   void _onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
// }

// decoration() {
//   return BoxDecoration(
//     gradient: LinearGradient(
//       colors: [
//         Color.fromRGBO(237, 37, 36, 1),
//         Color.fromRGBO(242, 113, 33, 1),
//       ],
//     ),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.black12,
//         offset: Offset(5, 2),
//         blurRadius: 5,
//       )
//     ],
//     border: Border(
//       top: BorderSide(width: 0.5, color: Colors.black12),
//       left: BorderSide(width: 0.5, color: Colors.black12),
//       right: BorderSide(width: 0.5, color: Colors.black12),
//       bottom: BorderSide(width: 0.5, color: Colors.black12),
//     ),
//     borderRadius: BorderRadius.all(Radius.circular(10)),
//   );
// }
