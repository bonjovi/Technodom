<?php

return [
    'statuses' => [
        'pending' => 'В ожидании',
        'processing' => 'Обработка',
        'delivering' => 'Доставлен',
        'delivered' => 'Доставлен',
        'completed' => 'Завершенный',
        'canceled' => 'Отменено',
    ],
    'name' => 'Заказы',
    'create' => 'Создать заказ',
    'customer' => [
        'messages' => [
            'cancel_error' => 'Заказ доставляется или выполнен',
            'cancel_success' => 'Заказ был успешно отменен',
        ],
    ],
    'incomplete_order' => 'Незавершенные заказы',
    'order_id' => 'Номер заказа',
    'product_id' => 'Номер товара',
    'customer_label' => 'Клиент',
    'amount' => 'Количество',
    'tax_amount' => 'Сумма налога',
    'shipping_amount' => 'Сумма доставки',
    'payment_method' => 'Способ оплаты',
    'payment_status_label' => 'Статус платежа',
    'manage_orders' => 'Управление заказами',
    'order_intro_description' => 'Когда в вашем магазине появятся заказы, вы будете обрабатывать и отслеживать их.',
    'create_new_order' => 'Создать новый заказ',
    'manage_incomplete_orders' => 'Управляйте незавершенными заказами',
    'incomplete_orders_intro_description' => 'Незавершенный заказ - это заказ, созданный, когда покупатель добавляет продукт в корзину, продолжает заполнять информацию о покупке, но не завершает процесс оформления заказа.',
    'invoice_for_order' => 'Счет на заказ',
    'created' => 'Созданный',
    'invoice' => 'Выставленный счет',
    'return' => 'Возвращен',
    'total_refund_amount' => 'Общая сумма возврата',
    'total_amount_can_be_refunded' => 'Полная сумма может быть возвращена',
    'refund_reason' => 'Причина возврата (необязательно)',
    'products' => 'продукт(ы)',
    'see_on_maps' => 'Посмотреть на карте',
    'order' => 'Заказ',
    'order_information' => 'Запросить информацию',
    'create_new_product' => 'Создать новый товар',
    'out_of_stock' => 'Нет на складе',
    'products_available' => 'продукт (ы) доступен',
    'no_products_found' => 'Товары не найдены!',
    'default' => 'По умолчанию',
    'system' => 'Система',
    'new_order_from' => 'Новый заказ :order_id from :customer',
    'confirmation_email_was_sent_to_customer' => 'Подтверждение было отправлено на email клиента.',
    'address_name_required' => 'Обязательное поле',
    'address_phone_required' => 'Обязательное поле',
    'address_email_required' => 'Обязательное поле',
    'address_email_unique' => 'Такой адресом электронной почты существует, введите другой адрес электронной почты или войдите с помощью этого адреса!',
    'address_state_required' => 'Обязательное поле',
    'address_city_required' => 'Обязательное поле',
    'address_address_required' => 'Обязательное поле',
    'create_order_from_payment_page' => 'Заказ был создан со страницы оформления заказа',
    'order_was_verified_by' => 'Заказ был подтвержден %user_name%',
    'new_order' => 'Новый заказ :order_id',
    'payment_was_confirmed_by' => 'Платеж подтвержден (сумма :money) от %user_name%',
    'edit_order' => 'Изменить заказ :code',
    'confirm_order_success' => 'Заказ успешно подтвержден!',
    'error_when_sending_email' => 'Ошибка при отправке электронной почты',
    'sent_confirmation_email_success' => 'Письмо с подтверждением успешно отправлено!',
    'order_was_sent_to_shipping_team' => 'Заказ отправлен в службу доставки',
    'by_username' => 'от %user_name%',
    'shipping_was_created_from' => 'Доставка была создана из заказа %order_id%',
    'shipping_was_canceled_success' => 'Доставка успешно отменена!',
    'shipping_was_canceled_by' => 'Доставка была отменена %user_name%',
    'update_shipping_address_success' => 'Обновлен адрес доставки!',
    'order_was_canceled_by' => 'Заказ был отменен %user_name%',
    'confirm_payment_success' => 'Платеж успешно подтвержден!',
    'refund_amount_invalid' => 'Сумма возврата должна быть меньше или равна :price',
    'number_of_products_invalid' => 'Количество товаров с возвратом не действует!',
    'cannot_found_payment_for_this_order' => 'Не удалось найти оплату для этого заказа!',
    'refund_success_with_price' => 'Успешный возврат :price',
    'refund_success' => 'Успешно возвращено!',
    'order_is_not_existed' => 'Заказ не существует!',
    'reorder' => 'Изменение порядка',
    'sent_email_incomplete_order_success' => 'Отправлено письмо с напоминанием о незавершенном заказе!',
    'applied_coupon_success' => 'Промокод ":code" применен успешно!',
    'new_order_notice' => 'У вас есть <span class="bold">:count</span> Новый Заказ',
    'view_all' => 'Посмотреть все',
    'cancel_order' => 'Отменить заказ',
    'order_canceled' => 'Заказ отменен',
    'order_was_canceled_at' => 'Заказ был отменен в',
    'completed' => 'Завершенный',
    'uncompleted' => 'Незавершенный',
    'sku' => 'SKU',
    'shipping' => 'Доставка',
    'warehouse' => 'Склад',
    'sub_amount' => 'Сумма',
    'discount' => 'Скидка',
    'coupon_code' => 'Промокод ":code"',
    'shipping_fee' => 'Стоимость доставки',
    'tax' => 'Налог',
    'total_amount' => 'Общая сумма',
    'paid_amount' => 'Выплаченная сумма',
    'refunded_amount' => 'Возвращенная сумма',
    'amount_received' => 'Фактически полученная сумма',
    'download_invoice' => 'Скачать счет',
    'note' => 'Примечание',
    'add_note' => 'Добавить заметку...',
    'save' => 'Сохранить',
    'order_was_confirmed' => 'Заказ подтвержден',
    'confirm_order' => 'Подтвердите заказ',
    'confirm' => 'Подтвердить',
    'order_was_canceled' => 'Заказ был отменен',
    'pending_payment' => 'Ожидает оплаты',
    'payment_was_accepted' => 'Оплата :money приняты',
    'payment_was_refunded' => 'Платеж возвращен',
    'confirm_payment' => 'Подтвердите оплату',
    'refund' => 'Возврат',
    'all_products_are_not_delivered' => 'Не все товары доставлены',
    'delivery' => 'Доставка',
    'history' => 'История',
    'order_number' => 'Номер заказа',
    'description' => 'Описание',
    'from' => 'из',
    'status' => 'Статус',
    'successfully' => 'Успешно',
    'transaction_type' => 'Тип транзакции',
    'staff' => 'Персонал',
    'refund_date' => 'Дата возврата',
    'n_a' => 'N\\A',
    'payment_date' => 'Дата оплаты',
    'payment_gateway' => 'Платежный шлюз',
    'transaction_amount' => 'Сумма транзакции',
    'resend' => 'Отправить',
    'orders' => 'Заказы',
    'shipping_address' => 'Адрес доставки',
    'default_store' => 'Магазин по умолчанию',
    'update_address' => 'Обновить адрес',
    'cancel' => 'Отмена',
    'have_an_account_already' => 'Уже есть аккаунт',
    'dont_have_an_account_yet' => 'Еще нет учетной записи',
    'mark_payment_as_confirmed' => 'Отметьте <span>:method</span> как подтвержденный',
    'resend_order_confirmation' => 'Повторно отправить подтверждение заказа',
    'resend_order_confirmation_description' => 'Письмо с подтверждением будет отправлено на адрес<strong>:email</strong>?',
    'send' => 'Отправить',
    'update' => 'Обновить',
    'cancel_shipping_confirmation' => 'Отменить подтверждение доставки?',
    'cancel_shipping_confirmation_description' => 'Отменить подтверждение доставки?',
    'cancel_order_confirmation' => 'Отменить подтверждение заказа?',
    'cancel_order_confirmation_description' => 'Вы уверены, что хотите отменить заказ?',
    'confirm_payment_confirmation_description' => 'Обработано <strong>:method</strong>. Вы получали оплату вне системы? Этот платеж не будет сохранен в системе и не подлежит возврату.',
    'save_note' => 'Сохранить заметку',
    'order_note' => 'Примечание к заказу',
    'order_note_placeholder' => 'Примечание о заказе, ex: время или инструкция по отгрузке.',
    'order_amount' => 'Сумма заказа',
    'additional_information' => 'Дополнительная информация',
    'notice_about_incomplete_order' => 'Уведомление о неполном заказе',
    'notice_about_incomplete_order_description' => 'Напоминание о незавершенном заказе будет отправлено на адрес <strong>:email</strong>?',
    'incomplete_order_description_1' => 'Неполный заказ - это когда потенциальный покупатель помещает товары в свою корзину и полностью переходит на страницу оплаты, но затем не завершает транзакцию.',
    'incomplete_order_description_2' => 'Если вы связались с покупателям, и он хочет продолжить покупки, вы можете помочь им завершить заказ, перейдя по ссылке:',
    'send_an_email_to_recover_this_order' => 'Отправьте клиенту электронное письмо, чтобы восстановить этот заказ',
    'see_maps' => 'Посмотреть карту',
    'one_or_more_products_dont_have_enough_quantity' => 'Недостаточно количества одного или нескольких товаров!',
    'cannot_send_order_recover_to_mail' => 'Почта не найдена, не может отправить клиенту резервное письмо.',
    'payment_info' => 'Платежная информация',
];
