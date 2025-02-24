import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ConectSection extends StatefulWidget {
  const ConectSection({super.key, required this.screenSize, required this.sectionKey});

  final Size screenSize;
  final Key sectionKey;

  @override
  State<ConectSection> createState() => _ConectSectionState();
}

  void openLink(String link) async {
    if (await canLaunchUrl(Uri.parse(link))) {
      await launchUrl(Uri.parse(link));
    } else {
      throw 'Could not launch $link';
    }
  }

class _ConectSectionState extends State<ConectSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      key: widget.sectionKey,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: widget.screenSize.width >= 1200 ? 1200 : double.infinity,
          height: widget.screenSize.width >= 1200 ? 300 : 405,
          child: ListView(
            scrollDirection: widget.screenSize.width >= 1200 ? Axis.horizontal : Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                padding: const EdgeInsets.only(left: 50),
                height: 100,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('VAMOS CONVERSAR?', style: TextStyle(fontSize: 50, height: 0.9),),
                    const SizedBox(height: 10,),
                    const Text('Envie um e-mail para:'),
                    Row(
                      children: [
                        const Text('otavioj105@gmail.com'),
                        IconButton(
                          onPressed: (){
                            FlutterClipboard.copy('otavioj105@gmail.com').then((value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('E-mail copiado!')),
                              );
                            });
                          }, 
                          icon: Icon(Icons.copy, size: 20,)
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        IconButton(
                          onPressed: ()=> openLink('https://www.linkedin.com/in/ot%C3%A1vio-freitas-1953a8169?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3B74DimtnHQuO7jQEqZld3xQ%3D%3D'), 
                          icon: FaIcon(FontAwesomeIcons.linkedin, color: Theme.of(context).colorScheme.primary,)
                        ),
                        const SizedBox(width: 15,),
                        IconButton(
                          onPressed: ()=> openLink('https://github.com/Otavio-f7'), 
                          icon: FaIcon(FontAwesomeIcons.github, color: Theme.of(context).colorScheme.primary,)
                        ),
                        const SizedBox(width: 15,),
                        IconButton(
                          onPressed: ()=> openLink('https://wa.me/5534991554110?text=Olá%20Otávio%20vi%20seu%20Portifolio'), 
                          icon: FaIcon(FontAwesomeIcons.whatsapp, color: Theme.of(context).colorScheme.primary,)
                        ),
                        const SizedBox(width: 15,),
                        IconButton(
                          onPressed: ()=> openLink('https://www.instagram.com/otavio.f7?igsh=Z3g5b3kxaHBnOTU2'), 
                          icon: FaIcon(FontAwesomeIcons.instagram, color: Theme.of(context).colorScheme.primary,)
                        ),
                      ],
                    )
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
                    // deve conter o formulario
                  ],
                )
              )
            ],
          ),
        ),
      ],
    );;
  }
}