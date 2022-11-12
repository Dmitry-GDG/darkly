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

<details><summary>Что такое `Brute force` и как взломано</summary>

[The main source of information](https://owasp.org)
  
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
- Анализ копии запросов, поступающих на веб-приложение;
- Извлечение необходимых для принятия решений данных (IP, URL, ARGS, BODY);
- Фильтрация полученных данных с исключением нецелевых URI для уменьшения количества ложных срабатываний;
- Выбор запросов с одного адреса на конкретный URI по мере их близости или запросов со всех адресов на конкретный URI (для выявления распределенных атак методом перебора) в рамках определенного временного окна;
- Блокирование источника(ов) атаки при превышении пороговых значений.

</details>


| [README](README.md) | [subject](sublect_ru.md) | [How to start a web server](howTo.md) | defense |
|-|-|-|-|
