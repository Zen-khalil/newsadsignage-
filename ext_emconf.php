<?php

$EM_CONF[$_EXTKEY] = [
    'title' => 'News Ad Signage',
    'description' => 'A forked and rebranded version of the News extension for digital signage displays.',
    'category' => 'plugin',
    'author' => 'Zen Khalil',
    'author_email' => 'zenkhalil91@gmail.com',
    'state' => 'alpha',
    'version' => '1.0.0',
    'constraints' => [
        'depends' => [
            'php' => '8.1.0-8.4.99',
            'typo3' => '12.4.2-13.9.99',
            'backend' => '12.4.2-13.9.99',
            'extbase' => '12.4.2-13.9.99',
            'fluid' => '12.4.2-13.9.99',
            'frontend' => '12.4.2-13.9.99',
        ],
        'conflicts' => [],
        'suggests' => [
            'rx_shariff' => '12.0.0-14.99.99',
            'news_tagsuggest' => '1.0.0-1.99.99',
            'numbered_pagination' => '1.0.1-1.99.99',
        ],
    ],
];
