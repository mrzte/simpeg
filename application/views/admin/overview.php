<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $title; ?></title>
    <?php $this->load->view("admin/_partials/head.php"); ?>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php $this->load->view("admin/_partials/sidebar.php"); ?>

        <?php $this->load->view("admin/_partials/topbar.php"); ?>

        <!-- Begin Page Content -->
        <div class="container-fluid">

            <?php $this->load->view("admin/_partials/breadcrumb.php"); ?>
            <!-- Content Row -->
            <div class="row">

                <!-- Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <a href="<?= site_url('ditjen') ?>" style="text-decoration:none">
                        <div class="card border-left-danger shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Struktur Organisasi</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-sitemap fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <a href="<?= site_url('ditjen/pejabat') ?>" style="text-decoration:none">
                        <div class="card border-bottom-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Daftar Pejabat</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-images fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <a href="<?= site_url('ditjen/penghargaan') ?>" style="text-decoration:none">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Data Penghargaan</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-award fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <a href="<?= site_url('admin/overview/struktur') ?>" style="text-decoration:none">
                        <div class="card border-bottom-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Data Kepangkatan</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-chart-line fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <a href="<?= site_url('admin/overview/struktur') ?>" style="text-decoration:none">
                        <div class="card border-left-danger shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Data Penggajian</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-money-check-alt fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <a href="<?= site_url('admin/overview/struktur') ?>" style="text-decoration:none">
                        <div class="card border-bottom-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Kartu Pegawai</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-id-card-alt fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <a href="<?= site_url('admin/overview/struktur') ?>" style="text-decoration:none">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Data Pensiun</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-walking fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-3 col-md-6 mb-4">
                    <a href="<?= site_url('admin/overview/struktur') ?>" style="text-decoration:none">
                        <div class="card border-bottom-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Sasaran Kinerja</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-tasks fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-4 col-md-6 mb-4">
                    <a href="<?= site_url('admin/overview/struktur') ?>" style="text-decoration:none">
                        <div class="card border-left-danger shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Riwayat Hidup</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-address-card fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-4 col-md-6 mb-4">
                    <a href="<?= site_url('admin/overview/struktur') ?>" style="text-decoration:none">
                        <div class="card border-bottom-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Rotasi Pejabat</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-sync fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xl-4 col-md-6 mb-4">
                    <a href="<?= site_url('ditjen/pegawai') ?>" style="text-decoration:none">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Data Pegawai</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">DITJEN PI</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-user-friends fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

            </div>


        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <?php $this->load->view("admin/_partials/footer.php"); ?>

    </div>
    <!-- /.content Wrapper -->

    </div>
    <!-- /#wrapper -->

    <?php $this->load->view("admin/_partials/modal.php"); ?>
    <?php $this->load->view("admin/_partials/scrolltop.php"); ?>
    <?php $this->load->view("admin/_partials/js.php") ?>

</body>

</html>