﻿#language: ru

@tree

Функционал: проверка заполнения поля Организация

Как тестировщик я хочу
просмотреть процедуру создания заказа
чтобы проверить заполнение поля Организация

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка поля организации в заказе
* Создаем новый заказ:
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'         |
		| '10'  | 'Розничный покупатель' |
	И в таблице "List" я выбираю текущую строку
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
* Проверяем Организацию:
	Если элемент формы с именем "Agreement" стал равен 'Розничное' Тогда
		И представление элемента с именем 'Company' стало равно 'Собственная компания 1'
*Если поле Организации пустое, то выполняем:
	Если поле с именем "Company" имеет значение "" тогда
		И я нажимаю кнопку выбора у поля с именем "Company"
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'           |
			| '1'   | 'Собственная компания 1' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"		