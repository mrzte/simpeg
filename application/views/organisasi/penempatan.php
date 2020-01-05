<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $title; ?></title>
    <?php $this->load->view("admin/_partials/head.php"); ?>
    <link href="<?php echo base_url('assets/select2/select2.min.css') ?>" rel="stylesheet" />
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php $this->load->view("admin/_partials/sidebar.php"); ?>

        <?php $this->load->view("admin/_partials/topbar.php"); ?>
        <!-- Begin Page Content -->
        <div class="container-fluid">

            <?php $this->load->view("admin/_partials/breadcrumb.php"); ?>

            <?= $this->session->flashdata('message'); ?>
            <div class="card shadow">
                <div class="card-header py-3">
                    <a class="m-0 font-weight-bold text-dark"><?= $title; ?></a>
                </div>
                <div class="card-body">
                    <form action="<?= site_url('organisasi/penempatan') ?>" method="post" enctype="multipart/form-data">
                        <div class="form-row">
                            <div class="col">
                                <label for="select-pegawai">Pegawai*</label>
                                <select class="form-control <?php echo form_error('id_pegawai') ? 'is-invalid' : '' ?>" name="id_pegawai" id="select-pegawai">
                                    <option value="" class="alert alert-primary" disabled selected>-- Pilih Pegawai --</option>
                                    <?php
                                    foreach ($pegawai as $row) { ?>
                                        <option value='<?= $row->id_pegawai ?>' <?php if (set_value('id_pegawai') == $row->id_pegawai) {
                                                                                        echo 'selected';
                                                                                    } ?>><?= $row->nama_pegawai ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('id_pegawai', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="select-jabatan">Jabatan*</label>
                                <select class="form-control <?php echo form_error('id_jabatan') ? 'is-invalid' : '' ?>" name="id_jabatan" id="select-jabatan">
                                    <option value="" class="alert alert-primary" disabled selected>-- Pilih Jabatan --</option>
                                    <?php
                                    foreach ($jabatan as $row) { ?>
                                        <option value='<?= $row->id_jabatan ?>' <?php if (set_value('id_jabatan') == $row->id_jabatan) {
                                                                                        echo 'selected';
                                                                                    } ?>><?= $row->jabatan ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('id_jabatan', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>

                        <div class="form-row mt-2">
                            <div class="col-6">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tmt') ? 'is-invalid' : '' ?> datepicker" value="<?= set_value('tmt'); ?>" id="tmt" name="tmt" placeholder="Masukkan TMT-nya">
                                </div>
                                <?= form_error('tmt', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>

                        <div class="form-row mt-2">
                            <div class="col-12 text-center">
                                <input class="btn btn-primary btn-sm" type="submit" name="btn" value="Tempatkan" />
                                <a href="<?= site_url('organisasi/penempatan/delete') ?>" onClick="return confirm('Apakah anda yakin menghapus semua data pejabat?')" class="btn btn-primary btn-sm">Hapus Semua</a>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- <div class="card-footer small text-muted">
                    * harus diisi
                </div>
                                                                                -->
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
    <script src="<?php echo base_url('assets/select2/select2.min.js') ?>"></script>
    <script>
        $("#select-pegawai").select2({
            placeholder: "-- Pilih Pegawai --",
            allowClear: true,
            theme: "classic"
        });
        $("#select-jabatan").select2({
            placeholder: "-- Pilih Jabatan --",
            allowClear: true,
            theme: "classic"
        });
    </script>

</body>

</html>