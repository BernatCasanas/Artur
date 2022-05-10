import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key, String? title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: const FittedBox(
                      child: Image(
                          fit: BoxFit.fitHeight,
                          image: NetworkImage(
                              'https://www.viajarpraga.com/img/sobre-praga.jpg')),
                    ),
                  ),
                  const Positioned(
                      bottom: -50.0,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 75,
                          backgroundImage: NetworkImage(
                              'https://media-exp1.licdn.com/dms/image/C4D22AQGvyAB0WUgmbw/feedshare-shrink_800/0/1647261902484?e=2147483647&v=beta&t=UXDVJbCjcCaBr54f9IRN16Zrs-PPW4iWR85uzn43KdM'),
                        ),
                      ))
                ]),
            const SizedBox(
              height: 45,
            ),
            const ListTile(
              title: Center(child: Text('Artur')),
              subtitle:
                  Center(child: Text('Explorador, insaciable y aventurero')),
            ),
            const ListTile(
              title: Text('Sobre mi'),
              subtitle: Text(
                  'En mi tiempo libre me encanta descubrir nuevos lugares de donde soy y conocer qué pasó en la ciudad donde camino cada dia en el pasado'),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              title: Text('Información personal'),
              subtitle:
                  Text('Terrassa, Barcelona. 21 años. País favorito, Praga.'),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text('Social'),
              subtitle: Row(
                children: [
                  Expanded(
                    child: IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.github,
                        ),
                        onPressed: () {}),
                  ),
                  Expanded(
                    child: IconButton(
                        icon: const FaIcon(FontAwesomeIcons.linkedin),
                        onPressed: () {}),
                  ),
                  Expanded(
                    child: IconButton(
                        icon: const FaIcon(FontAwesomeIcons.facebook),
                        onPressed: () {}),
                  ),
                  Expanded(
                    child: IconButton(
                        icon: const FaIcon(FontAwesomeIcons.instagram),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
