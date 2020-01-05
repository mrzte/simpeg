<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Eselon extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("eselon_model");
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
        $data['title'] = "Eselon";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["eselon"] = $this->eselon_model->getAll();

        $this->form_validation->set_rules('nama_eselon', 'Nama Eselon', 'required', [
            'required' => 'Kolom nama eselon harus diisi!'
        ]);
        $this->form_validation->set_rules('level', 'Level', 'required', [
            'required' => 'Kolom level eselon harus diisi!'
        ]);

        if ($this->form_validation->run() ==  false) {
            $this->load->view('master/eselon/list', $data);
        } else {
            $data = [
                'nama_eselon' => $this->input->post('nama_eselon'),
                'level' => $this->input->post('level')
            ];
            $this->db->insert('tbl_master_eselon', $data);

            $alert = $this->db->query("SELECT * FROM `tbl_master_eselon` WHERE  nama_eselon = '" . $data['nama_eselon'] . "'");
            $alert2 = $alert->row();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Eselon <strong>' . $alert2->nama_eselon . '</strong> telah ditambahkan!</div>');
            redirect('master/eselon');
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
        $data['title'] = "Eselon";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('master/eselon');

        $eselon = $this->eselon_model;
        $validation = $this->form_validation;
        $validation->set_rules($eselon->rules());

        if ($validation->run()) {
            $eselon->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil disimpan!</div>');
        }

        $data["eselon"] = $eselon->getById($id);
        if (!$data["eselon"]) show_404();

        $this->load->view("master/eselon/edit_form", $data);
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->eselon_model->delete($id)) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil dihapus!</div>');
            redirect(site_url('master/eselon'));
        }
    }
}
