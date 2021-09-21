# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FilmType.create([
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

Film.create([
  {
    film_name: "Giải Cứu Guy",
    film_day: "11/12/2021",
    film_type_id: 5,
    author: "Shawn Levy",
    description: "Guy - Nhân viên giao dịch ngân hàng, phát hiện anh ấy thực chất là người chơi nền trong trò chơi điện tử thế giới mở. Guy quyết định trở thành người anh hùng và viết lại câu chuyện của chính mình. Giờ đây, trong một thế giới không còn giới hạn, anh ấy quyết định trở thành người giải cứu thế giới, theo cách của chính mình.",
    status: 0,
    time: 100,
    actor: "Ryan Reynolds, Jacksepticeye, Jodie Comer, Joe Keery",
    language: "Tiếng Anh"
  }
])

Film.create([
  {
    film_name: "Người Nhân Bản",
    film_day: "22/09/2021",
    film_type_id: 2,
    author: "Lee Yong Zoo",
    description: "Seobok – Người Nhân Bản là câu chuyện về Ki-hun (Gong Yoo) – một cựu đặc vụ sống tách biệt với thế giới bên ngoài kể từ sau biến cố trong quá khứ, chấp nhận thực hiện nhiệm vụ cuối cùng từ Cơ quan Tình báo. Anh phải chịu trách nhiệm di chuyển Seobok (Park Bo Gum), một đối tượng thử nghiệm được tạo ra bằng cách nhân bản tế bào gốc và biến đổi gen.",
    status: 1,
    time: 114,
    actor: "Gong Yoo, Park Bo Gum, Jo Woo Jin, Jang Young Nam, Park Byung Eun",
    language: "Tiếng Hàn - Phụ đề Tiếng Việt"
  }
])

Film.create([
  {
    film_name: "Thám Tử Lừng Danh Conan: Viên Đạn Đỏ",
    film_day: "25/09/2021",
    film_type_id: 3,
    author: "Tomoka Nagaoka",
    description: "Seobok – Người Nhân Bản là câu chuyện về Ki-hun (Gong Yoo) – một cựu đặc vụ sống tách biệt với thế giới bên ngoài kể từ sau biến cố trong quá khứ, chấp nhận thực hiện nhiệm vụ cuối cùng từ Cơ quan Tình báo. Anh phải chịu trách nhiệm di chuyển Seobok (Park Bo Gum), một đối tượng thử nghiệm được tạo ra bằng cách nhân bản tế bào gốc và biến đổi gen.",
    status: 2,
    time: 111,
    actor: " Minami Hamabe, Megumi Hayashibara, Ogata Kenichi, Rikiya Koyama, Minami Takayama",
    language: "Tiếng Nhật - Phụ đề Tiếng Việt; Lồng tiếng"
  }
])


Film.create([
  {
    film_name: "Giải cứu công chứa kiến ",
    film_day: "10/10/2021",
    film_type_id: 4,
    author: "Noel Cleary",
    description: "Quá háo hức chào đón mùa xuân, Maya và Willy đã thức dậy khỏi giấc ngủ đông sớm hơn thời gian dự định. Từ đây, đôi bạn vô tình phải nhận một nhiệm vụ đặc biệt – bảo vệ và đưa quả trứng vàng đến ngôi nhà mới.",
    status: 2,
    time: 120,
    actor: "Ryan Reynolds, Jacksepticeye, Jodie Comer, Joe Keery",
    language: "Tiếng Anh"
  }
])
