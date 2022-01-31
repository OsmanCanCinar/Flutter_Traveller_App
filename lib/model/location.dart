import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.userItinerarySummary,
      this.tourPackageName, this.facts);

  static Location? fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(0, 'New York City', 'assets/images/travel_one.jpg',
          'Day 1: 4PM - 5:00PM', 'Standard Package', [
        LocationFact('Summary',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been standard dummy text ever since the 1500s.'),
        LocationFact('How To Get There',
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered, by injected humour.'),
      ]),
      Location(1, 'Las Vegas', 'assets/images/travel_two.jpg',
          'Day 1: 9AM - 1:30PM', 'Standard Package', [
        LocationFact('Summary',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been standard dummy text ever since the 1500s.'),
        LocationFact('How To Get There',
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered, by injected humour.'),
      ]),
      Location(2, 'San Francisco', 'assets/images/travel_three.jpg',
          'Day 1: 2PM - 3:30PM', 'Standard Package', [
        LocationFact('Summary',
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been standard dummy text ever since the 1500s.'),
        LocationFact('How To Get There',
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered, by injected humour.'),
      ]),
    ];
  }
}
