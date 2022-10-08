import 'package:tatware_assessment/components/resources/assets_manger.dart';

class Profile {
  final String image;
  final String name;
  final String description;
  final double rate;

  const Profile(
      {required this.image,
      required this.name,
      required this.description,
      required this.rate});
}

List<Profile> myProfile = [
  const Profile(
      image: ImageAssets.secondProfile,
      name: 'Kareem Adel',
      description: 'Supply Chain',
      rate: 5.0),
  const Profile(
      image: ImageAssets.firstProfile,
      name: 'Merna Adel',
      description: 'Supply Chain',
      rate: 4.9),
];

List<String> users = [
  'Lance',
  'Niles',
  'Samuel',
  'Hilary',
  'Hanson',
];

class SlideUpPanel{
  final String iconImage;
  final String name;
  final String description;

  const SlideUpPanel({required this.name,required this.description,required this.iconImage});
}

List<SlideUpPanel> slidePanel = [
  const SlideUpPanel(name: 'Information Technology', description: '23 Experts', iconImage: ImageAssets.informationIcon),
  const SlideUpPanel(name: 'Supply Chain', description: '12 Experts', iconImage: ImageAssets.supplyIcon),
  const SlideUpPanel(name: 'Security', description: '14 Experts', iconImage: ImageAssets.securityIcon),
  const SlideUpPanel(name: 'Human Resource', description: '8 Experts', iconImage: ImageAssets.hrIcon),
  const SlideUpPanel(name: 'Immigration', description: '18 Experts', iconImage: ImageAssets.imigrationIcon),
  const SlideUpPanel(name: 'Translation', description: '3 Experts', iconImage: ImageAssets.translationIcon),

];
