<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

    <div class="menu_section">
        <?=
        \yiister\gentelella\widgets\Menu::widget(
            [
                "items" => [
                    ["label" => "Home", "url" => ["site/index"], "icon" => "home"],
                    [
                        "label" => "Data User",
                        "icon" => "fas fa-database",
                        "url" => "#",
                        "items" => [
                            ["label" => "User Account", "url" => ["user-account/index"], "icon" => "fas fa-user"],
                            ["label" => "Reseller", "url" => ["reseller/index"], "icon" => "fas fa-users"],
                            [
                                "label" => "Game",
                                "icon" => "fas fa-gamepad",
                                "url" => "#",
                                "items" => [
                                    ["label" => "Mobile Legends", "url" => ["mobile-legends/index"]],
                                    ["label" => "PUBG Mobile Indonesia", "url" => ["pubg-indonesia/index"]],
                                    ["label" => "Free Fire", "url" => ["free-fire/index"]],
                                    ["label" => "Sausage Man", "url" => ["sausage-man/index"]],
        
                                ],
                            ],

                        ],
                    ],
                ],
            ]
        )
        ?>
    </div>

</div>