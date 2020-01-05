<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Riwayat extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("riwayat_model");
        cek_login();
    }
    public function index($id = null)
    {
        if (!isset($id)) redirect('pegawai');
    }
    public function details($id = null)
    {
        $data['judul_lengkap'] = $this->config->item('nama_aplikasi_full');
        $data['judul_pendek'] = $this->config->item('nama_aplikasi_pendek');
        $data['instansi'] = $this->config->item('nama_instansi');
        $data['credit'] = $this->config->item('credit_aplikasi');
        $data['alamat'] = $this->config->item('alamat_instansi');
        $data['singkatan'] = $this->config->item('singkatan');
        $data['ristek'] = $this->config->item('ristek');
        $data['title'] = "Daftar Riwayat Hidup";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('pegawai');

        $riwayat = $this->riwayat_model;
        $validation = $this->form_validation;
        $validation->set_rules($riwayat->rules());

        if ($validation->run()) {
            $riwayat->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan!');
        }

        $data["riwayat"] = $riwayat->getById($id);
        $data["pendidikan"] = $riwayat->getPendidikan($id);
        $data["r_pekerjaan"] = $riwayat->getRiwayatPekerjaan($id);
        $data["r_jabatan"] = $riwayat->getRiwayatJabatan($id);
        $data["penghargaan"] = $riwayat->getPenghargaan($id);
        $data["seminar"] = $riwayat->getSeminar($id);
        $data["keluarga"] = $riwayat->getKeluarga($id);
        $data["anak"] = $riwayat->getKeluargaAnak($id);

        if (!$data["riwayat"]) show_404();

        if ($this->form_validation->run() == false) {
            $this->load->view('pegawai/riwayat/details', $data);
        }
    }
    public function pdf($id = null)
    {
        $data['title'] = "Daftar Riwayat Hidup";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('pegawai');

        $riwayat = $this->riwayat_model;

        $data["riwayat"] = $riwayat->getById($id);
        $data["pendidikan"] = $riwayat->getPendidikan($id);
        $data["r_pekerjaan"] = $riwayat->getRiwayatPekerjaan($id);
        $data["r_jabatan"] = $riwayat->getRiwayatJabatan($id);
        $data["penghargaan"] = $riwayat->getPenghargaan($id);
        $data["seminar"] = $riwayat->getSeminar($id);
        $data["keluarga"] = $riwayat->getKeluarga($id);
        $data["anak"] = $riwayat->getKeluargaAnak($id);

        if (!$data["riwayat"]) show_404();

        $this->load->library('pdf');
        $this->pdf->setPaper('A4', 'landscape');
        $this->pdf->filename = "daftar-riwayat-hidup.pdf";
        $this->pdf->load_view('pegawai/riwayat/drh-pdf', $data);
    }
}
