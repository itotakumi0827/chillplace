# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Area.create!(:name => '渋谷周辺エリア')
# id=5
Area.create!(:name => '新宿周辺エリア')
# id=6

Genre.create!(:name => 'バー・居酒屋')
# id=9
Genre.create!(:name => 'カフェ')
# id=10
Genre.create!(:name => 'シーシャ')
# id=11
Genre.create!(:name => 'その他')

Place.create!(:name =>'E-smoke',:area_id =>5,:genre_id =>11)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?