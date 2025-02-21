import 'package:flutter/material.dart';

class CustomPopupMenu extends StatefulWidget {
  final Function action;
  const CustomPopupMenu({super.key, required this.action});

  @override
  State<CustomPopupMenu> createState() => _CustomPopupMenuState();
}

class _CustomPopupMenuState extends State<CustomPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (value){widget.action(value);},
        iconSize: 45,
        icon: const Icon(Icons.menu_outlined),
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 1,
            child: CustomRow(icon: Icons.construction, text: 'Skills'),
          ),
          const PopupMenuItem(
            value: 2,
            child: CustomRow(icon: Icons.now_widgets, text: 'Projetos'),
          ),
          const PopupMenuItem(
            value: 3,
            child: CustomRow(icon: Icons.contact_emergency, text: 'Contato'),
          ),
        ],
      );
  }
}



class TxtButtom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double size;
  const TxtButtom({super.key, required this.text, required this.onPressed, required this.size});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyle(fontSize: size>= 850 ? size * 0.028 : 30),),
    );
  }
}

class CustomRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Icon(icon),
          const SizedBox(width: 20),
          Text(text, style: const TextStyle(fontSize: 25)),
      ],
    );
  }
}
 