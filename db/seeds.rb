Product.create(
  name:  "Quan Vai Dai 1",
  category_id:  "1",
  price:  200.000 ,
  discount:  0 ,
  image_link:   "assets/images/quanVai1.jpeg",
  image_list:  "",
  view:  6
  )

Product.create(
  name:  "Quan Bo",
  category_id: "6",
  price: 300.000 ,
  discount:  0 ,
  image_link: "assets/images/quanBo.jpg",
  image_list:  "",
  view: 9
  )

Product.create(
  name:  "Quan Vai Dai 2",
  category_id:  "1",
  price: 250.000 ,
  discount:  0 ,
  image_link =>  "assets/images/quanVai2.jpg",
  image_list:  "",
  view:  9
  )


Product.create(
  name : "Ao Dai",
  category_id:  "2",
  price:  200.000 ,
  discount:  0 ,
  image_link:   "assets/images/aoDai.jpg",
  image_list:   "",
  view: 5
  )
Product.create(
  name: "Giay Tay",
  category_id:  "8",
  price:  500.000 ,
  discount:  0 ,
  image_link:   "assets/images/giayTay.jpg",
  image_list:   "",
  view:  7
  )
Product.create(
  name: "Vong Co",
  category_id: "8",
  price: 200.000 ,
  discount: 0 ,
  image_link:  "assets/images/vongCo.jpeg",
  image_list:  "",
  view: 7
  )

["Pants","Shirts","T-Shirts","Polo","Jacket","Jeans","Coats","Accessories"].each do |name|
  Category.create name: name
end
