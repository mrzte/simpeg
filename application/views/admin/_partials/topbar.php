<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">
        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle">
                <i class="fa fa-bars"></i>
            </button>

            <ul class="navbar-nav">
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link" href="<?= site_url('welcome') ?>">
                        <span class="d-none d-lg-inline text-gray-700">
                            <i class="fas fa-home"></i>
                            Home
                        </span>
                        <span class="d-md-none text-gray-700">
                            <i class="fas fa-home"></i>
                        </span>
                    </a>
                </li>


                <div class="topbar-divider d-none d-sm-block"></div>

                <?php /*if ($this->session->userdata('email')) {
                    $this->load->view("admin/_partials/navbar-menu.php");
                }*/ ?>

                <!-- Nav Item - Panduan -->
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="menuDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="d-none d-lg-inline text-gray-700">
                            <i class="fas fa-fw fa-angle-down"></i>
                            Panduan
                        </span>
                    </a>
                    <!-- Dropdown - User Information -->
                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="menuDropdown">
                        <a class="dropdown-item" href="#">
                            Administrator
                        </a>
                        <a class="dropdown-item" href="#">
                            User
                        </a>
                    </div>
                </li>
            </ul>

            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">


                <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                <li class="nav-item dropdown no-arrow d-sm-none">
                    <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-search fa-fw"></i>
                    </a>
                    <!-- Dropdown - Messages -->
                    <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                        <form class="form-inline mr-auto w-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </li>

                <div class="topbar-divider d-none d-sm-block"></div>

                <?php if ($this->session->userdata('email')) { ?>


                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?= $user['name']; ?></span>
                            <img class="img-profile rounded-circle" src="<?= base_url('upload/user/') . $user['image']; ?>">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                            <?php $queryAccount = "SELECT * FROM `user_sub_menu`
                                                    WHERE `menu_id` = 7
                                                    AND `is_active` = 1
                                                    ";
                                $account = $this->db->query($queryAccount)->result_array();
                                ?>
                            <?php foreach ($account as $a) : ?>
                                <a class="dropdown-item" href="<?= site_url($a['url']); ?>">
                                    <i class="<?= $a['icon']; ?> fa-sm mr-2 text-gray-400"></i>
                                    <?= $a['title']; ?>
                                </a>
                            <?php endforeach; ?>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                <?php } else { ?>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Login / Register</span>
                            <img class="img-profile rounded-circle" src="<?= base_url('upload/user/default.jpg') ?>">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="<?= site_url('auth') ?>">
                                <i class="fas fa-sign-in-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Login
                            </a>
                            <a class="dropdown-item" href="<?= site_url('auth/registrasi') ?>">
                                <i class="fas fa-plus-circle fa-sm fa-fw mr-2 text-gray-400"></i>
                                Register
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="<?= site_url('auth/lupa') ?>">
                                <i class="fas fa-lock fa-sm fa-fw mr-2 text-gray-400"></i>
                                Lupa Password
                            </a>
                        </div>
                    </li>

                <?php } ?>
            </ul>

        </nav>
        <!-- End of Topbar -->