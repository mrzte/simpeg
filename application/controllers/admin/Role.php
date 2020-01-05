<?php

defined('BASEPATH') or exit('No direct script access allowed');
class Role extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('role_model');
        $this->load->model('menu_model');
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
        $data['title'] = "Hak Akses";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["role"] = $this->role_model->getAll();

        $this->form_validation->set_rules('role', 'Role', 'required', [
            'required' => 'Kolom nama hak akses harus diisi!'
        ]);

        if ($this->form_validation->run() == false) {
            $this->load->view('admin/role', $data);
        } else {
            $this->db->insert('user_role', ['role' => $this->input->post('role')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Hak akses telah ditambahkan!</div>');
            redirect('admin/role');
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
        $data['title'] = "Hak Akses";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('admin/role');

        $role = $this->role_model;
        $validation = $this->form_validation;
        $validation->set_rules($role->rules());

        if ($validation->run()) {
            $role->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil disimpan!</div>');
        }

        $data["role"] = $role->getById($id);
        if (!$data["role"]) show_404();

        $this->load->view("admin/edit_role", $data);
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->role_model->delete($id)) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil dihapus!</div>');
            redirect(site_url('admin/role'));
        }
    }

    public function access($id = null)
    {
        $data['judul_lengkap'] = $this->config->item('nama_aplikasi_full');
        $data['judul_pendek'] = $this->config->item('nama_aplikasi_pendek');
        $data['instansi'] = $this->config->item('nama_instansi');
        $data['credit'] = $this->config->item('credit_aplikasi');
        $data['alamat'] = $this->config->item('alamat_instansi');
        $data['singkatan'] = $this->config->item('singkatan');
        $data['ristek'] = $this->config->item('ristek');
        $data['title'] = 'Hak Akses';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('admin/role');

        $menu = $this->menu_model;
        $role = $this->role_model;
        $data["role"] = $role->getById($id);
        $this->db->where('id !=', 1);

        $data["menu"] = $menu->getAll();

        $this->load->view('admin/role_access', $data);
    }

    public function changeAccess()
    {
        $menu_id = $this->input->post('menuId');
        $role_id = $this->input->post('roleId');

        $data = [
            'role_id' => $role_id,
            'menu_id' => $menu_id
        ];

        $result = $this->db->get_where('user_access_menu', $data);

        if ($result->num_rows() < 1) {
            $this->db->insert('user_access_menu', $data);
        } else {
            $this->db->delete('user_access_menu', $data);
        }

        $this->session->set_flashdata('message', '<div class="alert alert-success">Akses telah diubah!</div>');
    }
}
