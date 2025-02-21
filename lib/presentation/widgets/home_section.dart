import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeSection extends StatelessWidget {
  final Size size;
  final Key sectionKey;
  const HomeSection({super.key, required this.size, required this.sectionKey});

  @override
  Widget build(BuildContext context) {
    double width = size.width;
    return Stack(
      key: sectionKey,
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: size.height,
          child: Opacity(
            opacity: 0.2,
            child: Image.asset('assets/images/home.jpg', fit: BoxFit.cover,),
          ),
        ),
        SizedBox(
          width: width >= 750 ? width * 0.5 : width * 0.98,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // SizedBox(height: 0.15 * width,),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: AutoSizeText(
                  'Olá, ',
                  maxFontSize: 70,
                  minFontSize: 50,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 0.05 * width,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: AutoSizeText(
                  'sou Otávio Freitas',
                  maxFontSize: 70,
                  minFontSize: 50,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 0.05 * width,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical:0.5
                ),
                child: AutoSizeText(
                  'Desenvolvedor Mobile',
                  maxFontSize: 40,
                  minFontSize: 25,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 0.02 * width,
                  ),
                ),
              ),
              SizedBox(height: 0.08 * width,),
            ],
          ),
        ),
      ],
    );
  }
}