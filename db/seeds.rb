# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

KnowledgeBrick.destroy_all
Category.destroy_all
User.destroy_all

usr = User.create!(
          first_name: 'rafael',
          last_name: 'costa',
          email: "rcostafl@gmail.com",
          password: "123456",
          nickname: 'MrBrooks'
)

c_info = Category.create!(
  name: "informática",
  description: "agrega conhecimento sobre informática em geral",
  user: usr
)

c_info = Category.create!(
  name: "estatística",
  description: "agrega conhecimentos estatísticos",
  user: usr
)

c_info = Category.create!(
  name: "língua portuguesa",
  description: "agrega conhecimentos relacionados àlíngua portuguesa",
  user: usr
)

c_dev = Category.create!(
  name: "desenvolvimento",
  description: "agrega conhecimento sobre desenvolvimento, linguagens de programação, sql, códigos e etc.",
  user: usr,
  parent: c_info
)

c_infra = Category.create!(
  name: "infraestrutura",
  description: "agrega conhecimento sobre ingraestrutura, como sistemas operacionais, bases de dados, redes e etc.",
  user: usr,
  parent: c_info
)

c_ruby = Category.create!(
  name: "ruby on rails",
  description: "agrega conhecimento sobre desenvolvimento, linguagens de programação, sql, códigos e etc.",
  user: usr,
  parent: c_dev
)

KnowledgeBrick.create!(
  title: "model - make a foreign key not optional",
  knowledge_type: 'snippet',
  description: 'belongs_to :parent, optional: true',
  category: c_ruby
)
