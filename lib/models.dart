class HomeCards {
  final String name;
  final String location;
  final String distance;
  final String img;

  HomeCards(
      {required this.name,
      required this.location,
      required this.distance,
      required this.img});
}

List<HomeCards> homeCards = [
  HomeCards(
      name: 'Dreamsville House',
      location: 'Jl Sultan Iskandar Muda',
      distance: '18km',
      img: 'assets/images/homeCardLg1.jpeg'),
  HomeCards(
      name: 'Ascot House',
      location: 'Jl Clandak Teng',
      distance: '23km',
      img: 'assets/images/homeCardLg2.jpg'),
  HomeCards(
      name: 'Falcon Hill House',
      location: 'Transaco Valley',
      distance: '8km',
      img: 'assets/images/homeCardLg3.jpeg'),
  HomeCards(
      name: 'Prime Mansion',
      location: "Lincoln's St. 27",
      distance: '20km',
      img: 'assets/images/homeCardLg4.jpg'),
];

class OtherCards {
  final String name;
  final String amount;
  final String bedroom;
  final String bathroom;
  final String img;

  OtherCards(
      {required this.name,
      required this.amount,
      required this.bathroom,
      required this.bedroom,
      required this.img});
}

List<OtherCards> otherCards = [
  OtherCards(
      name: 'Orchad House',
      amount: 'Ghc123,536.00/year',
      bathroom: '4 Bathroom',
      bedroom: '6 Bedroom',
      img: 'assets/images/otherCard1.png'),
  OtherCards(
      name: 'The Hollies House',
      amount: 'Ghc233,336.00/year',
      bathroom: '5 Bathroom',
      bedroom: '5 Bedroom',
      img: 'assets/images/otherCard2.jpg'),
  OtherCards(
      name: 'Addams Lane',
      amount: 'Ghc473,536.00/year',
      bathroom: '7 Bathroom',
      bedroom: '6 Bedroom',
      img: 'assets/images/otherCard3.jpg')
];
