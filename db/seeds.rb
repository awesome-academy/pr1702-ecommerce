User.create! name:  "Example User",
  email: "example@railstutorial.org",
  password: "123456",
  password_confirmation: "123456",
  address: "Hanoi",
  activated: true,
  activated_at: Time.zone.now

10.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  User.create! name:  name,
    email: email,
    password: "123456",
    password_confirmation: "123456",
    activated: true,
    address: "Hanoi",
    activated_at: Time.zone.now
end

["Pants","Shirts","T-Shirts","Polo","Jacket","Jeans","Coats","Accessories"].each do |name|
  Category.create name: name
end

Product.create(
  name: "Quan Vai Dai 1",
  category_id: "1",
  price: 200000 ,
  discount: 0 ,
  image_link: "quanVai1.jpeg",
  image_list: "",
  view: 6)

Product.create(
  name: "Quan Bo",
  category_id: "6",
  price: 300000 ,
  discount: 0 ,
  image_link: "quanBo.jpg",
  image_list: "",
  view: 9)

Product.create(
  name: "Quan Vai Dai 2",
  category_id: "1",
  price: 250000 ,
  discount: 0 ,
  image_link: "quanVai2.jpg",
  image_list: "",
  view: 9)

Product.create(
  name: "Ao Dai",
  category_id: "2",
  price: 200000 ,
  discount: 0 ,
  image_link: "aoDai.jpg",
  image_list: "",
  view: 5)

Product.create(
  name: "Giay Tay",
  category_id: "8",
  price:  500000 ,
  discount: 0 ,
  image_link: "giayTay.jpg",
  image_list: "",
  view: 7)

Product.create(
  name: "Vong Co",
  category_id: "8",
  price: 200000 ,
  discount: 0 ,
  image_link: "vongCo.jpeg",
  image_list: "",
  view: 7)

Category.all.each do |category|
  10.times do
    name = Faker::App.name
    price = Faker::Number.between 100000, 1000000
    view = Faker::Number.between 10, 1000
    category.products.create name: name, price: price, discount: 0, image_link: "default_product.jpg", image_list: "", view: view
  end
end
