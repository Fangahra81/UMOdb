import tkinter as tk
from tkinter import messagebox
import os
import shutil
import win32com.client


#Создаем ярлык
def create_shortcut(target_path, shortcut_name, icon_path=None, icon_index=0):
    # Получаем путь к рабочему столу
    desktop_path = os.path.join(os.path.expanduser("~"), "Desktop")
    shortcut_path = os.path.join(desktop_path, f"{shortcut_name}.lnk")

    # Создаем объект WshShell
    wsh_shell = win32com.client.Dispatch("WScript.Shell")

    # Создаем ярлык
    shortcut = wsh_shell.CreateShortCut(shortcut_path)

    # Устанавливаем свойства ярлыка
    shortcut.Targetpath = target_path
    shortcut.WorkingDirectory = os.path.dirname(target_path)

    if icon_path:
        shortcut.IconLocation = f"{icon_path},{icon_index}"

    shortcut.save()
def copysource(direct):
    cwd = os.getcwd()
    # Путь к исходной папке, которую нужно скопировать
    source_dir = fr"{cwd}\shop-lite"

    # Получаем путь к домашней директории текущего пользователя
    home_dir = os.path.expanduser('~')

    # Путь к целевой папке внутри домашней директории
    destination_dir = os.path.join(home_dir, 'shop-lite_'+direct)

    try:
        # Копируем содержимое source_dir в destination_dir
        shutil.copytree(source_dir, destination_dir)
    except FileExistsError as e:
        print(f"Папка уже существует: {e}")
    except Exception as e:
        print(f"Ошибка при копировании: {e}")
    else:
        print("Копирование завершено успешно!")

    create_shortcut(
        target_path=fr"{home_dir}\shop-lite_{direct}\shop-lite.cmd",
        shortcut_name=fr"lite_{direct}",
        icon_path=fr"{home_dir}\\shop-lite_{direct}\\icon.ico",
        icon_index=0
    )



