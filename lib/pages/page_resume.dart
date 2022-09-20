//import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:minimal/components/components.dart';
//import 'package:pdfx/pdfx.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/*class ResumePage extends StatefulWidget{
  const ResumePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return _ResumePage();
  }
}*/
//class _ResumePage extends State<ResumePage> {
class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);
  //static Future<PdfDocument> resume = PdfDocument.openAsset('assets/sample.pdf');
  //final pdfController = PdfController(document: resume);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: <Widget>[
                  const MenuBar(),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: marginBottom12,
                      child: Text("Resume", style: headlineTextStyle),
                    ),
                  ),
                  divider,
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: marginBottom24,
                      height: 800,
                      child: SfPdfViewer.asset('resume.pdf'),
                    ),
                  ),
                  divider,
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  //TODO: Add buttons for magnification
  //TODO: Add download button for resume

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SfPdfViewer.asset('assets/resume.pdf')));
  }*/
}
