<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Pejabat extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("pejabat_model");
        cek_login();
    }
    public function index()
    {
        $data['judul_lengkap'] = $this->config->item('nama_aplikasi_full');
        $data['judul_pendek'] = $this->config->item('nama_aplikasi_pendek');
        $data['instansi'] = $this->config->item('nama_instansi');
        $data['credit'] = $this->config->item('credit_aplikasi');
        $data['alamat'] = $this->config->item('alamat_instansi');
        $data['singkatan'] = $this->config->item('singkatan');
        $data['ristek'] = $this->config->item('ristek');
        $data['title'] = "Profil Pejabat";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["struktural"] = $this->pejabat_model->getStruktural();
        $data["fungsional"] = $this->pejabat_model->getFungsional();

        /*$this->form_validation->set_rules('menu', 'Menu', 'required', [
            'required' => 'Kolom nama menu harus diisi!'
        ]);
        $this->form_validation->set_rules('icon', 'Icon', 'required', [
            'required' => 'Kolom ikon harus diisi!'
        ]);*/

        if ($this->form_validation->run() == false) {
            $this->load->view('organisasi/pejabat/daftar-pejabat', $data);
        }/* else {
            $data = [
                'menu' => $this->input->post('menu'),
                'icon' => $this->input->post('icon')
            ];
            $this->db->insert('user_menu', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Menu telah ditambahkan!</div>');
            redirect('menu');
        }*/
    }
}
