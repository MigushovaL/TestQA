﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
И В командном интерфейсе я выбираю 'Продажи' 'Товары'
Тогда открылось окно 'Товары'
И в таблице "Список" я перехожу к строке:
	| 'Артикул' | 'Код'       | 'Наименование' | 'Поставщик'   |
	| 'H987'    | '000000029' | 'Хлеб'         | 'Мосхлеб ОАО' |
И в таблице "Список" я выбираю текущую строку
И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
Тогда открылось окно 'Файлы'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Файл (создание)'
            И  Я буду выбирать внешний файл "C:\Users\79083\Documents\GitHub\TestQA\Features\Итоговые задания\Финал_задание_1\хлеб_картинка.jpg"    
            И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
Тогда элемент формы с именем "Владелец" стал равен 'Хлеб'
И элемент формы с именем "ИмяФайла" стал равен 'хлеб_картинка.jpg'	
И Я закрываю окно 'хлеб_картинка.jpg (Файл)'

Тогда открылось окно 'Файлы'           
    И в таблице "Список" я перехожу к строке:
                | 'Наименование'  |
                | 'хлеб_картинка.jpg' |   
            Когда открылось окно 'Файлы'
            И я нажимаю на кнопку с именем 'ФормаВыбрать'
            Тогда открылось окно 'Хлеб (Товар) *'
            И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
            И я жду закрытия окна 'Хлеб (Товар)' в течение 20 секунд
            И я закрываю все окна клиентского приложения				







