
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/domain/project_item.dart';
import 'package:portifolio/data/projects_data.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatefulWidget {
  final Size size;
  final Key sectionKey;
  const ProjectsSection({super.key, required this.size, required this.sectionKey});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  List<ProjectItem> projectsData = projectsdata; 

  void openUrl (String url) async{
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = widget.size.width; 
    return SizedBox(
      key: widget.sectionKey,
      width: double.infinity,
      child: Column(
        children: [
          Text('Projetos', style: TextStyle(fontSize: width >= 850 ? width * 0.035 : 30) ),
          SizedBox(
            //height: width >= 750 ? width * 0.38 *  projectsData.length : width * 0.6 *  projectsData.length,
            width: width >= 750 ? width * 0.6 : width * 0.85,
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: width >= 750 ? 1.6 : 1.4,
              ), 
              itemCount: projectsData.length,
              itemBuilder: (ctx, i) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(projectsData[i].folder, fit: BoxFit.contain,)
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width >= 750 ? width * 0.34 : width * 0.7,
                            padding:  EdgeInsets.all(width * 0.01),
                            child: AutoSizeText(
                              projectsData[i].title,
                              maxFontSize: 35,
                              minFontSize: 15,
                              wrapWords: true,
                                style: TextStyle(
                                  fontSize: 0.05 * width,
                              )
                            ),
                          ),
                          Container(
                            width: width >= 750 ? width * 0.34 : width * 0.55,
                            padding: EdgeInsets.all(width * 0.01),
                            child: AutoSizeText(
                              projectsData[i].description,
                              maxFontSize: 27,
                                style: TextStyle(
                                  fontSize: 0.02 * width,
                              )
                            ),
                          ),
                          const Spacer(),
                          TextButton.icon(
                            onPressed: () {
                              openUrl(projectsData[i].link);
                            }, 
                            icon: const Icon(Icons.code),
                            label: const Text ('Ver código')
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}