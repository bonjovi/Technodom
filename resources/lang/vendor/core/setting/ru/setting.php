<?php

return [
    'title' => 'Настройки',
    'email_setting_title' => 'Настройки электронной почты',
    'general' => [
        'theme' => 'Тема',
        'description' => 'Установка информации о сайте',
        'title' => 'Основные',
        'general_block' => 'Основная информация',
        'rich_editor' => 'Богатый редактор',
        'site_title' => 'Заголовок сайта',
        'admin_email' => 'Email админа',
        'seo_block' => 'Конфигурация SEO',
        'seo_title' => 'SEO заголовок',
        'seo_description' => 'SEO описание',
        'webmaster_tools_block' => 'Google Инструменты веб-мастеров',
        'google_site_verification' => 'Подтверждение сайта Google',
        'placeholder' => [
            'site_title' => 'Заголовок сайта (максимум 120 символов)',
            'admin_email' => 'Email администратора',
            'seo_title' => 'SEO-заголовок (максимум 120 символов)',
            'seo_description' => 'SEO-описание (максимум 120 символов)',
            'google_analytics' => 'Google Аналитика',
            'google_site_verification' => 'Google Проверка сайта',
        ],
        'cache_admin_menu' => 'Кешировать административное меню?',
        'enable_send_error_reporting_via_email' => 'Разрешить отправку отчетов об ошибках по электронной почте?',
        'time_zone' => 'Часовой пояс',
        'default_admin_theme' => 'Тема администратора по умолчанию',
        'enable_change_admin_theme' => 'Включить смену темы администратора?',
        'enable' => 'Включить',
        'disable' => 'Запрещать',
        'enable_cache' => 'Включить кеш?',
        'cache_time' => 'Время кеширования (минуты)',
        'cache_time_site_map' => 'Время кеширования Карта сайта',
        'admin_logo' => 'Логотип администратора',
        'admin_favicon' => 'favicon админа',
        'admin_title' => 'Заголовок администратора',
        'admin_title_placeholder' => 'Отображение заголовка на вкладке браузера',
        'cache_block' => 'Кеш',
        'admin_appearance_title' => 'Внешний вид администратора',
        'admin_appearance_description' => 'Настройка внешнего вида администратора, такого как редактор, язык ...',
        'seo_block_description' => 'Настройка заголовка сайта, мета-описания сайта, ключевого слова сайта для оптимизации SEO',
        'webmaster_tools_description' => 'Инструменты Google для веб-мастеров (GWT) - это бесплатное программное обеспечение, которое помогает вам управлять технической стороной вашего сайта.',
        'cache_description' => 'Кэш конфигурации для системы оптимизации скорости',
        'yes' => 'Да',
        'no' => 'Нет',
        'show_on_front' => 'Домашняя страница отображается',
        'select' => '— Выбрать —',
        'show_site_name' => 'Показывать название сайта после заголовка страницы, разделять знаком "-"?',
        'locale' => 'Язык сайта',
        'locale_direction' => 'Язык сайта',
        'admin_locale_direction' => 'Административный язык',
        'admin_login_screen_backgrounds' => 'Фоны экрана входа в систему (~1366x768)',
    ],
    'email' => [
        'subject' => 'Предмет',
        'content' => 'Контент',
        'title' => 'Настройка шаблона электронной почты',
        'description' => 'Шаблон электронной почты с использованием HTML и системных переменных.',
        'reset_to_default' => 'Восстановление значений по умолчанию',
        'back' => 'Вернуться к настройкам',
        'reset_success' => 'Настройки по умолчанию успешно сброшены',
        'confirm_reset' => 'Подтвердить сброс шаблона электронного письма?',
        'confirm_message' => 'Вы действительно хотите сбросить этот шаблон электронной почты по умолчанию?',
        'continue' => 'Продолжать',
        'sender_name' => 'Имя отправителя',
        'sender_name_placeholder' => 'Название',
        'sender_email' => 'email отправителя',
        'mailer' => 'Mailer',
        'port' => 'Порт',
        'port_placeholder' => 'Ex: 587',
        'host' => 'Host',
        'host_placeholder' => 'Ex: smtp.gmail.com',
        'username' => 'Имя пользователя',
        'username_placeholder' => 'Имя пользователя для входа на почтовый сервер',
        'password' => 'Пароль',
        'password_placeholder' => 'Пароль для входа на почтовый сервер',
        'encryption' => 'Шифрование',
        'mail_gun_domain' => 'Домен',
        'mail_gun_domain_placeholder' => 'Домен',
        'mail_gun_secret' => 'Secret',
        'mail_gun_secret_placeholder' => 'Secret',
        'mail_gun_endpoint' => 'Конечная точка',
        'mail_gun_endpoint_placeholder' => 'Конечная точка',
        'log_channel' => 'Канал журнала',
        'sendmail_path' => 'Путь к отправке почты',
        'encryption_placeholder' => 'Шифрование: ssl или tls',
        'ses_key' => 'Ключ',
        'ses_key_placeholder' => 'Ключ',
        'ses_secret' => 'Secret',
        'ses_secret_placeholder' => 'Secret',
        'ses_region' => 'Регион',
        'ses_region_placeholder' => 'Регион',
        'postmark_token' => 'Токен',
        'postmark_token_placeholder' => 'Токен',
        'template_title' => 'Шаблоны писем',
        'template_description' => 'Базовые шаблоны для всех писем',
        'template_header' => 'Заголовок шаблона электронного письма',
        'template_header_description' => 'Шаблон для заголовка писем',
        'template_footer' => 'Нижний колонтитул шаблона электронного письма',
        'template_footer_description' => 'Шаблон для нижнего колонтитула писем',
        'default' => 'По умолчанию',
        'using_queue_to_send_mail' => 'Использование задания очереди для отправки электронных писем (сначала необходимо настроить очередь https://laravel.com/docs/queues#supervisor-configuration)',
    ],
    'media' => [
        'title' => 'Media',
        'driver' => 'Driver',
        'description' => 'Настройки для медиа',
        'aws_access_key_id' => 'AWS Access Key ID',
        'aws_secret_key' => 'AWS Secret Key',
        'aws_default_region' => 'AWS Default Region',
        'aws_bucket' => 'AWS Bucket',
        'aws_url' => 'AWS URL',
        'do_spaces_access_key_id' => 'DO Spaces Access Key ID',
        'do_spaces_secret_key' => 'DO Spaces Secret Key',
        'do_spaces_default_region' => 'DO Spaces Default Region',
        'do_spaces_bucket' => 'DO Spaces Bucket',
        'do_spaces_endpoint' => 'DO Spaces Endpoint',
        'do_spaces_cdn_enabled' => 'Is DO Spaces CDN enabled?',
        'media_do_spaces_cdn_custom_domain' => 'Do Spaces CDN custom domain',
        'media_do_spaces_cdn_custom_domain_placeholder' => 'https://your-custom-domain.com',
        'enable_chunk' => 'Разрешить загрузку размера блока?',
        'chunk_size' => 'Размер блока (байты)',
        'chunk_size_placeholder' => 'По умолчанию: 1048576 ~ 1MB',
        'max_file_size' => 'Максимальный размер файла (МБ)',
        'max_file_size_placeholder' => 'По умолчанию: 1048576 ~ 1GB',
        'enable_watermark' => 'Включить водяной знак?',
        'watermark_source' => 'Изображение водяного знака',
        'watermark_size' => 'Размер водяного знака (%)',
        'watermark_size_placeholder' => 'По умолчанию: 10 (%)',
        'watermark_opacity' => 'Непрозрачность водяного знака (%)',
        'watermark_opacity_placeholder' => 'По умолчанию: 70 (%)',
        'watermark_position' => 'Положение водяного знака',
        'watermark_position_x' => 'Положение водяного знака X',
        'watermark_position_y' => 'Положение водяного знака Y',
        'watermark_position_top_left' => 'Top left',
        'watermark_position_top_right' => 'Top right',
        'watermark_position_bottom_left' => 'Левая кнопка',
        'watermark_position_bottom_right' => 'Правая кнопка',
        'watermark_position_center' => 'Центр',
    ],
    'license' => [
        'purchase_code' => 'Код покупки',
        'buyer' => 'Покупатель',
    ],
    'field_type_not_exists' => 'Тип поля не существует',
    'save_settings' => 'Сохранить настройки',
    'template' => 'Шаблон',
    'description' => 'Описание',
    'enable' => 'Включить',
    'send' => 'Отправить',
    'test_email_description' => 'Чтобы отправить тестовое письмо, убедитесь, что вы обновили конфигурацию для отправки письма!',
    'test_email_input_placeholder' => 'Введите адрес электронной почты, на который вы хотите отправить тестовое письмо.',
    'test_email_modal_title' => 'Отправить тестовое письмо',
    'test_send_mail' => 'Отправить тестовое письмо',
    'test_email_send_success' => 'Письмо успешно отправлено!',
    'locale_direction_ltr' => 'Слева направо',
    'locale_direction_rtl' => 'Справа налево',
    'saving' => 'Сохранение ...',
];
