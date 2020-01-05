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
                    <a href="<?php echo site_url('admin/role') ?>"><i class="fas fa-arrow-left"></i>
                        Kembali</a>
                </div>
                <div class="card-body">
                    <form action="<?php site_url('admin/role/edit') ?>" method="post" enctype="multipart/form-data">

                        <input type="hidden" name="id" value="<?php echo $role->id ?>" />

                        <div class="form-group">
                            <label for="role">Nama hak akses*</label>
                            <input class="form-control <?php echo form_error('role') ? 'is-invalid' : '' ?>" type="text" name="role" placeholder="Nama hak akses" value="<?php echo $role->role ?>" />
                            <div class="invalid-feedback">
                                <?php echo form_error('role') ?>
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