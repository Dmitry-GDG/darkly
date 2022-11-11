| [README](README.md) | [subject](sublect_ru.md) | glossarium | [How To](howTo.md) | [defense](defense.md) |
|-|-|-|-|-|

[The main source of information](https://owasp.org)

<details><summary>01. Brute force данных для входа</summary>

| Найдено на странице | http://192.168.56.3/?page=signin |
|-|-|

<details><summary>Что такое `Brute force`</summary>
  
![44-BruteForce](https://user-images.githubusercontent.com/84193980/201331815-afabace6-0df6-4de6-83cf-549b7577436b.jpeg)

`Brute force` использует метод проб и ошибок, чтобы угадать данные для входа, ключи шифрования или найти скрытую веб-страницу. Хакеры перебирают все возможные комбинации, надеясь угадать правильно.

Это старый метод атаки, но он по-прежнему эффективен и популярен среди хакеров. Потому что в зависимости от длины и сложности пароля его взлом может занять от нескольких секунд до многих лет.

</details>

На вышеуказанной странице мы можем ввести логин и пароль. 
  
 <img width="1169" alt="Screen Shot 2022-11-11 at 14 36 53" src="https://user-images.githubusercontent.com/84193980/201332789-dce4b467-d603-40db-897b-82bceeffb68f.png">
 
Когда мы вводим неправильный пароль, мы видим, что веб-страница использует ввод для доступа к следующей странице, на которой есть очень специфическое изображение images/WrongAnswer.gif:
  
<img width="1904" alt="Screen Shot 2022-11-11 at 14 35 05" src="https://user-images.githubusercontent.com/84193980/201332820-9375ec69-2e0b-4a86-b11c-2f21fc528212.png">
 
Мы можем использовать это для `Brute force` процесса входа в систему.

Для этого из [OWASP SecLists](https://github.com/danielmiessler/SecLists) используем наиболее часто используемые [имена пользователей](https://github.com/danielmiessler/SecLists/blob/master/Usernames/top-usernames-shortlist.txt) и [паролей](https://github.com/danielmiessler/SecLists/blob/master/Passwords/2020-200_most_used_passwords.txt)

Используя простой скрипт, мы можем попробовать каждую комбинацию наиболее часто используемых паролей и имен пользователей, и если мы не видим изображение «WrongAnswer.gif» на экране, то это означает, что мы успешно вошли в систему!
 
  ![изображение](https://user-images.githubusercontent.com/36443074/145259668-f75efbc9-4aea-4d42-9f29-7afb2e4e4e76.png)

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
