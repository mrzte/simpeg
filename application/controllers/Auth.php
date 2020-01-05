<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->library('form_validation');
  }

  public function index()
  {
    if ($this->session->userdata('email')) {
      redirect('welcome');
    }

    $data['title'] = "Data - Login";
    $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email', [
      'required' => 'Masukkan email anda!',
      'valid_email' => 'Harap masukkan email valid!'
    ]);
    $this->form_validation->set_rules('password', 'Password', 'trim|required', [
      'required' => 'Masukkan password!'
    ]);

    if ($this->form_validation->run() ==  false) {
      $this->load->view('auth/login', $data);
    } else {
      $this->_login();
    }
  }

  private function _login()
  {
    $email = $this->input->post('email');
    $password = $this->input->post('password');

    $user = $this->db->get_where('user', ['email' => $email])->row_array();
    $pecah = explode(" ", $user['name']);

    // jika usernya ada
    if ($user) {
      // jika usernya aktif
      if ($user['is_active'] == 1) {
        // cek password
        if (password_verify($password, $user['password'])) {
          $data = [
            'email' => $user['email'],
            'role_id' => $user['role_id']
          ];
          $this->session->set_userdata($data);
          if ($user['role_id']) {
            $this->session->set_flashdata('message', '
            <div class="alert alert-success alert-dismissible">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
              Halo ' . $pecah[0] . '! <i class="far fa-smile"></i>
            </div>
            ');
            redirect('welcome');
          }
        } else {
          $this->session->set_flashdata('message', '<div class="alert alert-danger">Password salah!</div>');
          redirect('auth');
        }
      } else {
        $this->session->set_flashdata('message', '<div class="alert alert-danger">Maaf. Email anda belum diaktivasi!</div>');
        redirect('auth');
      }
    } else {
      $this->session->set_flashdata('message', '<div class="alert alert-danger">Maaf. Email anda tidak terdaftar!</div>');
      redirect('auth');
    }
  }

  public function registrasi()
  {
    if ($this->session->userdata('email')) {
      redirect('welcome');
    }

    $data['title'] = "Data - Registrasi";
    $this->form_validation->set_rules('name', 'Nama', 'required|trim', [
      'required' => 'Kolom nama harus diisi!'
    ]);
    $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', [
      'required' => 'Kolom email harus diisi!',
      'valid_email' => 'Alamat email harus berisikan email valid!',
      'is_unique' => 'Email ini sudah digunakan!'
    ]);
    $this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[8]', [
      'required' => 'Kolom password harus diisi!',
      'min_length' => 'Password minimal 8 karakter'
    ]);
    $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password]', [
      'required' => 'Konfirmasi password anda!',
      'matches' => 'Password tidak sama!'
    ]);

    if ($this->form_validation->run() == false) {
      $this->load->view('auth/register', $data);
    } else {
      $data = [
        'name' => htmlspecialchars($this->input->post('name', true)),
        'email' => htmlspecialchars($this->input->post('email', true)),
        'image' => 'default.jpg',
        'password' => password_hash($this->input->post('password2'), PASSWORD_DEFAULT),
        'role_id' => 2,
        'is_active' => 1,
        'date_created' => time()
      ];

      $this->db->insert('user', $data);
      $this->session->set_flashdata('message', '<div class="alert alert-success">Selamat! akun anda telah dibuat. Silahkan masuk.</div>');
      redirect('auth');
    }
  }

  public function lupa()
  {
    $data['title'] = "Data - Forgot";
    $this->load->view('auth/lupa', $data);
  }

  public function logout()
  {
    $this->session->unset_userdata('email');
    $this->session->unset_userdata('role_id');

    $this->session->set_flashdata('message', '
    <div class="alert alert-success alert-dismissible">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
      Anda telah keluar!
    </div>
    ');
    redirect('welcome');
  }

  public function blocked()
  {
    $data['title'] = "403 - Forbidden";
    $this->load->view('auth/blocked', $data);
  }
}
