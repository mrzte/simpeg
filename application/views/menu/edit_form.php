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
                    <a href="<?php echo site_url('menu') ?>"><i class="fas fa-arrow-left"></i>
                        Kembali</a>
                </div>
                <div class="card-body">
                    <form action="<?php site_url('menu/edit') ?>" method="post" enctype="multipart/form-data">

                        <input type="hidden" name="id" value="<?php echo $menu->id ?>" />

                        <div class="form-group">
                            <label for="name">Menu*</label>
                            <input class="form-control <?php echo form_error('menu') ? 'is-invalid' : '' ?>" type="text" name="menu" placeholder="Nama menu" value="<?php echo $menu->menu ?>" readonly />
                            <div class="invalid-feedback">
                                <?php echo form_error('menu') ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="icon">Ikon* [ <i class="<?= $menu->icon ?>"></i> ]</label>
                            <input class="form-control <?php echo form_error('icon') ? 'is-invalid' : '' ?>" type="text" name="icon" placeholder="Ikon menu" value="<?php echo $menu->icon ?>" />
                            <div class="invalid-feedback">
                                <?php echo form_error('icon') ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="title_id">Title*</label>
                            <select class="form-control <?php echo form_error('title_id') ? 'is-invalid' : '' ?>" name="title_id" id="title_id">
                                <option value="<?php echo $menu->title_id ?>" class="text-muted alert alert-primary"><?php echo $menu->title ?></option>
                                <?php
                                foreach ($judul as $j) {
                                    echo "<option value='" . $j->id_title . "'>" . $j->title . "</option>";
                                }
                                ?>
                            </select>
                            <div class="invalid-feedback">
                                <?php echo form_error('title_id') ?>
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