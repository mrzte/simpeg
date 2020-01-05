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

            <?= $this->session->flashdata('message'); ?>
            <div class="card shadow">
                <div class="card-header py-3">
                    <a href="<?php echo site_url('master/pangkat') ?>"><i class="fas fa-arrow-left"></i>
                        Kembali</a>
                </div>
                <div class="card-body">
                    <form action="<?php site_url('master/pangkat/edit') ?>" method="post" enctype="multipart/form-data">

                        <input type="hidden" name="id_golongan" value="<?php echo $pangkat->id_golongan ?>" />

                        <div class="form-group">
                            <label for="golongan">Golongan/Pangkat*</label>
                            <input class="form-control <?php echo form_error('golongan') ? 'is-invalid' : '' ?>" type="text" name="golongan" id="golongan" placeholder="Golongan/Pangkat" value="<?php echo $pangkat->golongan ?>" />
                            <div class="invalid-feedback">
                                <?php echo form_error('golongan') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="uraian">Uraian*</label>
                            <textarea class="form-control <?php echo form_error('uraian') ? 'is-invalid' : '' ?>" id="uraian" name="uraian" placeholder="Uraian" rows="3"><?= $pangkat->uraian ?></textarea>
                            <div class="invalid-feedback">
                                <?php echo form_error('uraian') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="level">Level*</label>
                            <input class="form-control <?php echo form_error('level') ? 'is-invalid' : '' ?>" type="text" name="level" id="level" placeholder="Level" value="<?php echo $pangkat->level ?>" />
                            <div class="invalid-feedback">
                                <?php echo form_error('level') ?>
                            </div>
                        </div>

                        <button type="reset" class="btn btn-secondary">Batal</button>
                        <input class="btn btn-success" type="submit" name="btn" value="Simpan" />
                    </form>
                </div>

                <div class="card-footer small text-muted">
                    * harus diisi
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