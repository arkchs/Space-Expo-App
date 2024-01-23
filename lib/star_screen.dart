import 'package:flutter/material.dart';
import 'package:space_expo/star_info_screen.dart';

class StarScreen extends StatefulWidget {
  const StarScreen({Key? key}) : super(key: key);

  @override
  State<StarScreen> createState() => _StarScreenState();
}

class _StarScreenState extends State<StarScreen> {
  List imagesLarge = [
    'Zeta.png',
    'Rigel.png',
    'Altair.png',
    'Procyon.png',
    'sun2.png',
    'Epsilon.png',
    'Proxima.png',
  ];
  List textLarge = [
    'Zeta ophiuchi',
    'Rigel',
    'Altair',
    'Procyon A',
    'Sun',
    'Epsilon Indi',
    'ProximaCentauri',
  ];
  List descriptionText = [
    'Zeta Ophiuchi (ζ Oph, ζ Ophiuchi) is a single star located in the constellation of Ophiuchus.',
    'Rigel is a blue supergiant star in the constellation of Orion.',
    'Altair is the brightest star in the constellation of Aquila and the twelfth-brightest star in the night sky.',
    'Procyon (/ˈproʊsi.ɒn/) is the brightest star in the constellation of Canis Minor and usually the eighth-brightest star in the night sky',
    'The Sun is the star at the center of the Solar System.',
    'The star has an orange hue and is faintly visible to the naked eye with an apparent visual magnitude of 4.83.',
    'Proxima Centauri is a small, low-mass star located 4.2465 light-years (1.3020 pc) away from the Sun in the southern constellation of Centaurus.',
  ];
  List about = [
    'ζ Ophiuchi is an enormous star with more than 19 times the Sun\'s mass and eight times its radius. The stellar classification of this star is O9.5 V, with the luminosity class of V indicating that it is generating energy in its core by the nuclear fusion of hydrogen. From Earth, the apparent effective temperature of the star appears to be 34,300K, giving the star the blue hue of an O-type star. However, since the star is rapidly rotating, the exact surface temperature varies across the surface of the star from as high as 39,000K at the poles to as low as 30,700K at the equator. The projected rotational velocity may be as high as 400 km s1 and it may be rotating at a rate of once per day, close to the velocity at which it would begin to break up.',
    'A star of spectral type B8Ia, Rigel is calculated to be anywhere from 61,500 to 363,000 times as luminous as the Sun, and 18 to 24 times as massive, depending on the method and assumptions used. Its radius is more than seventy times that of the Sun, and its surface temperature is 12,100 K. Due to its stellar wind, Rigel\'s mass-loss is estimated to be ten million times that of the Sun. With an estimated age of seven to nine million years, Rigel has exhausted its core hydrogen fuel, expanded, and cooled to become a supergiant. It is expected to end its life as a type II supernova, leaving a neutron star or a black hole as a final remnant, depending on the initial mass of the star.',
    'Altair rotates rapidly, with a velocity at the equator of approximately 286 km/s.[nb 2][10] This is a significant fraction of the star\'s estimated breakup speed of 400 km/s.[18] A study with the Palomar Testbed Interferometer revealed that Altair is not spherical, but is flattened at the poles due to its high rate of rotation.[19] Other interferometric studies with multiple telescopes, operating in the infrared, have imaged and confirmed this phenomenon.',
    'The primary has a stellar classification of F5IV V, indicating that it is a late-stage F-type main-sequence star. Procyon A is bright for its spectral class, suggesting that it is evolving into a subgiant that has nearly fused its hydrogen core into helium, after which it will expand as the nuclear reactions move outside the core.[3] As it continues to expand, the star will eventually swell to about 80 to 150 times its current diameter and become a red or orange color. This will probably happen within 10 to 100 million years.',
    'The Sun is a G-type main-sequence star (G2V). As such, it is informally, and not completely accurately, referred to as a yellow dwarf (its light is actually white). It formed approximately 4.6 billion[a][14][22] years ago from the gravitational collapse of matter within a region of a large molecular cloud. Most of this matter gathered in the center, whereas the rest flattened into an orbiting disk that became the Solar System. The central mass became so hot and dense that it eventually initiated nuclear fusion in its core. It is thought that almost all stars form by this process.',
    'Epsilon Indi, Latinized from ε Indi, is a star system located at a distance of approximately 12 light-years from Earth in the southern constellation of Indus. The star has an orange hue and is faintly visible to the naked eye with an apparent visual magnitude of 4.83.[2] It consists of a K-type main-sequence star, ε Indi A, and two brown dwarfs, ε Indi Ba and ε Indi Bb, in a wide orbit around it.[15] The brown dwarfs were discovered in 2003. ε Indi Ba is an early T dwarf (T1) and ε Indi Bb a late T dwarf (T6) separated by 0.6 arcseconds, with a projected distance of 1460 AU from their primary star.',
    'Proxima Centauri has two known exoplanets and one candidate exoplanet: Proxima Centauri b, Proxima Centauri d and the disputed Proxima Centauri c.[nb 3] Proxima Centauri b orbits the star at a distance of roughly 0.05 AU (7.5 million km) with an orbital period of approximately 11.2 Earth days. Its estimated mass is at least 1.07 times that of Earth.[16] Proxima b orbits within Proxima Centauri\'s habitable zone—the range where temperatures are right for liquid water to exist on its surface—but, because Proxima Centauri is a red dwarf and a flare star, the planet\'s habitability is highly uncertain. A candidate super-Earth, Proxima Centauri c, orbits roughly 1.5 AU (220 million km) away every 1,900 d (5.2 yr). A sub-Earth, Proxima Centauri d, orbits roughly 0.029 AU (4.3 million km) away every 5.1 days.',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Based on',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: const [
                          // Name Text
                          Text(
                            'Hydrogen Line Strength',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          // Hello Icon
                        ],
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(40.0)),
                    child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/sun.png',
                          height: 80,
                          width: 80,
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Classifications',
                    style: TextStyle(
                        color: Color.fromARGB(255, 120, 50, 206),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: imagesLarge.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return StarInfoScreen(
                            image: 'assets/images/${imagesLarge[index]}',
                            name: textLarge[index],
                            about: about[index],
                          );
                        }));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color(0xff18181A),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/${imagesLarge[index]}',
                                height: 150.0,
                                width: 150.0,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      textLarge[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                      maxLines: 2,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      descriptionText[index],
                                      style: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 13,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
