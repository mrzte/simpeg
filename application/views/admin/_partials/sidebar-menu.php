<!-- QUERY TITLE -->
<?php
$queryTitle = "SELECT * FROM `user_title`
            ORDER BY `user_title`.`id_title` ASC
            ";
$title1 = $this->db->query($queryTitle)->result_array();
?>
<!-- QUERY MENU -->
<?php foreach ($title1 as $t) : ?>
    <?php
        $role_id = $this->session->userdata('role_id');
        $titleId = $t['id_title'];
        $queryMenu = "SELECT `user_menu`.`id`, `menu`, `icon`
                FROM `user_menu` JOIN `user_access_menu`
                  ON `user_menu`.`id` = `user_access_menu`.`menu_id`
               WHERE `user_access_menu`.`role_id` = $role_id AND `title_id` = $titleId
            ORDER BY `user_access_menu`.`menu_id` ASC
            ";
        $menu = $this->db->query($queryMenu)->result_array();
        ?>

    <?php
        if ($menu != NULL) { ?>
        <div class="sidebar-heading"><?= $t['title']; ?></div>
        <?php foreach ($menu as $m) : ?>
            <?php
                        $menuId = $m['id'];
                        $querySubMenu = "SELECT * FROM `user_sub_menu`
                        WHERE `menu_id` = $menuId
                        AND `is_active` = 1
                        ";
                        $subMenu = $this->db->query($querySubMenu)->result_array();
                        ?>
            <?php if ($this->uri->segment(1) == strtolower($m['menu'])) : ?>
                <li class="nav-item active">
                <?php else : ?>
                <li class="nav-item">
                <?php endif; ?>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapse<?= $m['id']; ?>" aria-expanded="true" aria-controls="collapse<?= $m['id']; ?>">
                    <i class="<?= $m['icon']; ?>"></i>
                    <span><?= $m['menu']; ?></span>
                </a>
                <div id="collapse<?= $m['id']; ?>" class="collapse
        <?php foreach ($subMenu as $sm) {
                        if ($sm['title'] ==  $title) {
                            echo "show";
                        }
                    }  ?>" aria-labelledby="heading<?= $m['id']; ?>" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header"><?= $m['menu']; ?>:</h6>
                        <?php foreach ($subMenu as $sm) : ?>
                            <?php if ($title == $sm['title']) : ?>
                                <a class="collapse-item active" href="<?= site_url($sm['url']); ?>">
                                <?php else : ?>
                                    <a class="collapse-item" href="<?= site_url($sm['url']); ?>">
                                    <?php endif; ?>
                                    <i class="<?= $sm['icon']; ?>"></i>
                                    <?= $sm['title']; ?>
                                    </a>
                                <?php endforeach; ?>
                    </div>
                </div>
                </li>

            <?php endforeach; ?>
            <hr class="sidebar-divider">
        <?php } ?>
    <?php endforeach; ?>
    <li class="nav-item">
        <a class="nav-link" href="<?= site_url('auth/logout'); ?>" data-toggle="modal" data-target="#logoutModal">
            <i class="fas fa-fw fa-sign-out-alt"></i>
            <span>Keluar</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">