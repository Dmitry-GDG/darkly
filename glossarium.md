| [README](README.md) | [subject](sublect_ru.md) | glossarium | [How To](howTo.md) | [defense](defense.md) |
|-|-|-|-|-|

[The main source of information](https://owasp.org)

<details><summary>01. Brute force данных для входа</summary>

| Найдено на странице | http://192.168.56.3/?page=signin |
|-|-|

<details><summary>Что такое `Brute force`</summary>

`Brute force` использует метод проб и ошибок, чтобы угадать данные для входа, ключи шифрования или найти скрытую веб-страницу. Хакеры перебирают все возможные комбинации, надеясь угадать правильно.

Это старый метод атаки, но он по-прежнему эффективен и популярен среди хакеров. Потому что в зависимости от длины и сложности пароля его взлом может занять от нескольких секунд до многих лет.

</details>

На вышеуказанной странице мы можем ввести логин и пароль. Когда мы вводим неправильный пароль, мы видим, что веб-страница использует ввод для доступа к следующей странице.
  
  ![изображение](https://user-images.githubusercontent.com/36443074/145258253-313e1e5f-767d-45dc-a41e-5859db6a0f3c.png)
 
- Также мы знаем, что на этой веб-странице у нас есть очень специфическое изображение на экране и в нашем исходном коде: «images/WrongAnswer.gif»:

  ![изображение](https://user-images.githubusercontent.com/36443074/145401132-601d7606-e550-42a0-b3b7-c9fb8c8b0194.png)
 
  ![изображение](https://user-images.githubusercontent.com/36443074/145401163-f14ee23a-037e-4f15-8849-12c3754b9c85.png)

- Мы можем использовать это для грубой силы процесса входа в систему!
- Мы использовали наиболее часто используемые имена пользователей и пароли из [OWASP SecLists] (https://github.com/danielmiessler/SecLists).
- Используя простой скрипт, мы можем попробовать каждую комбинацию наиболее часто используемых паролей и имен пользователей, и если мы не видим изображение «Неправильный ответ».
  на экране это означает, что мы успешно вошли в систему!
- Здесь скрипт показывает нам все возможные обнаруженные логины:
 
  ![изображение](https://user-images.githubusercontent.com/36443074/145259668-f75efbc9-4aea-4d42-9f29-7afb2e4e4e76.png)

- Любой из этих логинов с паролем "shadow" приведет нас на страницу авторизации!

### Как исправить:
- Используйте более надежное имя пользователя и пароль

</details>

<details><summary>02. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>03. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>04. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>05. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>06. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>07. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>08. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>09. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>10. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>11. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>12. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>13. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

<details><summary>14. </summary>

| Найдено на странице |  |
|-|-|

<details><summary>Что такое ``</summary>

`` 

</details>

- 

### Как исправить:
- 

</details>

| [README](README.md) | [subject](sublect_ru.md) | glossarium | [How To](howTo.md) | [defense](defense.md) |
|-|-|-|-|-|