#функция правки файла
def update_db_url():

    selected_base = listbox.get(tk.ACTIVE)
    if selected_base:
        param = bases[selected_base]
        print(f"Прописываем {param}")
        print(param + "Вход")
        home_dir = os.path.expanduser('~')
        file_path = fr"{home_dir}\shop-lite_{param}\config\db.connection.properties"

        # Читаем содержимое файла
        with open(file_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()

        # Обновляем нужную строку
        for i in range(len(lines)):
            if lines[i].startswith("custis.shop.db.url: jdbc:postgresql://localhost:5432/"):
                lines[i] = f"custis.shop.db.url: jdbc:postgresql://localhost:5432/{param}\n"
                break  # Прерываем цикл, так как строка найдена и изменена

        # Записываем изменения обратно в файл
        with open(file_path, 'w', encoding='utf-8') as file:
            file.writelines(lines)

        # update_version("5.32")

        messagebox.showinfo("Подключение к базе", f"Подключаюсь к базе ({param}ЗАПУСТИТЕ ЛАЙТ)")
    else:
        messagebox.showwarning("Ошибка", "Выберите базу из списка")






# def update_version(new_value):
#     file_path = r"C:\shop-lite\package.manifest"
#
#     # Читаем содержимое файла
#     with open(file_path, 'r', encoding='utf-8') as file:
#         lines = file.readlines()
#
#     # Обновляем нужную строку
#     for i in range(len(lines)):
#         if lines[i].startswith("  <Version>"):
#             print(lines)
#             lines[i] = f"  <Version>{new_value}</Version>\n"
#
#             break  # Прерываем цикл, так как строка найдена и изменена
#
#     # Записываем изменения обратно в файл
#     with open(file_path, 'w', encoding='utf-8') as file:
#         file.writelines(lines)


# Функция для чтения списка баз из файла
def read_bases_from_file(filename):
    if not os.path.exists(filename):
        messagebox.showerror("Ошибка", f"Файл {filename} не найден!")
        return {}
    bases = {}
    with open(filename, 'r', encoding='utf-8') as file:
        for line in file:
            name, param = line.strip().split(':')
            bases[name] = param
    return bases

# Функция для создания новой базы
#стартовая

def create_base():
    selected_base = listbox.get(tk.ACTIVE)
    if selected_base:
        param = bases[selected_base]
        new_db_name = param
        dump_file = f"dump{param}.sql"

        # Команда для создания базы данных

        create_db_command = f'("C:\\Program Files\\PostgreSQL\\14\\bin\\psql" -h localhost -U postgres -c "CREATE DATABASE {new_db_name};")'

        # Команда для импорта дампа
        import_dump_command = f'("C:\\Program Files\\PostgreSQL\\14\\bin\\psql" -U postgres -d {new_db_name} -f {dump_file})'

        try:
            # Создание базы данных
            os.system(create_db_command)
            print(f'База данных {new_db_name} успешно создана.')
            # Импорт дампа
            os.system(import_dump_command)
            print(f'Дамп успешно импортирован в базу данных {new_db_name}.')

        except Exception as e:
            print(f'Произошла ошибка при создании базы или импорте дампа: {e}')

        messagebox.showinfo("Создание базы", f"Создана база с ({param})")
    else:
        messagebox.showwarning("Ошибка", "Выберите базу из списка")
    copysource(param)
    update_db_url()
def kill_to_base():
    selected_base = listbox.get(tk.ACTIVE)
    if selected_base:
        param = bases[selected_base]
        desktop_path = os.path.join(os.path.join(os.environ['USERPROFILE']), 'Desktop')
        file_name = f'lite_{param}.lnk'
        file_path = os.path.join(desktop_path, file_name)

        home_dir = os.path.expanduser('~')
        db_name = param
        folder_path = os.path.join(home_dir, fr'shop-lite_{param}')

        disconnect_db_command = f'("C:\\Program Files\\PostgreSQL\\14\\bin\\psql" -h localhost -U postgres -c "SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = \'{db_name}\';")'
        drop_db_command = f'("C:\\Program Files\\PostgreSQL\\14\\bin\\psql" -h localhost -U postgres -c "DROP DATABASE {db_name};")'


        try:
            # Удаляем папку рекурсивно
            os.system(disconnect_db_command)
            os.system(drop_db_command)
            os.remove(file_path)
            if os.path.exists(folder_path):

                shutil.rmtree(folder_path)

                messagebox.showinfo("Info",fr"Папка 'shop-lite_{param}' успешно удалена.")
            else:

                messagebox.showwarning("Ошибка",fr"Папка 'shop-lite_{param}'не найдена.")
        except Exception as e:
                messagebox.showwarning("Ошибка",f"Ошибка: {e}")

        messagebox.showinfo("Info",f"база с (shop-lite_{param}) удалена")
    else:
        messagebox.showwarning("Ошибка", "Выберите базу из списка")


# Функция для подключения к базе
def connect_to_base():
    selected_base = listbox.get(tk.ACTIVE)
    if selected_base:
        param = bases[selected_base]
        print (f"Прописываем {param}")
        update_db_url (param)

        #update_version("5.32")


        messagebox.showinfo("Подключение к базе", f"Подключаюсь к базе ({param}ЗАПУСТИТЕ ЛАЙТ)")
    else:
        messagebox.showwarning("Ошибка", "Выберите базу из списка")
def emule_KKM():

    # -DtestEnv = true
    selected_base = listbox.get(tk.ACTIVE)
    if selected_base:
        param = bases[selected_base]
        print(f"Прописываем {param}")
        print(param + "Вход")
        home_dir = os.path.expanduser('~')
        file_path = fr"{home_dir}\shop-lite_{param}\shop-lite.cmd"

        # Читаем содержимое файла
        with open(file_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()

        # Обновляем нужную строку
        for i in range(len(lines)):
            if lines[i].startswith("    -cp lib\*; -Xmx768m custis.shop.ui.Application"):
                lines[i] = f"-DtestEnv=true    -cp lib\*; -Xmx768m custis.shop.ui.Application"
                break  # Прерываем цикл, так как строка найдена и изменена

        # Записываем изменения обратно в файл
        with open(file_path, 'w', encoding='utf-8') as file:
            file.writelines(lines)

        # update_version("5.32")

        messagebox.showinfo("Успех",f"Эмуляция ККМ включена, ({param}ЗАПУСТИТЕ ЛАЙТ)")
    else:
        messagebox.showwarning("Ошибка", "Выберите базу из списка")



# Вывод текущей директории
print("Текущая директория:", os.getcwd())

# Чтение списка баз из файла
bases = read_bases_from_file('base.conf')

# Создание основного окна
root = tk.Tk()
root.title("Базы")
root.geometry("230x320")
# Создание списка баз
listbox = tk.Listbox(root)
for base in bases:
    listbox.insert(tk.END, base)
listbox.pack(pady=10)

# Создание кнопок
btn_create = tk.Button(root, text="Создать новую базу", command=create_base)
btn_create.pack(pady=10)

btn_connect = tk.Button(root, text="Включить эмуляцию ККМ", command=emule_KKM)
btn_connect.pack(pady=10)

btn_connect = tk.Button(root, text="Удалить базу", command=kill_to_base)
btn_connect.pack(pady=10)

# Запуск основного цикла
root.mainloop()

# чтобы обновить лайт надо чтобы в файле  package.manifest в папке лайта была строчка  <Version>5.23</Version>
# а обновление запуститься через launcher.exe , но после него надо в shop-lite.cmd добавлять  f"-DtestEnv=true    -cp lib\*; -Xmx768m custis.shop.ui.Application"

#test pusha