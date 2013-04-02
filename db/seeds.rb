#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Trend.delete_all
trends = Trend.create([
    { name: 'Южная Корея - Сеул' },
    { name: 'Тайланд'},
    { name: 'Европа - Испания' },
    { name: 'Вьетнам' },
    { name: 'Приморский край - Андреевка' },
    { name: 'Хабаровский край' }
])

employees = Employee.create([
    { lastname: 'Иванов', firstname: 'Сергей', secondname: 'Васильевич'}
])

tours = Tour.create([
    { client: 'Марина', date_of_departure: '2012-03-30', employee: Employee.find_by_lastname('Иванов'), price: 40500, registr: '0001', trend: Trend.find_by_name('Тайланд')}
])