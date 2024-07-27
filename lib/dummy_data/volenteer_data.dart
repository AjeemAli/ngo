List<VolunteerOpportunity> staticOpportunities = [
  VolunteerOpportunity(
    title: 'Tree Plantation',
    description: 'Help us plant trees in the local park.',
    date: DateTime(2024, 8, 15),
  ),
  VolunteerOpportunity(
    title: 'Soup Kitchen',
    description: 'Serve meals to the homeless.',
    date: DateTime(2024, 8, 22),
  ),
  VolunteerOpportunity(
    title: 'Beach Cleanup',
    description: 'Join us in cleaning up the local beach.',
    date: DateTime(2024, 8, 30),
  ),
];
class VolunteerOpportunity {
  final String title;
  final String description;
  final DateTime date;

  VolunteerOpportunity({
    required this.title,
    required this.description,
    required this.date,
  });
}
