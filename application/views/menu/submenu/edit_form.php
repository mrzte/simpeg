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
                    <a href="<?php echo site_url('menu/submenu') ?>"><i class="fas fa-arrow-left"></i>
                        Kembali</a>
                </div>
                <div class="card-body">
                    <form action="<?php site_url('menu/submenu_edit') ?>" method="post" enctype="multipart/form-data">

                        <input type="hidden" name="id" value="<?php echo $submenu->id ?>" />

                        <div class="form-group">
                            <label for="title">Judul*</label>
                            <input class="form-control <?php echo form_error('title') ? 'is-invalid' : '' ?>" type="text" name="title" id="title" placeholder="Judul submenu" value="<?php echo $submenu->title ?>" />
                            <div class="invalid-feedback">
                                <?php echo form_error('title') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="menu_id">Menu*</label>
                            <select class="form-control <?php echo form_error('menu_id') ? 'is-invalid' : '' ?>" name="menu_id" id="menu_id">
                                <option value="<?php echo $submenu->menu_id ?>" class="text-muted alert alert-primary"><?php echo $submenu->menu ?></option>
                                <?php
                                foreach ($menu as $m) {
                                    echo "<option value='" . $m->id . "'>" . $m->menu . "</option>";
                                }
                                ?>
                            </select>
                            <div class="invalid-feedback">
                                <?php echo form_error('menu_id') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="url">URL*</label>
                            <input class="form-control <?php echo form_error('url') ? 'is-invalid' : '' ?>" type="text" name="url" id="url" placeholder="Url submenu" value="<?php echo $submenu->url ?>" />
                            <div class="invalid-feedback">
                                <?php echo form_error('url') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="icon">Ikon* [ <i class="<?= $submenu->icon ?>"></i> ]</label>
                            <input class="form-control <?php echo form_error('icon') ? 'is-invalid' : '' ?>" type="text" name="icon" id="icon" placeholder="Ikon submenu" value="<?php echo $submenu->icon ?>" />
                            <div class="invalid-feedback">
                                <?php echo form_error('icon') ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <?php if ($submenu->is_active == 1) { ?>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="is_active" id="active" value="1" checked>
                                    <label class="form-check-label" for="active">
                                        Aktif
                                    </label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="is_active" id="active2" value="0">
                                    <label class="form-check-label" for="active2">
                                        Tidak aktif
                                    </label>
                                </div>
                            <?php } else { ?>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="is_active" id="active" value="1">
                                    <label class="form-check-label" for="active">
                                        Aktif
                                    </label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="is_active" id="active2" value="0" checked>
                                    <label class="form-check-label" for="active2">
                                        Tidak aktif
                                    </label>
                                </div>
                            <?php } ?>
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