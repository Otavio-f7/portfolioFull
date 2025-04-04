import 'package:flutter/material.dart';
import 'package:portifolio/data/projects_data.dart';
import 'package:portifolio/domain/project_item.dart';
import 'package:portifolio/presentation/widgets/project_build_item.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({super.key, required this.screenSize, required this.sectionKey});

  final Size screenSize;
  final Key sectionKey;

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {

  List<ProjectItem> projectsData = projectsdata; 
  @override
  Widget build(BuildContext context) {
    return Column(
      key: widget.sectionKey,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
                height: 100,
                width: 500,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Meus Projetos', style: TextStyle(fontSize: 50, height: 0.9),),
                  ],
                ),
              ),
        SizedBox(
          width: widget.screenSize.width >= 1100 ? 1100 : 500,
          height: widget.screenSize.width >= 1100 ? 500 * 9 : 1000 * 9, //qnt de itens
          child: ListView.builder(
            itemCount: projectsData.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, i){
              return ProjectBuildItem(
                isSize50: widget.screenSize.width >= 1100, 
                folder: projectsData[i].folder, 
                title: projectsData[i].title, 
                description: projectsData[i].description,
                link: projectsData[i].link,
                year: projectsData[i].year,
              );
            },
          ),
        ),
      ],
    );
  }
}