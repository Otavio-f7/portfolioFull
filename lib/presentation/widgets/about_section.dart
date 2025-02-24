import 'package:flutter/material.dart';
import 'package:portifolio/data/skills_data.dart';
import 'package:portifolio/domain/skill_item.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatefulWidget {
  final Size screenSize;
  final Key sectionKey;

  const AboutSection({super.key, required this.screenSize, required this.sectionKey});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {

    List<SkillItem> skills = skillList; 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: widget.screenSize.width >= 1200 ? 1200 : double.infinity,
          height: widget.screenSize.width >= 1200 ? 300 : 405,
          key: widget.sectionKey,
          child: ListView(
            scrollDirection: widget.screenSize.width >= 1200 ? Axis.horizontal : Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                padding: const EdgeInsets.only(left: 50),
                height: 100,
                width: 500,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sobre mim', style: TextStyle(fontSize: 50),),
                  ],
                ),
              ),
              SizedBox(
                height: widget.screenSize.width >= 1200 ? 0 : 5,
                width: widget.screenSize.width >= 1200 ? 50 : 0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                height: 300,
                width: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Sou desenvolvedor Mobile formado em Analise de Sistemas com 1 ano de experiência em desenvolvimento usando Flutter.', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    const Text('Tenho experiência em suporte ao usuário que norteia muito do que desenvolvo. Aprendo de forma rápida e já interagi com a criação de telas, integrações com API e metodologias ágeis', ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () async {
                            if (await canLaunchUrl(Uri.parse('https://drive.google.com/file/d/15cMnnyavD2a9UfCQVGVgqmsUI-5YClmJ/view?usp=drive_link'))) {
                              await launchUrl(Uri.parse('https://drive.google.com/file/d/15cMnnyavD2a9UfCQVGVgqmsUI-5YClmJ/view?usp=drive_link'));
                            } else {
                              throw 'Could not launch link';
                            }
                          }, 
                          child: Text(
                            'Baixar Curriculo', 
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold
                            ),
                            
                          )
                        ),
                      ],
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ],
    );
  }
}