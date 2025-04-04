import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectBuildItem extends StatelessWidget {
  const ProjectBuildItem({
    super.key, 
    required this.isSize50, 
    required this.folder, 
    required this.title, 
    required this.description, 
    required this.link, required this.year
  });

  final bool isSize50;
  final String folder;
  final String title;
  final String description;
  final String link;
  final String year;

    void openLink(String link) async {
    if (await canLaunchUrl(Uri.parse(link))) {
      await launchUrl(Uri.parse(link));
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      width: isSize50 ? 1200 : double.infinity,
      height: isSize50 ? 500 : 1000,
      child: ListView(
        scrollDirection: isSize50 ? Axis.horizontal : Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            // padding: EdgeInsets.only(left: 50, right: !isSize50 ? 50 : 0),
            height: 500,
            width: 450,
            child: Image.asset(folder, fit: BoxFit.contain,),
          ),
          SizedBox(
            height: isSize50 ? 0 : 5,
            width: isSize50 ? 50 : 0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            height: 450,
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, 
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                ),
                Text(description),
                const SizedBox(height: 20,),
                const Text('INFORMAÇÕES'),
                SizedBox(height: 5, child: Divider(color: Colors.white.withOpacity(0.2),),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Ano'),
                    Text(year)
                  ],
                ),
                SizedBox(height: 10, child: Divider(color: Colors.white.withOpacity(0.2),),),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Stack'),
                    Text('Mobile Development')
                  ],
                ),
                SizedBox(height: 10, child: Divider(color: Colors.white.withOpacity(0.2),),),
                GestureDetector(
                  onTap: ()=> openLink(link),
                  child: Row(
                    children: [
                      Text(
                        'VEJA NO GITHUB', 
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      FaIcon(FontAwesomeIcons.github, color: Theme.of(context).colorScheme.primary),
                    ],
                  ),
                )
              ],
            )
          ),
          SizedBox(
            height: isSize50 ? 0 : 15,
          )
        ],
      ),
    );
  }
}