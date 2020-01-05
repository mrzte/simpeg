<!-- QUERY MENU -->
<?php
$role_id = $this->session->userdata('role_id');
$queryMenu = "SELECT `user_menu`.`id`, `menu`
                FROM `user_menu` JOIN `user_access_menu`
                  ON `user_menu`.`id` = `user_access_menu`.`menu_id`
               WHERE `user_access_menu`.`role_id` = $role_id
            ORDER BY `user_access_menu`.`menu_id` ASC
            ";
$menu = $this->db->query($queryMenu)->result_array();
?>
<?php foreach ($menu as $m) : ?>
    <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="menuDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="mr-1 d-none d-lg-inline text-gray-700">
                <i class="fas fa-fw fa-angle-down"></i>
                <?= $m['menu']; ?>
            </span>
        </a>
        <?php
            $menuId = $m['id'];
            $querySubMenu = "SELECT * FROM `user_sub_menu`
                            WHERE `menu_id` = $menuId
                            AND `is_active` = 1
                            ";
            $subMenu = $this->db->query($querySubMenu)->result_array();
            ?>
        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="menuDropdown">
            <?php foreach ($subMenu as $sm) : ?>
                <a class="dropdown-item" href="<?= site_url($sm['url']); ?>">
                    <?= $sm['title']; ?>
                </a>
            <?php endforeach; ?>
        </div>
    </li>
<?php endforeach; ?>