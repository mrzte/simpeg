<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Pegawai extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("pegawai_model");
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
        $data['title'] = "Data Pegawai";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["pegawai"] = $this->pegawai_model->getAll();

        /*$this->form_validation->set_rules('menu', 'Menu', 'required', [
            'required' => 'Kolom nama menu harus diisi!'
        ]);
        $this->form_validation->set_rules('icon', 'Icon', 'required', [
            'required' => 'Kolom ikon harus diisi!'
        ]);*/

        if ($this->form_validation->run() == false) {
            $this->load->view('pegawai/daftar-pegawai', $data);
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

    public function add()
    {
        $data['judul_lengkap'] = $this->config->item('nama_aplikasi_full');
        $data['judul_pendek'] = $this->config->item('nama_aplikasi_pendek');
        $data['instansi'] = $this->config->item('nama_instansi');
        $data['credit'] = $this->config->item('credit_aplikasi');
        $data['alamat'] = $this->config->item('alamat_instansi');
        $data['singkatan'] = $this->config->item('singkatan');
        $data['ristek'] = $this->config->item('ristek');
        $data['title'] = "Data Pegawai";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $pegawai = $this->pegawai_model;
        $validation = $this->form_validation;
        $validation->set_rules($pegawai->rules());

        if ($validation->run()) {
            $pegawai->save();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil disimpan!</div>');
        }

        $data["golongan"] = $pegawai->getGolongan();
        $data["jabatan"] = $pegawai->getJabatan();
        $data["u_kerja"] = $pegawai->getUnitKerja();
        $data["s_kerja"] = $pegawai->getSatuanKerja();
        $data["eselon"] = $pegawai->getEselon();
        $data["s_pegawai"] = $pegawai->getStatusPegawai();
        $data["sp_pegawai"] = $pegawai->getStatusJabatan();
        $data["lokasi_kerja"] = $pegawai->getLokasiKerja();
        $this->load->view("pegawai/new_form", $data);
    }
    public function biodata($id = null)
    {
        if (!isset($id)) redirect('pegawai');

        $data['judul_lengkap'] = $this->config->item('nama_aplikasi_full');
        $data['judul_pendek'] = $this->config->item('nama_aplikasi_pendek');
        $data['instansi'] = $this->config->item('nama_instansi');
        $data['credit'] = $this->config->item('credit_aplikasi');
        $data['alamat'] = $this->config->item('alamat_instansi');
        $data['singkatan'] = $this->config->item('singkatan');
        $data['ristek'] = $this->config->item('ristek');
        $data['title'] = "Data Pegawai";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $pegawai = $this->pegawai_model;
        $validation = $this->form_validation;
        $validation->set_rules($pegawai->rules());

        if ($validation->run()) {
            $pegawai->save();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil disimpan!</div>');
        }

        $data["pegawai"] = $pegawai->getById($id);
        if (!$data["pegawai"]) show_404();

        $this->load->view("pegawai/biodata", $data);
    }
    public function edit($id = null)
    {
        if (!isset($id)) redirect('pegawai');

        $data['judul_lengkap'] = $this->config->item('nama_aplikasi_full');
        $data['judul_pendek'] = $this->config->item('nama_aplikasi_pendek');
        $data['instansi'] = $this->config->item('nama_instansi');
        $data['credit'] = $this->config->item('credit_aplikasi');
        $data['alamat'] = $this->config->item('alamat_instansi');
        $data['singkatan'] = $this->config->item('singkatan');
        $data['ristek'] = $this->config->item('ristek');
        $data['title'] = "Data Pegawai";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $pegawai = $this->pegawai_model;
        $validation = $this->form_validation;
        $validation->set_rules($pegawai->rules());

        if ($validation->run()) {
            $pegawai->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil disimpan!</div>');
        }

        $data["pegawai"] = $pegawai->getById($id);
        $data["s_pegawai"] = $pegawai->getStatusPegawai();
        $data["sp_pegawai"] = $pegawai->getStatusJabatan();
        $data["golongan"] = $pegawai->getGolongan();
        $data["jabatan"] = $pegawai->getJabatan();
        $data["u_kerja"] = $pegawai->getUnitKerja();
        $data["s_kerja"] = $pegawai->getSatuanKerja();
        $data["lokasi_kerja"] = $pegawai->getLokasiKerja();
        $data["eselon"] = $pegawai->getEselon();

        if (!$data["pegawai"]) show_404();

        $this->load->view("pegawai/edit_form", $data);
    }
}
