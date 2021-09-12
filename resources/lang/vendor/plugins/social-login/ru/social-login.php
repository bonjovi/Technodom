<?php

return [
    'settings' => [
        'title' => 'Настройка входа через соцсети',
        'description' => 'Включить входа через соцсети',
        'facebook' => [
            'title' => 'Настройка входа через Facebook',
            'description' => 'Для активации входа через Facebook, добавьте App ID и App Secret',
            'app_id' => 'App ID',
            'app_secret' => 'App Secret',
            'helper' => 'Перейдите на страницу https://developers.facebook.com, чтобы создать новое приложение для обновления App ID, App Secret. URL',
        ],
        'google' => [
            'title' => 'Настройка входа через Google',
            'description' => 'Для активации входа через Google , добавьте App ID и App Secret',
            'app_id' => 'App ID',
            'app_secret' => 'App Secret',
            'helper' => 'Перейдите на страницу https://console.developers.google.com/apis/dashboard чтобы создать новое приложение для обновления App ID, App Secret. URL',
        ],
        'github' => [
            'title' => 'Настройка входа через Github',
            'description' => 'Для активации входа через Github, добавьте App ID и App Secretfor',
            'app_id' => 'App ID',
            'app_secret' => 'App Secret',
            'helper' => 'Перейдите на страницу https://github.com/settings/developers чтобы создать новое приложение для обновления App ID, App Secret. URL',
        ],
        'linkedin' => [
            'title' => 'Настройка входа через Linkedin',
            'description' => 'Для активации входа через Linkedin, добавьте App ID и App Secret',
            'app_id' => 'App ID',
            'app_secret' => 'App Secret',
            'helper' => 'Перейдите на страницу https://www.linkedin.com/developers/apps/чтобы создать новое приложение для обновления App ID, App Secret. URL',
        ],
        'enable' => 'Включить?',
    ],
    'menu' => 'Настройка входа через соцсети',
];
