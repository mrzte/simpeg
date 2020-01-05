<?php $this->load->view("admin/_partials/auth_header.php"); ?>
<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5 col-lg-6 mx-auto">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Buat akun.</h1>
                        </div>
                        <form class="user" action="<?php echo site_url('auth/registrasi') ?>" method="post">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control form-control-user <?php echo form_error('name') ? 'is-invalid' : '' ?>" id="name" placeholder="Nama lengkap" value="<?= set_value('name'); ?>">
                                <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <input type="text" name="email" class="form-control form-control-user <?php echo form_error('email') ? 'is-invalid' : '' ?>" id="email" placeholder="Alamat email" value="<?= set_value('email'); ?>">
                                <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" name="password" class="form-control form-control-user <?php echo form_error('password') ? 'is-invalid' : '' ?>" id="password" placeholder="Password" value="<?= set_value('password'); ?>">
                                    <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" name="password2" class="form-control form-control-user <?php echo form_error('password2') ? 'is-invalid' : '' ?>" id="password2" placeholder="Konfirmasi password">
                                    <?= form_error('password2', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-user btn-block">Buat akun</button>
                        </form>
                        <hr>
                        <div class="text-center">
                            <a class="small" href="<?php echo site_url('auth/lupa') ?>">Lupa password?</a>
                        </div>
                        <div class="text-center">
                            <a class="small" href="<?php echo site_url('auth') ?>">Sudah punya akun?</a>
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