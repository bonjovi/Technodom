<?php

return [
    'name' => 'Подписки | Рассылки',
    'settings' => [
        'email' => [
            'templates' => [
                'title' => 'Шаблоны писем для рассылок',
                'description' => 'Настройки шаблонов для рассылок',
                'to_admin' => [
                    'title' => 'Email отправлен администратору',
                    'description' => 'Шаблон для отправки письма админу',
                ],
                'to_user' => [
                    'title' => 'Email отправлен пользователю',
                    'description' => 'Шаблон для отправки письма подписчикам',
                ],
            ],
        ],
        'title' => 'Настройка Mailchimp',
        'description' => 'Настройки для рассылки',
        'mailchimp_api_key' => 'Mailchimp API Ключ',
        'mailchimp_list_id' => 'Mailchimp List ID',
        'sendgrid_api_key' => 'Sendgrid API Ключ',
        'sendgrid_list_id' => 'Sendgrid List ID',
    ],
    'statuses' => [
        'subscribed' => 'Подписался',
        'unsubscribed' => 'Отписался',
    ],
];
