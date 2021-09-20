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
    time: 100
  }
])
