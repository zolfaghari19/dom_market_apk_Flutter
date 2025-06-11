
class CategoryData {
  final String title;
  final String image;
  CategoryData({required this.title, required this.image});
}

final List<CategoryData> categories = [
      CategoryData(
    title: 'All', 
    image: 'assets/images/all.jpg'
  ),
    CategoryData(
    title: 'Shoes', 
    image: 'assets/images/shose.png'
  ),
    CategoryData(
    title: 'Beauty', 
    image: 'assets/images/beauty.png'
  ),
    CategoryData(
    title: 'Jacket', 
    image: 'assets/images/jacket.png'
  ),
    CategoryData(
    title: 'Hat', 
    image: 'assets/images/hat.png'
  ),
    CategoryData(
    title: 'Watch', 
    image: 'assets/images/watch.png'
  ),
    CategoryData(
    title: 'Custom', 
    image: 'assets/images/coustom.png'
  ),
  
];
