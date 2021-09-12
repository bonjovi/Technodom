<?php

return [
    'menu' => 'Контакты',
    'edit' => 'Информация о контакте',
    'tables' => [
        'phone' => 'Телефон',
        'email' => 'Email',
        'full_name' => 'ФИО',
        'time' => 'Дата',
        'address' => 'Адрес',
        'subject' => 'Тема',
        'content' => 'Содержание',
    ],
    'contact_information' => 'Контактная информация',
    'replies' => 'Ответ',
    'email' => [
        'header' => 'Email',
        'title' => 'Новый контакт с вашего сайта',
    ],
    'form' => [
        'name' => [
            'required' => 'Обязательное поле',
        ],
        'email' => [
            'required' => 'Обязательное поле',
            'email' => 'Электронный адрес недействителен',
        ],
        'content' => [
            'required' => 'Требуется контент',
        ],
    ],
    'contact_sent_from' => 'Эта контактная информация отправлена из',
    'sender' => 'Отправитель',
    'sender_email' => 'Email',
    'sender_address' => 'Адрес',
    'sender_phone' => 'Телефон',
    'message_content' => 'Содержание сообщения',
    'sent_from' => 'Email отправлено от',
    'form_name' => 'Имя',
    'form_email' => 'Email',
    'form_address' => 'Адрес',
    'form_subject' => 'Тема',
    'form_phone' => 'Телефон',
    'form_message' => 'Сообщение',
    'required_field' => 'Поле с (<span style="color: red">*</span>) является обязательным.',
    'send_btn' => 'Отправить сообщение',
    'new_msg_notice' => 'Новые сообщения <span class = "bold">:count </span> новых сообщений',
    'view_all' => 'Посмотреть все',
    'statuses' => [
        'read' => 'Прочитанный',
        'unread' => 'Непрочитанный',
    ],
    'phone' => 'Телефон',
    'address' => 'Адрес',
    'message' => 'Сообщение',
    'settings' => [
        'email' => [
            'title' => 'Контакт',
            'description' => 'Конфигурация контактной электронной почты',
            'templates' => [
                'notice_title' => 'Отправить уведомление администратору',
                'notice_description' => 'Шаблон сообщения электронной почты для отправки уведомления администратору, когда система получит новый контакт',
            ],
        ],
    ],
    'no_reply' => 'Пока нет ответа!',
    'reply' => 'Ответить',
    'send' => 'Отправить',
    'shortcode_name' => 'Форма обратной связи',
    'shortcode_description' => 'Добавить контактную форму',
    'shortcode_content_description' => 'Добавить шорткод [contact-form][/contact-form] в редактор?',
    'message_sent_success' => 'Сообщение успешно отправлено!',
];
