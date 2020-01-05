<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="">
        <img class="sidebar-brand-icon" src="<?= base_url('upload/img/brand/logo.svg') ?>" width="50" height="50" alt="Ristekdikti">
        <div class="sidebar-brand-text mx-3"><?= $singkatan; ?></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <?php if ($this->session->userdata('email')) {
        $this->load->view("admin/_partials/sidebar-menu.php");
    } ?>

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->