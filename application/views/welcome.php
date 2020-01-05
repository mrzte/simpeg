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

            <?= $this->session->flashdata('message'); ?>

            <div class="row">
                <div class="col-md-12">
                    <!-- Collapsable Card Example -->
                    <div class="card shadow mb-4">
                        <!-- Card Header - Accordion -->
                        <a href="#info" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="true" aria-controls="info">
                            <h6 class="m-0 font-weight-bold text-primary"><?= $judul_pendek . " - " . $singkatan; ?></h6>
                        </a>
                        <!-- Card Content - Collapse -->
                        <div class="collapse" id="info" style="">
                            <div class="card-body">
                                <?= $judul_lengkap . " " . $instansi; ?>
                                merupakan sebuah aplikasi untuk melakukan manajemen data kepegawaian untuk pegawai negeri sipil (PNS).
                                Silahkan login untuk mulai melakukan manajemen atau pengolahan data kepegawaian sesuai dengan hak akses yang anda miliki.
                            </div>
                            <div class="card-footer">
                                <a href="#" class="btn btn-primary btn-icon-split btn-sm">
                                    <span class="text">Pelajari lebih lanjut</span>
                                    <span class="icon text-white-50">
                                        <i class="fas fa-arrow-alt-circle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Pengumuman</h1>
            </div>

            <div class="row">
                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card shadow">
                        <img src="<?= base_url('upload/img/blog/image-7.jpg') ?>" class="card-img-top" alt="image">
                        <div class="card-header">
                            <span class="small text-gray"><i class="far fa-clock mr-2"></i>Last updated 3 mins ago</span>
                        </div>
                        <div class="card-body">
                            <a href="#" class="text-dark" style="text-decoration:none">
                                <h4>Remote workers, here's how to dodge</h4>
                            </a>
                            <p class="card-text my-2">According to some historical records, some people out there have boundless energy, loads of free time, and ambition...</p>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-sm btn-primary" href="#">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card shadow">
                        <img src="<?= base_url('upload/img/blog/image-7.jpg') ?>" class="card-img-top" alt="image">
                        <div class="card-header">
                            <span class="small text-gray"><i class="far fa-clock mr-2"></i>Last updated 3 mins ago</span>
                        </div>
                        <div class="card-body">
                            <a href="#" class="text-dark" style="text-decoration:none">
                                <h4>Remote workers, here's how to dodge</h4>
                            </a>
                            <p class="card-text my-2">According to some historical records, some people out there have boundless energy, loads of free time, and ambition...</p>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-sm btn-primary" href="#">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card shadow">
                        <img src="<?= base_url('upload/img/blog/image-7.jpg') ?>" class="card-img-top" alt="image">
                        <div class="card-header">
                            <span class="small text-gray"><i class="far fa-clock mr-2"></i>Last updated 3 mins ago</span>
                        </div>
                        <div class="card-body">
                            <a href="#" class="text-dark" style="text-decoration:none">
                                <h4>Remote workers, here's how to dodge</h4>
                            </a>
                            <p class="card-text my-2">According to some historical records, some people out there have boundless energy, loads of free time, and ambition...</p>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-sm btn-primary" href="#">
                                Read More
                            </a>
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

</body>

</html>