<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Statusj extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("statusj_model");
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
        $data['title'] = "Status Jabatan";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["statusj"] = $this->statusj_model->getAll();

        $this->form_validation->set_rules('status_jabatan', 'Status Jabatan', 'required', [
            'required' => 'Kolom status jabatan harus diisi!'
        ]);

        if ($this->form_validation->run() ==  false) {
            $this->load->view('master/status-jabatan/list', $data);
        } else {
            $data = [
                'status_jabatan' => $this->input->post('status_jabatan')
            ];
            $this->db->insert('tbl_master_status_jabatan', $data);

            $alert = $this->db->query("SELECT * FROM `tbl_master_status_jabatan` WHERE  status_jabatan = '" . $data['status_jabatan'] . "'");
            $alert2 = $alert->row();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Status jabatan <strong>' . $alert2->status_jabatan . '</strong> telah ditambahkan!</div>');
            redirect('master/statusj');
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
        $data['title'] = "Status Jabatan";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('master/statusj');

        $statusj = $this->statusj_model;
        $validation = $this->form_validation;
        $validation->set_rules($statusj->rules());

        if ($validation->run()) {
            $statusj->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil disimpan!</div>');
        }

        $data["statusj"] = $statusj->getById($id);
        if (!$data["statusj"]) show_404();

        $this->load->view("master/status-jabatan/edit_form", $data);
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->statusj_model->delete($id)) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil dihapus!</div>');
            redirect(site_url('master/statusj'));
        }
    }
}
