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
                  <h1 class="h4 text-gray-900 mb-4">Lupa Password?</h1>
                </div>
                <div class="alert alert-info alert-dismissible mb-4">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                  Masukkan alamat email anda dibawah dan kami akan mengirimkan link untuk mereset password anda.
                </div>
                <form class="user">
                  <div class="form-group">
                    <input type="text" class="form-control form-control-user" id="email" aria-describedby="emailHelp" placeholder="Masukkan alamat email...">
                  </div>
                  <p class="small badge badge-light">Coming Soon!</p>
                  <button class="btn btn-primary btn-user btn-block" type="submit" disabled>
                    Reset Password
                  </button>
                </form>
                <hr>
                <div class="text-center">
                  <a class="small" href="<?php echo site_url('auth') ?>">Halaman login.</a>
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