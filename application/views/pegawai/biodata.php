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

            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Biodata</h1>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <a href="#info" class="text-center d-block card-header" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="info">
                                <h6 class="font-weight-bold text-dark"><?= $title; ?></h6>
                            </a>
                        </div>
                        <div class="collapse show" id="info" style="">
                            <div class="card-body text-center">
                                <img src="<?= base_url('upload/pegawai/') . $pegawai->foto; ?>" width="300" class="img-thumbnail">
                                <h5 class="card-title mt-4"><?= $pegawai->nama_pegawai ?></h5>
                                <small class="card-text"><?= $pegawai->nip ?></small>
                                <p class="card-text"><?= $pegawai->id_jabatan ?></p>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-lg-8">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('pegawai') ?>" role="tab"><i class="fas fa-arrow-left"></i> Kembali</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Pendidikan</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Keluarga</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Pekerjaan</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered" id="Table1" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>NGETES</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>TES SATU DUA TIGA</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered" id="Table2" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>NGETES22</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>3 2 1 GO!</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
                            </div>
                        </div>
                    </div>
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
    <script>
        table1 = $("#Table1").DataTable({});
        table2 = $("#Table2").DataTable({});
        table3 = $("#Table3").DataTable({});
    </script>

</body>

</html>