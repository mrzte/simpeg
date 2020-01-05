<?php $this->load->view("admin/_partials/auth_header.php"); ?>
<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-lg-6">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Login.</h1>
                                </div>
                                <?= $this->session->flashdata('message'); ?>
                                <form class="user" action="<?= site_url('auth'); ?>" method="post">
                                    <div class="form-group">
                                        <input type="text" name="email" class="form-control form-control-user <?php echo form_error('email') ? 'is-invalid' : '' ?>" id="email" placeholder="Masukkan alamat email..." value="<?= set_value('email'); ?>">
                                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control form-control-user <?php echo form_error('password') ? 'is-invalid' : '' ?>" id="password" placeholder="Password">
                                        <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">Masuk</button>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="<?php echo site_url('auth/lupa') ?>">Lupa password?</a>
                                </div>
                                <div class="text-center">
                                    <a class="small" href="<?php echo site_url('auth/registrasi') ?>">Buat akun?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<?php $this->load->view("admin/_partials/js.php") ?>

</body>

</html>