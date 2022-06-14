<?php
$db_host = $_ENV['DB_HOST'];

return [
    'components' => [
        'db' => [
            'dsn' => 'mysql:host='.$db_host.';dbname=yii2advanced_test',
        ],
    ],
];
