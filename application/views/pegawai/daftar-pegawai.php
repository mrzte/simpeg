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
                <h1 class="h3 mb-0 text-gray-800"><?= $title; ?> (Keseluruhan)</h1>
            </div>

            <div class="row">
                <div class="col-lg">
                    <?= $this->session->flashdata('message'); ?>
                </div>
            </div>

            <div class="row">
                <div class="col-lg">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <a class="m-0 font-weight-bold text-dark"><?= $title; ?></a>
                            <a href="<?= site_url('pegawai/pegawai/add') ?>" class="btn btn-primary btn-sm ml-2 mr-2">Tambah</a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>NIP</th>
                                            <th>Nama</th>
                                            <th>Jabatan</th>
                                            <th>Jenis Kelamin</th>
                                            <th>Opsi</th>
                                            <!-- <th>Event</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($pegawai as $row) :
                                            $no++; ?>
                                            <tr>
                                                <td width="1">
                                                    <?= $no ?>.
                                                </td>
                                                <td>
                                                    <?= $row->nip ?>
                                                </td>
                                                <td>
                                                    <?= $row->nama_pegawai ?>
                                                </td>
                                                <td>
                                                    <?= $row->jabatan ?>
                                                </td>
                                                <td>
                                                    <?= $row->jenis_kelamin ?>
                                                </td>
                                                <td class="text-center" width="100">
                                                    <a href="<?= site_url('pegawai/riwayat/details/' . $row->id_pegawai) ?>" class="btn btn-primary btn-circle btn-sm" title="Daftar Riwayat Hidup"><i class="fas fa-address-card"></i></a>
                                                    <a href="<?= site_url('pegawai/pegawai/biodata/' . $row->id_pegawai) ?>" class="btn btn-primary btn-circle btn-sm" title="Biodata"><i class="fas fa-user"></i></a>
                                                    <a href="<?= site_url('pegawai/pegawai/edit/' . $row->id_pegawai) ?>" class="btn btn-primary btn-circle btn-sm" title="Edit"><i class="fas fa-edit"></i></a>
                                                    <!-- 
                                                    <a onclick="deleteConfirm('<?php echo site_url('menu/menu/delete/' . $row->id) ?>')" href="#!" class="btn btn-danger btn-circle btn-sm" title="Hapus"><i class="fas fa-trash"></i></a>
                                                    -->
                                                </td>
                                                <!-- <td>
                                                    <?= $row->event ?>
                                                </td> -->
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
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

</body>

</html>