<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Submenu extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("menu_model");
        $this->load->model("submenu_model");
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
        $data['title'] = "Manajemen Submenu";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["subMenu"] = $this->submenu_model->getAll();
        $data["menu"] = $this->menu_model->getAll();

        $this->form_validation->set_rules('title', 'Title', 'required', [
            'required' => 'Kolom judul submenu harus diisi!'
        ]);
        $this->form_validation->set_rules('menu_id', 'Menu', 'required', [
            'required' => 'Pilih salah satu menu!'
        ]);
        $this->form_validation->set_rules('url', 'URL', 'required', [
            'required' => 'Kolom url harus diisi!'
        ]);
        $this->form_validation->set_rules('icon', 'Icon', 'required', [
            'required' => 'Kolom ikon harus diisi!'
        ]);

        if ($this->form_validation->run() ==  false) {
            $this->load->view('menu/submenu/list', $data);
        } else {
            $data = [
                'title' => $this->input->post('title'),
                'menu_id' => $this->input->post('menu_id'),
                'url' => $this->input->post('url'),
                'icon' => $this->input->post('icon'),
                'is_active' => $this->input->post('is_active')
            ];
            $this->db->insert('user_sub_menu', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Sub Menu telah ditambahkan!</div>');
            redirect('menu/submenu');
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
        $data['title'] = "Manajemen Submenu";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('menu/submenu');

        $menu = $this->menu_model;
        $submenu = $this->submenu_model;
        $validation = $this->form_validation;
        $validation->set_rules($submenu->rules());

        if ($validation->run()) {
            $submenu->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil disimpan!</div>');
        }

        $data["menu"] = $menu->getAll();
        $data["submenu"] = $submenu->getById($id);
        if (!$data["submenu"]) show_404();

        $this->load->view("menu/submenu/edit_form", $data);
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->submenu_model->delete($id)) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil dihapus!</div>');
            redirect(site_url('menu/submenu'));
        }
    }
}
