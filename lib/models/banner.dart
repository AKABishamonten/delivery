class AppBanner {
  final int id;
  final String thumbnailUrl;

  AppBanner(this.id, this.thumbnailUrl);
}

List<AppBanner> appBannerList = [
  AppBanner(1, 'https://raw.githubusercontent.com/AKABishamonten/delivery/main/images/slide2.jpg'),
  AppBanner(2, 'https://raw.githubusercontent.com/AKABishamonten/delivery/main/images/slide3.jpg'),
  AppBanner(3, 'https://raw.githubusercontent.com/AKABishamonten/delivery/main/images/slide4.jpg'),
];


 /*CarouselSlider(
          items: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(fit: BoxFit.cover,image: AssetImage('images/pokesupi.jpg'))
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(fit: BoxFit.cover,image: AssetImage('images/SS.png'))
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(fit: BoxFit.cover,image: AssetImage('images/ScarletViolet.png'))
              ),
            ),
          ], 
          options: CarouselOptions(
            height: 250, autoPlay: true, enlargeCenterPage: true
          )) */