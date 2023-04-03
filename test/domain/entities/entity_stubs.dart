import 'package:maccabi/domain/entities/product_entity.dart';

ProductEntityList productEntityStub = ProductEntityList(
    products: [productEntityStub1, productEntityStub2],
    total: 2,
    limit: 0,
    skip: 0);

ProductEntity productEntityStub1 = ProductEntity(
    id: 1,
    title: 'title',
    description: 'description',
    price: 1,
    discountPercentage: 1,
    rating: 1,
    stock: 1,
    brand: 'brand',
    category: 'category',
    thumbnail: 'https://i.dummyjson.com/data/products/1/thumbnail.jpg',
    images: ["https://i.dummyjson.com/data/products/12/1.jpg"]);
ProductEntity productEntityStub2 = ProductEntity(
    id: 2,
    title: 'title2',
    description: 'description2',
    price: 2,
    discountPercentage: 2,
    rating: 2,
    stock: 2,
    brand: 'brand2',
    category: 'category2',
    thumbnail: 'https://i.dummyjson.com/data/products/8/thumbnail.jpg',
    images: ["https://i.dummyjson.com/data/products/8/1.jpg"]);
