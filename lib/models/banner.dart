class AppBanner {
  final int id;
  final String thumbnailUrl;

  AppBanner(this.id, this.thumbnailUrl);
}

List<AppBanner> appBannerList = [
  AppBanner(1, 'https://images.alphacoders.com/103/thumb-1920-1039414.png'),
  AppBanner(2, 'https://wallpapercave.com/wp/wp11250860.jpg'),
  AppBanner(3, 'https://i.pinimg.com/originals/8b/0c/1b/8b0c1b13d8e9384c568e36ece16e77ed.jpg'),
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