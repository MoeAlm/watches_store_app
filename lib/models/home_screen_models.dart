class HomeScreenModel{
  final String title;
  final String img;
  Function() onTap;
  HomeScreenModel({required this.title, required this.img, required this.onTap});
}
List<HomeScreenModel> homePage = [
  HomeScreenModel(
      title: 'Men Watches',
      img: 'assets/background/men_watch.jpg',
      onTap: () {}),
  HomeScreenModel(
      title: 'Women Watches',
      img: 'assets/background/women_watch.jpg',
      onTap: () {}),
  HomeScreenModel(
      title: 'All Watches',
      img: 'assets/background/watch_for_all.jpg',
      onTap: () {}),
];