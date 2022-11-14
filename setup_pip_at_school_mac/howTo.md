# Установить pip на школьный mac
1. выполнить
```
python get-pip.py
```
2. В терминале внимательно прочитать информацию об установке и добавить указанные пути в переменную PATH. 

Начиная с macOS 10.15 основным шеллом для macOS идёт zsh, а не bash.

Поэтому прописывать изменения PATH нужно в .zshrc (или другом подходящем для zsh файле).

В НОВОМ терминале:
```
echo $PATH
nano ~/.zshrc
```
Добавить в конец этого файла
```
#path to pip
export PATH=$PATH:/Users/trurgot/Library/Python/3.9/bin
```

^X -> Y -> Enter

```
pip --version
```

# Установка requests на школьный mac
```
python3 -m pip install requests
```

# В обычном терминале (не в VS Code) будет работать
