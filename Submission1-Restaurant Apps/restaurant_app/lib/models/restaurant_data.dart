import 'package:restaurant_app/models/food.dart';
import 'package:restaurant_app/models/restaurant.dart';

var listRestaurant = [
  Restaurant(
      name: "Pizaa Hut",
      description:
          "Pizza Hut adalah rantai restoran Amerika dan waralaba internasional yang didirikan pada tahun 1958 di Wichita, Kansas oleh Dan dan Frank Carney. Perusahaan ini dikenal dengan menu masakan Italia-Amerika, termasuk pizza dan pasta, serta lauk dan makanan penutup",
      location: 'Depok, Indonesia',
      openTime: '07.00-21.00',
      imageSource: 'assets/rest1.jpg',
      ratingRestaurant: 4.8,
      menu: [
        Food(
            name: 'Triple Box',
            imageSource: 'assets/rest1_img1.jpg',
            price: 30000,
            description:
                'Dapatkan Pan Regular Meat Lovers Pizza hanya Rp 50.000 setiap pembelian Triple Box, super meriah ada Pizza Regular, Rocky Road Pizza, rice, chicken delight, beef lasagna, sausage frankfurter BBQ, deluxe chicken bruschetta, garlic bread, chicken popcorn',
            foodRatings: 4.5),
        Food(
            name: 'Pizza',
            imageSource: 'assets/rest1_img2.JPG',
            price: 40000,
            description:
                'Dapatkan Pan Regular Meat Lovers Pizza hanya Rp 50.000 setiap pembelian Pizza, super meriah ada Pizza Regular, Rocky Road Pizza, rice, chicken delight, beef lasagna, sausage frankfurter BBQ, deluxe chicken bruschetta, garlic bread, chicken popcorn',
            foodRatings: 4.8),
        Food(
            name: 'Double Box',
            imageSource: 'assets/rest1_img3.jpg',
            price: 40000,
            description:
                'Dapatkan Pan Regular Meat Lovers Pizza hanya Rp 50.000 setiap pembelian Double Box, super meriah ada Pizza Regular, Rocky Road Pizza, rice, chicken delight, beef lasagna, sausage frankfurter BBQ, deluxe chicken bruschetta, garlic bread, chicken popcorn',
            foodRatings: 4.8),
      ]),
  Restaurant(
      name: "Marugame Udon",
      description:
          "Marugame Seimen, juga dikenal sebagai Marugame Udon, adalah rantai makanan cepat saji Jepang yang berspesialisasi dalam udon. Rantai ini dioperasikan oleh Toridoll Holdings Corporation yang berbasis di Kobe. ",
      location: 'Jakarta, Indonesia',
      openTime: '07.00-21.00',
      imageSource: 'assets/rest2.jpeg',
      ratingRestaurant: 4.8,
      menu: [
        Food(
            name: 'Menu Spesial 1',
            imageSource: 'assets/rest2_img1.jpg',
            price: 40000,
            description:
                'Udon adalah salah satu jenis mi yang sudah dikenal di Jepang sejak dulu, dibuat dari tepung terigu dan berbentuk tebal serta agak lebar.',
            foodRatings: 4.5),
        Food(
            name: 'Menu Spesial 2',
            imageSource: 'assets/rest2_img2.jpg',
            price: 41000,
            description:
                'Udon adalah salah satu jenis mi yang sudah dikenal di Jepang sejak dulu, dibuat dari tepung terigu dan berbentuk tebal serta agak lebar.',
            foodRatings: 4.7),
        Food(
            name: 'Menu Mantap',
            imageSource: 'assets/rest2_img3.jpg',
            price: 43000,
            description:
                'Udon adalah salah satu jenis mi yang sudah dikenal di Jepang sejak dulu, dibuat dari tepung terigu dan berbentuk tebal serta agak lebar.',
            foodRatings: 4.8),
      ]),
  Restaurant(
      name: "KFC",
      description:
          "KFC, adalah jaringan restoran cepat saji Amerika yang berkantor pusat di Louisville, Kentucky, yang berspesialisasi dalam ayam goreng. Ini adalah jaringan restoran terbesar kedua di dunia setelah McDonald's, dengan 22.621 lokasi secara global di 150 negara ",
      location: 'Jakarta, Indonesia',
      openTime: '07.00-21.00',
      imageSource: 'assets/rest3.jpg',
      ratingRestaurant: 4.8,
      menu: [
        Food(
            name: 'Ayam Kentang',
            imageSource: 'assets/rest3_img1.jpg',
            price: 30000,
            description:
                'yam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
            foodRatings: 4.5),
        Food(
            name: 'Fried Chicken',
            imageSource: 'assets/rest3_img2.jpg',
            price: 40000,
            description:
                'Ayam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
            foodRatings: 4.7),
        Food(
            name: 'Menu Mantap',
            imageSource: 'assets/rest3_img3.jpg',
            price: 40000,
            description:
                'Ayam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
            foodRatings: 4.8),
      ]),
  Restaurant(
      name: "Richeese Factory",
      description:
          "Richeese Factory adalah sebuah jaringan rumah makan siap saji asal Indonesia dengan menu utama ayam goreng dan keju yang dimiliki oleh PT Richeese Kuliner Indonesia, anak usaha Kaldu Sari Nabati. Richeese Factory membuka gerai pertamanya di pusat perbelanjaan Paris Van Java, Bandung, pada 8 Februari 2011.",
      location: 'Bandung, Indonesia',
      openTime: '07.00-21.00',
      imageSource: 'assets/rest4.jpg',
      ratingRestaurant: 4.7,
      menu: [
        Food(
            name: 'Paket Hemat 1',
            imageSource: 'assets/rest4_img1.jpg',
            price: 30000,
            description:
                'Ayam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
            foodRatings: 4.5),
        Food(
            name: 'Paket Hemat 2',
            imageSource: 'assets/rest4_img2.jpg',
            price: 40000,
            description:
                'Ayam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
            foodRatings: 4.7),
        Food(
            name: 'Paket Hemat 3',
            imageSource: 'assets/rest4_img3.jpeg',
            price: 40000,
            description:
                'Ayam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
            foodRatings: 4.8),
      ]),
  Restaurant(
      name: "Pizaa Hut Depok",
      description:
          "Pizza Hut adalah rantai restoran Amerika dan waralaba internasional yang didirikan pada tahun 1958 di Wichita, Kansas oleh Dan dan Frank Carney. Perusahaan ini dikenal dengan menu masakan Italia-Amerika, termasuk pizza dan pasta, serta lauk dan makanan penutup",
      location: 'Depok, Indonesia',
      openTime: '07.00-21.00',
      imageSource: 'assets/rest1.jpg',
      ratingRestaurant: 4.8,
      menu: [
        Food(
            name: 'Triple Box',
            imageSource: 'assets/rest1_img1.jpg',
            price: 30000,
            description:
                'Dapatkan Pan Regular Meat Lovers Pizza hanya Rp 50.000 setiap pembelian Triple Box, super meriah ada Pizza Regular, Rocky Road Pizza, rice, chicken delight, beef lasagna, sausage frankfurter BBQ, deluxe chicken bruschetta, garlic bread, chicken popcorn',
            foodRatings: 4.5),
        Food(
            name: 'Pizza',
            imageSource: 'assets/rest1_img2.JPG',
            price: 40000,
            description:
                'Dapatkan Pan Regular Meat Lovers Pizza hanya Rp 50.000 setiap pembelian Pizza, super meriah ada Pizza Regular, Rocky Road Pizza, rice, chicken delight, beef lasagna, sausage frankfurter BBQ, deluxe chicken bruschetta, garlic bread, chicken popcorn',
            foodRatings: 4.8),
        Food(
            name: 'Double Box',
            imageSource: 'assets/rest1_img3.jpg',
            price: 40000,
            description:
                'Dapatkan Pan Regular Meat Lovers Pizza hanya Rp 50.000 setiap pembelian Double Box, super meriah ada Pizza Regular, Rocky Road Pizza, rice, chicken delight, beef lasagna, sausage frankfurter BBQ, deluxe chicken bruschetta, garlic bread, chicken popcorn',
            foodRatings: 4.8),
      ]),
  Restaurant(
      name: "Marugame Depok",
      description:
          "Marugame Seimen, juga dikenal sebagai Marugame Udon, adalah rantai makanan cepat saji Jepang yang berspesialisasi dalam udon. Rantai ini dioperasikan oleh Toridoll Holdings Corporation yang berbasis di Kobe. ",
      location: 'Jakarta, Indonesia',
      openTime: '07.00-21.00',
      imageSource: 'assets/rest2.jpeg',
      ratingRestaurant: 4.8,
      menu: [
        Food(
            name: 'Menu Spesial 1',
            imageSource: 'assets/rest2_img1.jpg',
            price: 40000,
            description:
                'Udon adalah salah satu jenis mi yang sudah dikenal di Jepang sejak dulu, dibuat dari tepung terigu dan berbentuk tebal serta agak lebar.',
            foodRatings: 4.5),
        Food(
            name: 'Menu Spesial 2',
            imageSource: 'assets/rest2_img2.jpg',
            price: 41000,
            description:
                'Udon adalah salah satu jenis mi yang sudah dikenal di Jepang sejak dulu, dibuat dari tepung terigu dan berbentuk tebal serta agak lebar.',
            foodRatings: 4.7),
        Food(
            name: 'Menu Mantap',
            imageSource: 'assets/rest2_img3.jpg',
            price: 43000,
            description:
                'Udon adalah salah satu jenis mi yang sudah dikenal di Jepang sejak dulu, dibuat dari tepung terigu dan berbentuk tebal serta agak lebar.',
            foodRatings: 4.8),
      ]),
  Restaurant(
      name: "KFC Cofee",
      description:
          "KFC, adalah jaringan restoran cepat saji Amerika yang berkantor pusat di Louisville, Kentucky, yang berspesialisasi dalam ayam goreng. Ini adalah jaringan restoran terbesar kedua di dunia setelah McDonald's, dengan 22.621 lokasi secara global di 150 negara ",
      location: 'Jakarta, Indonesia',
      openTime: '07.00-21.00',
      imageSource: 'assets/rest3.jpg',
      ratingRestaurant: 4.8,
      menu: [
        Food(
            name: 'Ayam Kentang',
            imageSource: 'assets/rest3_img1.jpg',
            price: 30000,
            description:
                'yam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
            foodRatings: 4.5),
        Food(
            name: 'Fried Chicken',
            imageSource: 'assets/rest3_img2.jpg',
            price: 40000,
            description:
                'Ayam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
            foodRatings: 4.7),
        Food(
            name: 'Menu Mantap',
            imageSource: 'assets/rest3_img3.jpg',
            price: 40000,
            description:
                'Ayam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
            foodRatings: 4.8),
      ]),
];
