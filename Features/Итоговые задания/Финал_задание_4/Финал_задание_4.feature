﻿#language: ru

@tree

Функционал: <описание фичи>

Как Продавец я хочу
проверить документы Продажа и Заказ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка документа Продажа
*Подключение профиля Продавца
И я подключаю профиль TestClient "Продавец"
*Возвожность создания документа Продажа
	И В командном интерфейсе я выбираю 'Продажи' 'Продажи'
	Тогда открылось окно 'Продажи товара'
	И я нажимаю на кнопку с именем 'ФормаСоздать'

* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Продукты"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Мелкооптовая'
* Заполнение товарной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт '
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '100,00'
	И в таблице "Товары" я завершаю редактирование строки
* Запись и проведение документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Продажа * от *'
	И я  запоминаю значение поля "Номер" как "НомерДокумента"
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я закрываю все окна клиентского приложения

	*Поиск созданного документа в списке
		И В командном интерфейсе я выбираю 'Продажи' 'Продажи'
		Тогда открылось окно 'Продажи товара'
		И в таблице "Список" я перехожу к строке:
			| 'Номер'     |
			| '$НомерДокумента$' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Продажа * от *'
		И Я закрываю окно 'Продажа * от *'
			

*Проверка видимости Заказ
Сценарий: проверка видимости документа Заказ			
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я активизирую поле с именем "Покупатель"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от *'
	И Я закрываю окно 'Заказ * от *'

*Проверка проведения Заказ	
Сценарий: проверка проведения документа Заказ
И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И в таблице "Список" я активизирую поле с именем "Номер"
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ * от *'

Попытка
	И я жду доступности элемента "ФормаПровести" в течение 3 секунд
	И я нажимаю на кнопку с именем 'ФормаПровести'
И я жду закрытия окна 'Заказ * от *' в течение 5 секунд
Исключение 
		И пауза 3
	И я останавливаю выполнение сценария "проверка проведения документа Заказ"

*Проверка создания Заказ		
Сценарий: проверка создания документа Заказ		
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	Попытка
			И я жду доступности элемента с именем "Список" в течение 3 секунд
			И я жду доступности элемента "Создать" в течение 3 секунд
	И я нажимаю на кнопку с именем 'Создать'
	Когда открылось окно 'Заказ (создание)'
	И Я закрываю окно 'Заказ (создание)'
	Исключение 
		И пауза 3
	И я останавливаю выполнение сценария "проверка создания документа Заказ"