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

            <?= form_error('role', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
            <?= $this->session->flashdata('message'); ?>
            <div class="card shadow">
                <div class="card-header py-3">
                    <a class="m-0 font-weight-bold text-dark"><?= $title; ?></a>
                    <a href="" class="btn btn-primary btn-sm ml-2" data-toggle="modal" data-target="#addRole">Tambah</a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Hak Akses</th>
                                    <th>Opsi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 0;
                                foreach ($role as $r) :
                                    $no++; ?>
                                    <tr>
                                        <td width="1px">
                                            <?= $no ?>.
                                        </td>
                                        <td>
                                            <?= $r->role ?>
                                        </td>
                                        <td class="text-center" width="100px">
                                            <a href="<?= site_url('admin/role/access/' . $r->id) ?>" class="btn btn-warning btn-circle btn-sm" title="Hak Akses"><i class="fas fa-user-tie"></i></a>
                                            <a href="<?= site_url('admin/role/edit/' . $r->id) ?>" class="btn btn-primary btn-circle btn-sm" title="Edit"><i class="fas fa-edit"></i></a>
                                            <a onclick="deleteConfirm('<?php echo site_url('admin/role/delete/' . $r->id) ?>')" href="#!" class="btn btn-danger btn-circle btn-sm" title="Hapus"><i class="fas fa-trash"></i></a>
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