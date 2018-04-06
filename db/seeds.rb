Product.create(
  name: "Quan Vai Dai 1",
  category_id: "1",
  price: 200.000 ,
  discount: 0 ,
  image_link: "quanVai1.jpeg",
  image_list: "",
  view: 6
  )

Product.create(
  name: "Quan Bo",
  category_id: "6",
  price: 300.000 ,
  discount: 0 ,
  image_link: "quanBo.jpg",
  image_list: "",
  view: 9
  )

Product.create(
  name: "Quan Vai Dai 2",
  category_id: "1",
  price: 250.000 ,
  discount: 0 ,
  image_link: "quanVai2.jpg",
  image_list: "",
  view: 9
  )

Product.create(
  name: "Ao Dai",
  category_id: "2",
  price: 200.000 ,
  discount: 0 ,
  image_link: "aoDai.jpg",
  image_list: "",
  view: 5
  )
Product.create(
  name: "Giay Tay",
  category_id: "8",
  price:  500.000 ,
  discount: 0 ,
  image_link: "giayTay.jpg",
  image_list: "",
  view: 7
  )

Product.create(
  name: "Vong Co",
  category_id: "8",
  price: 200.000 ,
  discount: 0 ,
  image_link: "vongCo.jpeg",
  image_list: "",
  view: 7
  )

["Pants","Shirts","T-Shirts","Polo","Jacket","Jeans","Coats","Accessories"].each do |name|
  Category.create name: name
end

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             address: "Hanoi",
             activated: true,
             activated_at: Time.zone.now)

10.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              address: "Hanoi",
              activated: true,
              address: "Hanoi",
              activated_at: Time.zone.now)
end
