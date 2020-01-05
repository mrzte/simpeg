<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Pegawai extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("pegawai_model");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data["pegawai"] = $this->pegawai_model->getAll();
        $this->load->view("admin/pegawai/list", $data);
    }

    public function staff()
    {
        $data["pegawai"] = $this->pegawai_model->getStaff();
        $this->load->view("admin/pegawai/staff", $data);
    }

    public function add()
    {
        $pegawai = $this->pegawai_model;
        $validation = $this->form_validation;
        $validation->set_rules($pegawai->rules());

        if ($validation->run()) {
            $pegawai->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan!');
        }

        $data["pegawai"] = $pegawai->getJabatan();
        $this->load->view("admin/pegawai/new_form", $data);
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('admin/pegawai');

        $pegawai = $this->pegawai_model;
        $validation = $this->form_validation;
        $validation->set_rules($pegawai->rules());

        if ($validation->run()) {
            $pegawai->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan!');
        }

        $data["pegawai1"] = $pegawai->getJabatan();
        $data["pegawai"] = $pegawai->getById($id);
        if (!$data["pegawai"]) show_404();

        $this->load->view("admin/pegawai/edit_form", $data);
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->pegawai_model->delete($id)) {
            redirect(site_url('admin/pegawai'));
        }
    }

    public function delete1($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->pegawai_model->delete($id)) {
            redirect(site_url('admin/pegawai/staff'));
        }
    }
}
