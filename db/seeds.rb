# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# projects = List.create({title: 'Семья', todos: [Todo.create(text: "Купить молоко", isCompleted: false)]}, {title: 'Работа', todos: [Todo.new(text: "Работать", isCompleted: false)]}, {title: 'Прочее', todos: [Todo.new(text: "Гулять", isCompleted: false)]})

# List.destroy_all
# Todo.destroy_all

List.create([
    { title: 'Семья'},
    { title: 'Работа'},
    { title: 'Прочее'}
  ])

List.find_by(title: 'Семья')
.todos.create([
     { text: 'Купить молоко', isCompleted: false},
     { text: 'Заменить масло в двигателе', isCompleted: false},
     { text: 'Отправить письмо бабушке', isCompleted: false},
     { text: 'Заплатить за квартиру', isCompleted: false},
     { text: 'Забрать обувь из ремонта', isCompleted: false}
   ])

List.find_by(title: 'Работа')
.todos.create([
     { text: 'Позвонить заказчику', isCompleted: false },
     { text: 'Отправить документы', isCompleted: false },
     { text: 'Заполнить отчет', isCompleted: false }
   ])

List.find_by(title: 'Прочее')
.todos.create([
     { text: 'Позвонить другу', isCompleted: false },
     { text: 'Подготовиться к поездке', isCompleted: false }
   ])