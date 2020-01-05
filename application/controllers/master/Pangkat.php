<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Pangkat extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("pangkat_model");
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
        $data['title'] = "Pangkat/Golongan";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["pangkat"] = $this->pangkat_model->getAll();

        $this->form_validation->set_rules('golongan', 'Golongan/Pangkat', 'required', [
            'required' => 'Kolom golongan/pangkat harus diisi!'
        ]);
        $this->form_validation->set_rules('uraian', 'Uraian', 'required', [
            'required' => 'Kolom uraian harus diisi!'
        ]);
        $this->form_validation->set_rules('level', 'Level Golongan', 'required', [
            'required' => 'Kolom level golongan harus diisi!'
        ]);

        if ($this->form_validation->run() ==  false) {
            $this->load->view('master/pangkat/list', $data);
        } else {
            $data = [
                'golongan' => $this->input->post('golongan'),
                'uraian' => $this->input->post('uraian'),
                'level' => $this->input->post('level')
            ];
            $this->db->insert('tbl_master_golongan', $data);

            $alert = $this->db->query("SELECT * FROM `tbl_master_golongan` WHERE  golongan = '" . $data['golongan'] . "'");
            $alert2 = $alert->row();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Pangkat/Golongan <strong>' . $alert2->golongan . '</strong> telah ditambahkan!</div>');
            redirect('master/pangkat');
        }
    }

    public function edit($id = null)
    {
        $data['judul_lengkap'] = $this->config->item('nama_aplikasi_full');
        $data['judul_pendek'] = $this->config->item('nama_aplikasi_pendek');
        $data['instansi'] = $this->config->item('nama_instansi');
        $data['credit'] = $this->config->item('credit_aplikasi');
        $data['alamat'] = $this->config->item('alamat_instansi');
        $data['singkatan'] = $this->config->item('singkatan');
        $data['ristek'] = $this->config->item('ristek');
        $data['title'] = "Pangkat/Golongan";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('master/pangkat');

        $pangkat = $this->pangkat_model;
        $validation = $this->form_validation;
        $validation->set_rules($pangkat->rules());

        if ($validation->run()) {
            $pangkat->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil disimpan!</div>');
        }

        $data["pangkat"] = $pangkat->getById($id);
        if (!$data["pangkat"]) show_404();

        $this->load->view("master/pangkat/edit_form", $data);
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->pangkat_model->delete($id)) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil dihapus!</div>');
            redirect(site_url('master/pangkat'));
        }
    }
}
