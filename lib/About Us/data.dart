import 'package:url_launcher/url_launcher.dart';

class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
      this.position, {
        required this.name,
        required this.iconImage,
        required this.description,
        required this.images,
      });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,

      name: 'Aary\nJadhav',
      iconImage: 'assets/aarypp.png',
      description:
      "\u2022 Name:- Aary Vijay Jadhav\n\u2022 Group No:-3\n\u2022 Class:- TYCO-1\n\u2022 Roll No:- 1816\n\u2022 College:- Bhausaheb Vartak Polytechnic, Vasai(W), Palghar- 401202",
      images: [
        'https://i.postimg.cc/j5THZXZr/Whats-App-Image-2023-03-29-at-8-10-23-PM.jpg',
        'https://i.postimg.cc/SxVHDf2M/Whats-App-Image-2023-03-29-at-6-25-39-PM.jpg',
        'https://i.postimg.cc/05FkCPRs/Whats-App-Image-2023-03-29-at-6-27-47-PM.jpg',
        'https://i.postimg.cc/cHzYd2KN/Whats-App-Image-2023-03-29-at-6-16-46-PM.jpg',
      ]),
  PlanetInfo(2,
      name: 'Devang Dhadaniya',
      iconImage: 'assets/devangpp.png',
      description:
      "\u2022 Name:- Devang Rajnikant Dhadaniya\n\u2022 Group No:-3\n\u2022 Class:- TYCO-1\n\u2022 Roll No:- 1820\n\u2022 College:- Bhausaheb Vartak Polytechnic, Vasai(W), Palghar- 401202",
      images: [
        'https://i.postimg.cc/QMwg1DWV/Whats-App-Image-2023-03-29-at-8-04-13-PM.jpg',
        'https://i.postimg.cc/rwtwzLcf/Whats-App-Image-2023-03-29-at-8-06-36-PM.jpg',
        'https://i.postimg.cc/15yQBtCb/Whats-App-Image-2023-03-29-at-2-14-20-PM.jpg'
      ]),
  PlanetInfo(3,
      name: 'Snowy Fernandez',
      iconImage: 'assets/snowypp.png',
      description:
      "\u2022 Name:- Snowy Ashok Fernandez\n\u2022 Group No:-3\n\u2022 Class:- TYCO-1\n\u2022 Roll No:- 1810\n\u2022 College:- Bhausaheb Vartak Polytechnic, Vasai(W), Palghar- 401202",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
        'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
        'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
      ]),
  PlanetInfo(4,
      name: 'Ashal          \nDabre',
      iconImage: 'assets/ashalpp.png',
      description:
      "\u2022 Name:- Ashal Ashok Fernandez\n\u2022 Group No:-3\n\u2022 Class:- TYCO-1\n\u2022 Roll No:- 18\n\u2022 College:- Bhausaheb Vartak Polytechnic, Vasai(W), Palghar- 401202",
      images: []),
];