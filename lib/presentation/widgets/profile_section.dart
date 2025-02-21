import 'package:flutter/material.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key, required this.action, required this.screenSize, required this.sectionKey});

  final Function action;
  final Size screenSize;
  final Key sectionKey;

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: widget.screenSize.width >= 1200 ? 1200 : double.infinity,
          height: widget.screenSize.width >= 1200 ? 500 : 1500,
          key: widget.sectionKey,
          child: ListView(
            scrollDirection: widget.screenSize.width >= 1200 ? Axis.horizontal : Axis.vertical,
            // physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                padding: EdgeInsets.only(left: 50),
                height: 400,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Olá, sou', style: TextStyle(fontSize: 70),),
                    Text('Otávio Freitas', style: TextStyle(fontSize: 70)),
                    Text('Desenvolvedor Mobile de Uberlândia-MG, em busca de novos desafios!'),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary, // Cor de fundo primária
                        foregroundColor: Theme.of(context).colorScheme.onPrimary
                      ),
                      onPressed: ()=> widget.action(3), 
                      child: const Text('Entre em Contato')
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: widget.screenSize.width >= 1200 ? 0 : 5,
                width: widget.screenSize.width >= 1200 ? 50 : 0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                height: 700,
                width: 600,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://media.licdn.com/dms/image/v2/D4D03AQHnxxGX1fesvA/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720633124458?e=1745452800&v=beta&t=h6eblSkrpFdd278d2oDdHSRuJJrGQG85aTlnAFNtlS8',
                    fit: BoxFit.cover,
                  ),
                )
              )
            ],
          ),
        ),
      ],
    );
  }
}