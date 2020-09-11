На сервере по URL адресу http://server1.ru/test.json располагается файл с данными:
{
 "pattern": [
  { "id": 1, "type": "tablet", "name": "Samsung" },
  { "id": 2, "type": "clock", "name": "Apple" },
  { "id": 3, "type": "smartphone", "name": "Philips" },
  { "id": 4, "type": "clock", "name": "Realme" }
 ]
}

Необходимо при помощи Qt/C++/QML сделать вывод всех значений "name" с "type" равным "clock". Для вывода данных использовать QML.