Модуль создает ВМ в Yandex Cloud с настраиваемыми параметрами.

Модуль использует файл user_data.yml для настройки ВМ при старте (cloud-init)

platform_id	    Платформа ВМ
zone	        Зона доступности
cores	        Количество vCPU
memory	        Объем RAM (ГБ)
image_id	    ID образа ОС
disk_size	    Размер диска (ГБ)
subnet_id	    ID подсети в Yandex Cloud
name	        Имя виртуальной машины
preemptible	    Прерываемая ВМ
