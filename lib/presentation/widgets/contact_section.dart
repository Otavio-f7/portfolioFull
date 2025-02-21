
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final Key sectionKey;
  final Size size;
  const ContactSection({super.key, required this.sectionKey, required this.size});

  void openLink(String link) async {
    if (await canLaunchUrl(Uri.parse(link))) {
      await launchUrl(Uri.parse(link));
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 50,),
          Text('Contato', 
            key: sectionKey,
            style: TextStyle(fontSize: size.width >= 850 ? size.width * 0.035 : 30)
          ),
          Container(
            height: size.width >= 750 ? size.width * 0.23 : size.width * 0.37,
            width: size.width >= 750 ? size.width * 0.6 : size.width * 0.98,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AutoSizeText(
                      'Vamos trocar uma ideia? Sinta-se á vontade pra falar comigo ou ver um pouco da minha rede!',
                      maxFontSize: 28,
                      minFontSize: 8,
                      wrapWords: true,
                        style: TextStyle(
                          fontSize: 0.04 * size.width,
                        )
                    ),
                  ), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton.icon(
                        onPressed: (){
                          openLink('https://www.linkedin.com/in/ot%C3%A1vio-freitas-1953a8169?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3B74DimtnHQuO7jQEqZld3xQ%3D%3D');
                        }, 
                        icon: FaIcon(FontAwesomeIcons.linkedin, size: size.width >= 750 ? 30 : 20,),
                        label: Text('Linkedin', style: TextStyle(fontSize: size.width >= 750 ? 20 : 15,),)
                      ),
                      TextButton.icon(
                        onPressed: (){
                          openLink('https://wa.me/5534991554110?text=Olá%20Otávio%20vi%20seu%20Portifolio');
                        }, 
                        icon: FaIcon(FontAwesomeIcons.whatsapp, size: size.width >= 750 ? 30 : 20,),
                        label: Text('WhatsApp', style: TextStyle(fontSize: size.width >= 750 ? 20 : 15,))
                      ),
                      TextButton.icon(
                        onPressed: (){
                          openLink('https://github.com/Otavio-f7');
                        }, 
                        icon: FaIcon(FontAwesomeIcons.github, size: size.width >= 750 ? 30 : 20,),
                        label: Text('GitHub', style: TextStyle(fontSize: size.width >= 750 ? 20 : 15,))
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}