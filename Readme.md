# Назначение конфигурации
TrackStudio Service Desk - это конфигурация для управления ИТ услугами (IT Service Management), построенная на основе библиотеки ITIL v3. Вы можете использовать эту конфигурацию с TrackStudio Enterprise версий 4.0.16 и выше.

В данной конфигурации реализованы следующие процессы ITIL:

* Управление инцидентами 
* Управление конфигурациями 
* Управление проблемами 
* Управление запросами на изменения 
* Управление базой знаний (управление временными решениями)
* Частично реализовано управление SLA 

**TrackStudio** — это интегрированная система управления задачами, документацией и файлами, созданная для разработчиков программного обеспечения и ИТ-отделов компаний. Ключевая особенность TrackStudio — иерархическая организация задач с бесконечным уровнем вложенности. Эта особенность, как вы убедитесь ниже, позволяет поддерживать конфигурационную базу данных (CMDB) любого уровня детализации. А поддержка независимых и гибко настраиваемых процессов (workflow) — реализовать все процессы, описанные в ITIL. Благодаря возможностям по гибкой настройке, а также механизму вычисляемых дополнительных полей и триггеров, нам удалось не меняя ни строчки в исходном коде TrackStudio создать интегрированный продукт, приспособленный для решения конкретной задачи: организации службы поддержки.

Мы выпускаем TrackStudio Enterprise в двух вариантах: **Standalone** — для рабочих станций с графическим окружением под управлением Microsoft Windows или GNU/Linux, и **WAR** — для серверов.
Вариант **Standalone** поставляется с утилитой для настройки и запуска **TrackStudio Server Manager**. В комплект также входит сервер приложений jetty, почтовый сервер jes и СУБД Hypersonic SQL. Данный вариант работает «из коробки», то есть вы можете после установки сразу же запустить TrackStudio без настройки, чтобы ознакомиться с системой.
Также Server Manager понадобится вам для экспорта и импорта данных из базы.
На этапе ознакомления с продуктом мы рекомендуем использовать вариант Standalone.
Вариант WAR предназначен для запуска под имеющимся у вас сервером приложений (обычно это Tomcat). Он содержит не скомпилированные JSP, которые Tomcat собирает сам. Этот вариант настраивается путем редактирования файлов properties. Вы также можете перенести предварительно настроенные в Server Manager файлы properties с другой машины.

* [скачать TrackStudio](http://www.trackstudio.ru/products-edownload.html) 
* [скачать конфигурацию ITSM v. 1.2.2](https://github.com/downloads/winzard/TrackStudio-ITSM/itsm-1.2.2.zip)

# Установка TrackStudio Service Desk

*Для работы конфигурации вам понадобится TrackStudio версии 4.0.16 или новее.*

Ниже описана процедура установки TrackStudio Standalone. Об установке и настройке TrackStudio WAR вы можете прочитать [в документации к системе на сайте](http://www.trackstudio.ru/installation-guide.html).

1. Запустите TrackStudio Enterprise Server Manager (sman.exe для Windows, sman для GNU/Linux).
2. Выберите «Русский» в меню File→Language, если отображаются надписи на английском языке.
3. В меню нажмите кнопку «Создать БД»
4. В появившемся окне выберите «Создать базу данных на основе файла экспорта».
5. Нажмите кнопку «ОК».
6. Выберите файл базы данных **itsm-db-demo.zip** (или **itsm-db-clean.zip**)
7. После того, как база данных будет создана, **скопируйте** архив **itsm.jar** в папку **etc/plugins/scripts** вашего экземпляра TrackStudio.
8. Распакуйте архив **itsm-email-templates.zip** в папку **etc/plugins/email**.
9. Нажмите кнопку «Старт», чтобы запустить сервер TrackStudio.
10. Когда сервер запустится, нажмите кнопку «Открыть в браузере».
11.  Зайдите в систему как *HDAdmin* с паролем «*root*». Смените пароль и почтовый адрес этому пользователю.

# Что нового в версии 1.2

* Поле «Контактные данные» в Инциденте заменено на три специализированных поля: «Электронная почта клиента», «Контактный телефон» и «Компания клиента».
* Исправлены права доступа к клиентам, из-за которых сотрудники 2 и 3 линий не могли регистрировать инциденты.
* Исправлена ошибка, из-за которой при создании инцидента с приоритетом «Критический» не устанавливались сроки завершения инцидента.
* Исправлена ошибка в импорте инцидентов через электронную почту.

## В версии 1.2.1

* Исправлена ошибка в связях между инцидентами, проблемами и решениям, приводившая к рассинхронизации их состояний.
* Исправлена ошибка в почтовых шаблонах, происходившая при привязке к инциденту более одной конфигурационной единицы.

## В версии 1.2.2

* Поле "Дублирует" сделано обязательным при закрытии проблемы как дубля. Запрещено указывать более одной проблемы в качестве дубля.
* Исправлена процедура закрытия дубликатов проблем, теперь связанные инциденты синхронизируются с инцидентами исходной проблемы
* Исправлена ошибка в правах третьей линии поддержки, из-за которой неправильно закрывались дубликаты проблем
* Исправлена ситуация, когда ответ клиента на предложенное решение приводил к рассинхронизации состояний инцидента и проблемы
* Исправлена ошибка, из-за которой срок решения проблемы выставлялся относительно времени выполнения операции "Классификация инцидента", а не с момента регистрации инцидента.
* Для всех пользователей запрещено редактирование приоритета и срока решения в инцидентах. Эти поля редактируются только с помощью триггеров.
* Триггер NewIncidentProcessing заменен на два триггера: IntroduceClient и ApplySLA. Первый выполняется до создания задачи, а второй - после.
* Пользователям-клиентам запрещено видеть и редактировать бюджеты в инцидентах
* Удалено правило саморегистрации пользователей
* Классы триггеров и скриптов теперь запакованы в jar. Распаковывать их не нужно.

# Обновление с любой версии

Если у вас уже установлена и используется любая предыдущая версия конфигурации ITSM, вы можете обновить ее. Для обновления вам понадобятся файлф **itsm.jar** и **itsm-email-templates.zip** с сайта TrackStudio. Файл базы данных при обновлении не используется.

1. **Скопируйте** архив **itsm.jar** в папку **etc/plugins/scripts** вашего экземпляра TrackStudio.
2. Распакуйте архив **itsm-email-templates.zip** в папку **etc/plugins/email**.
3. Запустите TrackStudio.
4. Зайдите в систему как HDAdmin с вашим паролем.
5. Перейдите к списку задач и отметьте флажок напротив задачи #50 Инциденты.
6. Внизу списка в выпадающем поле выберите скрипт Upgrade.class и нажмите «Применить».
7. В процессе обновления в окне логов Server Manager будут выводиться информационные сообщения. Также там могут появляться сообщения об ошибке CantFindObjectException — это нормально.
8. Перезапустите TrackStudio.
