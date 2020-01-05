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

            <?php if (validation_errors()) : ?>
                <div class="alert alert-danger" role="alert">
                    <?= validation_errors(); ?>
                </div>
            <?php endif; ?>
            <?= $this->session->flashdata('message'); ?>
            <div class="card shadow">
                <div class="card-header py-3">
                    <a class="m-0 font-weight-bold text-dark"><?= $title; ?></a>
                    <a href="" class="btn btn-primary btn-sm ml-2" data-toggle="modal" data-target="#addEselon">Tambah</a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Nama Eselon</th>
                                    <th>Level</th>
                                    <th>Opsi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                                                $no = 0;
                                                                foreach ($eselon as $row) :
                                                                    $no++; ?>
                                    <tr>
                                        <td>
                                            <?= $no ?>.
                                        </td>
                                        <td>
                                            <?= $row->nama_eselon ?>
                                        </td>
                                        <td>
                                            <?= $row->level ?>
                                        </td>
                                        <td class="text-center">
                                            <a href="<?= site_url('master/eselon/edit/' . $row->id_eselon) ?>" class="btn btn-primary btn-circle btn-sm" title="Edit"><i class="fas fa-edit"></i></a>
                                            <a onclick="deleteConfirm('<?php echo site_url('master/eselon/delete/' . $row->id_eselon) ?>')" href="#!" class="btn btn-danger btn-circle btn-sm" title="Hapus"><i class="fas fa-trash"></i></a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
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

    <!-- Tambah Eselon -->
    <div class="modal fade" id="addEselon" tabindex="-1" role="dialog" aria-labelledby="addEselonLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addEselonLabel">Tambah Eselon</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <form action="<?= site_url('master/eselon'); ?>" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="nama_eselon" name="nama_eselon" placeholder="Nama Eselon*" value="<?= set_value('nama_eselon'); ?>">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="level" name="level" placeholder="Level Eselon*" value="<?= set_value('level'); ?>">
                        </div>
                    </div>
                    <div class="card-footer small text-muted">
                        * harus diisi
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-primary">Tambah</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <?php $this->load->view("admin/_partials/modal.php"); ?>
    <?php $this->load->view("admin/_partials/scrolltop.php"); ?>
    <?php $this->load->view("admin/_partials/js.php") ?>

    <script>
        function deleteConfirm(url) {
            $('#btn-delete').attr('href', url);
            $('#deleteModal').modal();
        }
    </script>
</body>

</html>