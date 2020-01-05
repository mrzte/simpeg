<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $title; ?></title>
    <?php $this->load->view("admin/_partials/head.php"); ?>
    <script language="javascript">
        function submit_form() {
            document.form1.submit();
        }

        function submit_form2() {
            document.form2.submit();
        }

        function eraseText() {
            document.getElementById("current_password").value = "";
            document.getElementById("new_password1").value = "";
            document.getElementById("new_password2").value = "";
        }
    </script>
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
            </div>

            <div class="row">
                <div class="col-lg-8">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-edit-tab" data-toggle="pill" href="#pills-edit" role="tab" aria-controls="pills-edit" aria-selected="true">Edit profile</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" id="pills-ubah-tab" data-toggle="pill" href="#pills-ubah" role="tab" aria-controls="pills-ubah" aria-selected="false">Ubah password</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade" id="pills-edit" role="tabpanel" aria-labelledby="pills-edit-tab">

                                    <form action="<?= site_url('profile/edit') ?>" method="post" enctype="multipart/form-data" name="form1">
                                        <div class="form-group row">
                                            <label for="email" class="col-sm-3 col-form-label">Email</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" id="email" name="email" value="<?= $user['email']; ?>" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="name" class="col-sm-3 col-form-label">Nama lengkap</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control <?php echo form_error('name') ? 'is-invalid' : '' ?>" id="name" name="name" value="<?= $user['name']; ?>">
                                                <?= form_error('name', '<small class="text-danger">', '</small>'); ?>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-3">Foto</div>
                                            <div class="col-sm-9">
                                                <div class="row">
                                                    <div class="col-sm-3">
                                                        <img src="<?= base_url('upload/user/') . $user['image']; ?>" class="img-thumbnail">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <div class="custom-file">
                                                            <input type="file" class="custom-file-input" id="image" name="image">
                                                            <label class="custom-file-label" for="image">Pilih foto</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group row">
                                            <div class="col-sm">
                                                <button type="reset" class="btn btn-secondary">Batal</button>
                                                <input type="button" class="btn btn-success" onClick="submit_form()" value="Simpan">
                                            </div>
                                        </div>
                                    </form>

                                </div>
                                <div class="tab-pane fade show active" id="pills-ubah" role="tabpanel" aria-labelledby="pills-ubah-tab">
                                    <?= $this->session->flashdata('message'); ?>
                                    <form action="<?= site_url('profile/changepassword'); ?>" method="post" name="form2">
                                        <div class="form-group">
                                            <label for="current_password">Current Password</label>
                                            <input type="password" class="form-control <?php echo form_error('current_password') ? 'is-invalid' : '' ?>" id="current_password" name="current_password" placeholder="Masukkan password lama anda">
                                            <?= form_error('current_password', '<small class="text-danger">', '</small>'); ?>
                                        </div>
                                        <div class="form-group">
                                            <label for="new_password1">New Password</label>
                                            <input type="password" class="form-control <?php echo form_error('new_password1') ? 'is-invalid' : '' ?>" id="new_password1" name="new_password1" placeholder="Masukkan password baru anda">
                                            <?= form_error('new_password1', '<small class="text-danger">', '</small>'); ?>
                                        </div>
                                        <div class="form-group">
                                            <label for="new_password2">Repeat Password</label>
                                            <input type="password" class="form-control <?php echo form_error('new_password2') ? 'is-invalid' : '' ?>" id="new_password2" name="new_password2" placeholder="Konfirmasi password baru anda">
                                            <?= form_error('new_password2', '<small class="text-danger">', '</small>'); ?>
                                        </div>
                                        <hr>
                                        <div class="form-group row">
                                            <div class="col-sm">
                                                <input type="button" class="btn btn-secondary" onClick="javascript:eraseText();" value="Batal">
                                                <input type="button" class="btn btn-success" onClick="submit_form2()" value="Simpan">
                                            </div>
                                        </div>
                                    </form>

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

</body>

</html>