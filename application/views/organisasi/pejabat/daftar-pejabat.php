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
                <h1 class="h3 mb-0 text-gray-800"><?= $title; ?></h1>
                <a href="<?= site_url('ditjen/jabatan') ?>" class="btn btn-sm btn-primary shadow-sm">Data Jabatan</a>
            </div>

            <div class="row">
                <div class="col-lg-8">
                    <?= $this->session->flashdata('message'); ?>
                </div>
            </div>

            <div class="row">
                <div class="col-lg">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="struktural" data-toggle="pill" href="#pills-struktural" role="tab" aria-controls="pills-struktural" aria-selected="true">Struktural</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="fungsional" data-toggle="pill" href="#pills-fungsional" role="tab" aria-controls="pills-fungsional" aria-selected="false">Fungsional</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="pills-struktural" role="tabpanel" aria-labelledby="struktural">
                                        <table class="table table-hover table-bordered" id="Struktural" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Jabatan</th>
                                                    <th>Nama</th>
                                                    <th>NIP</th>
                                                    <th>TMT</th>
                                                    <th>Opsi</th>
                                                    <!-- <th>Event</th> -->
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $no = 0;
                                                foreach ($struktural as $row) :
                                                    $no++; ?>
                                                    <tr>
                                                        <td width="1">
                                                            <?= $no ?>.
                                                        </td>
                                                        <td>
                                                            <?= $row->jabatan ?>
                                                        </td>
                                                        <td>
                                                            <?= $row->nama_pegawai ?>
                                                        </td>
                                                        <td>
                                                            <?= $row->nip ?>
                                                        </td>
                                                        <td width="150">
                                                            <?= $row->tmt ?>
                                                        </td>
                                                        <td class="text-center" width="100">
                                                            <a href="<?= site_url('pegawai/riwayat/details/' . $row->id_pegawai) ?>" class="btn btn-primary btn-circle btn-sm" title="Daftar Riwayat Hidup"><i class="fas fa-address-card"></i></a>
                                                            <!-- 
                                                    <a href="<?= site_url('ditjen/pejabat/edit/' . $row->id_pegawai) ?>" class="btn btn-primary btn-circle btn-sm" title="Edit"><i class="fas fa-edit"></i></a>
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
                                    <div class="tab-pane fade" id="pills-fungsional" role="tabpanel" aria-labelledby="fungsional">
                                        <table class="table table-hover table-bordered" id="Fungsional" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>Jabatan</th>
                                                    <th>Nama</th>
                                                    <th>NIP</th>
                                                    <th>TMT</th>
                                                    <th>Opsi</th>
                                                    <!-- <th>Event</th> -->
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $no = 0;
                                                foreach ($fungsional as $row) :
                                                    $no++; ?>
                                                    <tr>
                                                        <td width="1">
                                                            <?= $no ?>.
                                                        </td>
                                                        <td>
                                                            <?= $row->jabatan ?>
                                                        </td>
                                                        <td>
                                                            <?= $row->nama_pegawai ?>
                                                        </td>
                                                        <td>
                                                            <?= $row->nip ?>
                                                        </td>
                                                        <td width="150">
                                                            <?= date('d F Y', $row->tmt); ?>
                                                        </td>
                                                        <td class="text-center" width="100">
                                                            <a href="<?= site_url('pegawai/riwayat/details/' . $row->id_pegawai) ?>" class="btn btn-primary btn-circle btn-sm" title="Daftar Riwayat Hidup"><i class="fas fa-address-card"></i></a>
                                                            <!-- 
                                                    <a href="<?= site_url('ditjen/pejabat/edit/' . $row->id_pegawai) ?>" class="btn btn-primary btn-circle btn-sm" title="Edit"><i class="fas fa-edit"></i></a>
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
        table1 = $("#Struktural").DataTable({});
        table2 = $("#Fungsional").DataTable({});
    </script>

</body>

</html>