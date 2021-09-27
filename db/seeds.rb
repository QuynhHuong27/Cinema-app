# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FilmType.create!([
  { type_name: "Anime" },
  { type_name: "Hành động " },
  { type_name: "Võ thuật" },
  { type_name: "Kinh dị" },
  { type_name: "Hài hước" },
  { type_name: "Hoạt Hình" },
  { type_name: "Tình cảm " },
  { type_name: "Chiến tranh " },
  { type_name: "Thần thoại" },
  { type_name: "Tội phạm" },
  { type_name: "Lịch sử " },
  { type_name: "Tội phạm" }
])

Cinema.create!([
  { name: "Thái Nguyên" },
  { name: "Hà Nội " },
  { name: "Hải Dương" },
  { name: "Nam Định" },
  { name: "Hải Phòng" },
])

Cinema.all.each do |cinema|
  Room.create!([
    { name: "R01", cinema_id: cinema.id },
    { name: "R02", cinema_id: cinema.id },
    { name: "R03", cinema_id: cinema.id },
    { name: "R04", cinema_id: cinema.id },
    { name: "R05", cinema_id: cinema.id },
    { name: "R06", cinema_id: cinema.id },
    { name: "R07", cinema_id: cinema.id},
    { name: "R08", cinema_id: cinema.id },
  ])
end

Room.all.each do |room|
  Seat.create!([
    { room_id: room.id, name:"A", status: 0, price: 60000 },
    { room_id: room.id, name:"B", status: 0, price: 60000 },
    { room_id: room.id, name:"C", status: 0, price: 60000 },
    { room_id: room.id, name:"D", status: 0, price: 60000 },
    { room_id: room.id, name:"F", status: 0, price: 60000 },
    { room_id: room.id, name:"G", status: 0, price: 60000 },
    { room_id: room.id, name:"H", status: 0, price: 60000 },
    { room_id: room.id, name:"I", status: 0, price: 60000 },
    { room_id: room.id, name:"K", status: 0, price: 60000 },
    { room_id: room.id, name:"L", status: 0, price: 60000 },
    { room_id: room.id, name:"M", status: 0, price: 60000 },
    { room_id: room.id, name:"N", status: 0, price: 60000 },
    { room_id: room.id, name:"O", status: 0, price: 60000 },
    { room_id: room.id, name:"P", status: 0, price: 60000 },
    { room_id: room.id, name:"Q", status: 0, price: 60000 },
    { room_id: room.id, name:"R", status: 0, price: 60000 },
    { room_id: room.id, name:"S", status: 0, price: 60000 },
    { room_id: room.id, name:"T", status: 0, price: 60000 },
    { room_id: room.id, name:"U", status: 0, price: 60000 },
    { room_id: room.id, name:"V", status: 0, price: 60000 },
    { room_id: room.id, name:"X", status: 0, price: 60000 },
    { room_id: room.id, name:"Y", status: 0, price: 60000 },
    { room_id: room.id, name:"W", status: 0, price: 60000 },
    { room_id: room.id, name:"Z", status: 0, price: 60000 }
  ])
end

anime_film = FilmType.first.id
action_film = FilmType.second.id
kd_film = FilmType.fourth.id
fun_film = FilmType.fifth.id

first_room = Room.first.id
second_room = Room.second.id
fourth_room = Room.fourth.id
fifth_room = Room.fifth.id

Film.create!([
  {
    film_name: "Giải Cứu Guy",
    film_day: "11/12/2021",
    film_type_id: action_film,
    author: "Shawn Levy",
    description: "Guy - Nhân viên giao dịch ngân hàng, phát hiện anh ấy thực chất là người chơi nền trong trò chơi điện tử thế giới mở. Guy quyết định trở thành người anh hùng và viết lại câu chuyện của chính mình. Giờ đây, trong một thế giới không còn giới hạn, anh ấy quyết định trở thành người giải cứu thế giới, theo cách của chính mình.",
    status: 0,
    time: 100,
    actor: "Ryan Reynolds, Jacksepticeye, Jodie Comer, Joe Keery",
    language: "Tiếng Anh",
    image_url: "https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/f/r/frguy_teaser2_vietnam.jpg",
    room_id: first_room
  },
  {
    film_name: "Người Nhân Bản",
    film_day: "22/09/2021",
    film_type_id: kd_film,
    author: "Lee Yong Zoo",
    description: "Seobok – Người Nhân Bản là câu chuyện về Ki-hun (Gong Yoo) – một cựu đặc vụ sống tách biệt với thế giới bên ngoài kể từ sau biến cố trong quá khứ, chấp nhận thực hiện nhiệm vụ cuối cùng từ Cơ quan Tình báo. Anh phải chịu trách nhiệm di chuyển Seobok (Park Bo Gum), một đối tượng thử nghiệm được tạo ra bằng cách nhân bản tế bào gốc và biến đổi gen.",
    status: 1,
    time: 114,
    actor: "Gong Yoo, Park Bo Gum, Jo Woo Jin, Jang Young Nam, Park Byung Eun",
    language: "Tiếng Hàn - Phụ đề Tiếng Việt",
    image_url: "https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/m/a/main_poster_seobok_15.jpg",
    room_id: second_room
  },
  {
    film_name: "Thám Tử Lừng Danh Conan: Viên Đạn Đỏ",
    film_day: "25/09/2021",
    film_type_id: anime_film,
    author: "Tomoka Nagaoka",
    description: "Seobok – Người Nhân Bản là câu chuyện về Ki-hun (Gong Yoo) – một cựu đặc vụ sống tách biệt với thế giới bên ngoài kể từ sau biến cố trong quá khứ, chấp nhận thực hiện nhiệm vụ cuối cùng từ Cơ quan Tình báo. Anh phải chịu trách nhiệm di chuyển Seobok (Park Bo Gum), một đối tượng thử nghiệm được tạo ra bằng cách nhân bản tế bào gốc và biến đổi gen.",
    status: 2,
    time: 111,
    actor: " Minami Hamabe, Megumi Hayashibara, Ogata Kenichi, Rikiya Koyama, Minami Takayama",
    language: "Tiếng Nhật - Phụ đề Tiếng Việt; Lồng tiếng",
    image_url: "https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/c/o/conan_24_-_main_poster_1_.jpg",
    room_id: fourth_room
  },
  {
    film_name: "Giải Cứu Công Chúa Kiến",
    film_day: "10/10/2021",
    film_type_id: fun_film,
    author: "Noel Cleary",
    description: "Quá háo hức chào đón mùa xuân, Maya và Willy đã thức dậy khỏi giấc ngủ đông sớm hơn thời gian dự định. Từ đây, đôi bạn vô tình phải nhận một nhiệm vụ đặc biệt – bảo vệ và đưa quả trứng vàng đến ngôi nhà mới.",
    status: 2,
    time: 120,
    actor: "Ryan Reynolds, Jacksepticeye, Jodie Comer, Joe Keery",
    language: "Tiếng Anh",
    image_url: "https://www.cgv.vn/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/m/a/main_poster_mtb_1_.jpg",
    room_id: fifth_room
  }
])
