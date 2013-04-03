#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tour.delete_all
Trend.delete_all
Employee.delete_all

trends = Trend.create([
    { name: 'Южная Корея - Сеул' },
    { name: 'Тайланд'},
    { name: 'Европа - Испания' },
    { name: 'Вьетнам' },
    { name: 'Приморский край - Андреевка' },
    { name: 'Хабаровский край' }
])

employees = Employee.create([
    { lastname: 'Иванов', firstname: 'Сергей', secondname: 'Васильевич'},
    { lastname: 'Лавренко', firstname: 'Васелиса', secondname: 'Петровна'},
    { lastname: 'Сидорова', firstname: 'Анна', secondname: 'Александровна' },
    { lastname: 'Петров', firstname: 'Сергей', secondname: 'Михайлович' }
])

tours = Tour.create([
    { client: 'Марина',  date_of_departure: '2013-03-30', employee: Employee.find_by_lastname('Иванов'), price: 40500, registr: '0001', trend: Trend.find_by_name('Тайланд')},
    { client: 'Василий', date_of_departure: '2013-03-25', employee: Employee.find_by_lastname('Иванов'), price: 20000, registr: '0002', trend: Trend.find_by_name('Вьетнам')},
    { client: 'Анна',  date_of_departure: '2013-02-30', employee: Employee.find_by_lastname('Лавренко'), price: 40500, registr: '0001', trend: Trend.find_by_name('Европа - Испания')},
    { client: 'Виктор', date_of_departure: '2013-01-15', employee: Employee.find_by_lastname('Сидорова'), price: 20000, registr: '0002', trend: Trend.find_by_name('Приморский край - Андреевка')},
    { client: 'Сергей',  date_of_departure: '2012-09-10', employee: Employee.find_by_lastname('Петров'), price: 30500, registr: '0003', trend: Trend.find_by_name('Хабаровский край')},
    { client: 'Михаил', date_of_departure: '2013-03-05', employee: Employee.find_by_lastname('Петров'), price: 15500, registr: '0004', trend: Trend.find_by_name('Южная Корея - Сеул')},
    { client: 'Александр',  date_of_departure: '2013-02-17', employee: Employee.find_by_lastname('Сидорова'), price: 50500, registr: '0005', trend: Trend.find_by_name('Тайланд')},
    { client: 'Семья Герасимовых', date_of_departure: '2013-01-02', employee: Employee.find_by_lastname('Лавренко'), price: 18000, registr: '0006', trend: Trend.find_by_name('Вьетнам')},
    { client: 'Юлия Михайловна',  date_of_departure: '2012-12-20', employee: Employee.find_by_lastname('Иванов'), price: 41500, registr: '0007', trend: Trend.find_by_name('Южная Корея - Сеул')},
    { client: 'Петр Васильевич', date_of_departure: '2012-11-15', employee: Employee.find_by_lastname('Лавренко'), price: 55000, registr: '0008', trend: Trend.find_by_name('Приморский край - Андреевка')},
    { client: 'Галина Ларионовна',  date_of_departure: '2012-10-20', employee: Employee.find_by_lastname('Сидорова'), price: 16500, registr: '0009', trend: Trend.find_by_name('Хабаровский край')},
    { client: 'Петровы', date_of_departure: '2012-09-22', employee: Employee.find_by_lastname('Петров'), price: 9000, registr: '0010', trend: Trend.find_by_name('Вьетнам')},
    { client: 'Иван Александрович',  date_of_departure: '2012-08-09', employee: Employee.find_by_lastname('Иванов'), price: 11500, registr: '0011', trend: Trend.find_by_name('Тайланд')},
    { client: 'Кирилл Евгеньевич', date_of_departure: '2012-08-24', employee: Employee.find_by_lastname('Иванов'), price: 24500, registr: '0012', trend: Trend.find_by_name('Европа - Испания')},
    { client: 'Владимир Михайлович',  date_of_departure: '2012-09-21', employee: Employee.find_by_lastname('Лавренко'), price: 35500, registr: '0013', trend: Trend.find_by_name('Хабаровский край')},
    { client: 'Виктор Михайлович', date_of_departure: '2012-10-19', employee: Employee.find_by_lastname('Сидорова'), price: 5000, registr: '0014', trend: Trend.find_by_name('Южная Корея - Сеул')},
    { client: 'Виталий',  date_of_departure: '2012-11-28', employee: Employee.find_by_lastname('Сидорова'), price: 60500, registr: '0015', trend: Trend.find_by_name('Приморский край - Андреевка')},
    { client: 'Максим', date_of_departure: '2012-12-25', employee: Employee.find_by_lastname('Петров'), price: 55000, registr: '0016', trend: Trend.find_by_name('Хабаровский край')},
    { client: 'Екатерина',  date_of_departure: '2013-01-20', employee: Employee.find_by_lastname('Иванов'), price: 25500, registr: '0017', trend: Trend.find_by_name('Тайланд')},
    { client: 'Елизовата Макаровна', date_of_departure: '2013-02-25', employee: Employee.find_by_lastname('Сидорова'), price: 31000, registr: '0018', trend: Trend.find_by_name('Вьетнам')},
    { client: 'Николай',  date_of_departure: '2013-02-30', employee: Employee.find_by_lastname('Лавренко'), price: 25500, registr: '0019', trend: Trend.find_by_name('Европа - Испания')},
    { client: 'Татьяна Николаевна', date_of_departure: '2013-03-25', employee: Employee.find_by_lastname('Петров'), price: 15000, registr: '0020', trend: Trend.find_by_name('Южная Корея - Сеул')},
    { client: 'ООО Банк',  date_of_departure: '2013-01-02', employee: Employee.find_by_lastname('Лавренко'), price: 45500, registr: '0021', trend: Trend.find_by_name('Тайланд')},
    { client: 'Школа 2', date_of_departure: '2013-02-25', employee: Employee.find_by_lastname('Петров'), price: 39000, registr: '0022', trend: Trend.find_by_name('Хабаровский край')},
])