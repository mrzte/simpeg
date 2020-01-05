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
                    <a href="<?php echo site_url('admin/role') ?>" class="mr-1"><i class="fas fa-arrow-left"></i>
                        Kembali</a> /
                    <a href="" class="ml-1 badge badge-pill badge-success"><?= $role->role ?></a>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Menu</th>
                                    <th>Akses</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 0;
                                foreach ($menu as $m) :
                                    $no++; ?>
                                    <tr>
                                        <td width="1px">
                                            <?= $no ?>.
                                        </td>
                                        <td>
                                            <?= $m->menu ?>
                                        </td>
                                        <td class="text-center" width="100px">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" <?= check_access($role->id, $m->id); ?> data-role="<?= $role->id ?>" data-menu="<?= $m->id ?>">
                                            </div>
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