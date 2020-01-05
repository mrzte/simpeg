<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Menu extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("menu_model");
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
        $data['title'] = "Manajemen Menu";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["menu"] = $this->menu_model->getAll();
        $data["judul"] = $this->menu_model->getJudul();

        $this->form_validation->set_rules('menu', 'Menu', 'required', [
            'required' => 'Kolom nama menu harus diisi!'
        ]);
        $this->form_validation->set_rules('icon', 'Icon', 'required', [
            'required' => 'Kolom ikon harus diisi!'
        ]);
        $this->form_validation->set_rules('title_id', 'Title', 'required', [
            'required' => 'Kolom title harus diisi!'
        ]);

        if ($this->form_validation->run() == false) {
            $this->load->view('menu/list', $data);
        } else {
            $data = [
                'menu' => $this->input->post('menu'),
                'icon' => $this->input->post('icon'),
                'title_id' => $this->input->post('title_id')
            ];
            $this->db->insert('user_menu', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Menu telah ditambahkan!</div>');
            redirect('menu');
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
        $data['title'] = "Manajemen Menu";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        if (!isset($id)) redirect('menu');

        $menu = $this->menu_model;
        $validation = $this->form_validation;
        $validation->set_rules($menu->rules());

        if ($validation->run()) {
            $menu->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil disimpan!</div>');
        }

        $data["menu"] = $menu->getById($id);
        $data["judul"] = $this->menu_model->getJudul();
        if (!$data["menu"]) show_404();

        $this->load->view("menu/edit_form", $data);
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->menu_model->delete($id)) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil dihapus!</div>');
            redirect(site_url('menu'));
        }
    }
}
