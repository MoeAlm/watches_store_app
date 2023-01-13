class ProductsModel {
  final String title;
  final String img;
  final String price;
  Function() onTap;

  ProductsModel(
      {required this.title,
      required this.price,
      required this.img,
      required this.onTap});
}
List<ProductsModel> products = [
  ProductsModel(title: 'Watch', price: '86\$', img: 'assets/products/men/1.png', onTap: (){}),
  ProductsModel(title: 'Watch', price: '86\$', img: 'assets/products/men/2.png', onTap: (){}),
  ProductsModel(title: 'Watch', price: '86\$', img: 'assets/products/men/3.png', onTap: (){}),
  ProductsModel(title: 'Watch', price: '86\$', img: 'assets/products/men/4.png', onTap: (){}),
  ProductsModel(title: 'Watch', price: '86\$', img: 'assets/products/men/5.png', onTap: (){}),
  ProductsModel(title: 'Watch', price: '86\$', img: 'assets/products/men/6.png', onTap: (){}),
];
