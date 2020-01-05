<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Struktur extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("jabatan_model");
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
        $data['title'] = "Struktur Organisasi";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["struktur"] = $this->jabatan_model->getStruktur();
        $this->load->view('organisasi/struktur/struktur', $data);
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
        $data['title'] = "Struktur Organisasi";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('organisasi/struktur');

        $data["id"] = $id;
        $data["details"] = $this->jabatan_model->getStrukturDetails();

        if (!$data["details"]) show_404();
        $this->load->view('organisasi//struktur/struktur-details', $data);
    }
}
