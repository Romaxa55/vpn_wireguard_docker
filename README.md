# VPN Wireguard Docker

Этот проект представляет собой реализацию `VPN-сервера` на базе `Wireguard` с использованием `Docker` и `AdGuard` для блокировки рекламы. Проект создан для обеспечения безопасного и зашифрованного соединения, а также предоставления настройки фильтрации контента.

Второй репозиторий, [wireguard-ui](https://github.com/Romaxa55/wireguard-ui), представляет собой веб-интерфейс для управления настройками WireGuard. Этот проект является форком от [ngoduykhanh/wireguard-ui](https://github.com/ngoduykhanh/wireguard-ui), но с дополнительными улучшениями.

### Основные изменения и добавления включают:

* Добавлена интеграция с **Mailgun**.
* Обновлены шаблоны и утилиты.
* Добавил **планировщик** блокировки клиентов по расписанию
В общем, эти два репозитория представляют собой улучшенную версию **wg-ui**, переписанную на **Golang**, с добавлением статистики клиентов через **REST API jRPC** и интеграцией с **Mailgun** для управления электронной почтой.

## Основные компоненты

* **Wireguard**: Обеспечивает надежное и безопасное VPN-соединение.
* **Docker**: Используется для развертывания AdGuard Home.
* **AdGuard** Home: Действует как DNS-сервер, который блокирует запросы к известным рекламным и фишинговым серверам ещё до того, как они достигнут вашего устройства.
* **Traefik**: Используется в качестве обратного прокси и балансировщика нагрузки.

## Установка и настройка

Склонируйте репозиторий на ваш сервер:
```bash
git clone https://github.com/Romaxa55/vpn_wireguard_docker.git
```
Перейдите в директорию проекта:
```bash
cd vpn_wireguard_docker
```
Подготовьте файл `env_example`, переименовав его в `.env` и заполнив необходимыми значениями.
Заполните файл `hosts.yaml`

## Запуск Ansible Playbook

Для запуска **Ansible Playbook**, выполните следующую команду:

```bash
ansible-playbook playbook.yaml
```
Дополнительные ресурсы

Для более подробной информации о том, как я реализовывал этот проект, вы можете посмотреть мою статью на моем сайте [https://roshamagin.site](https://roshamagin.site/zapiski-devops-polnaia-intierniet-biezopasnost-s-sobstviennym-vpn-siervierom-na-wireguard-i-blokirovkoi-rieklamy-adguard/).

## Лицензия

Этот проект лицензирован под лицензией MIT.

### Поддержка проекта ❤️

Если вам нравится этот проект и вы хотите поддержать его, вы можете сделать это, перейдя по следующей ссылке: [Поддержать на Boosty](https://boosty.to/romaxa55/donate). Ваша поддержка очень ценна! 🌟👏