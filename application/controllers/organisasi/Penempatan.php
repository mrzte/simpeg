<?php

use FontLib\Table\Type\post;

defined('BASEPATH') or exit('No direct script access allowed');
class Penempatan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("penempatan_model");
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
        $data['title'] = "Penempatan Pejabat";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["pegawai"] = $this->penempatan_model->getPegawaiDaftar();
        $data["jabatan"] = $this->penempatan_model->getJabatan();

        $this->form_validation->set_rules('id_pegawai', 'Pegawai', 'required', [
            'required' => 'Kolom pegawai harus diisi!'
        ]);
        $this->form_validation->set_rules('id_jabatan', 'Jabatan', 'required', [
            'required' => 'Kolom jabatan harus diisi!'
        ]);
        $this->form_validation->set_rules('tmt', 'TMT', 'required', [
            'required' => 'Kolom TMT harus diisi!'
        ]);

        if ($this->form_validation->run() == false) {
            $this->load->view('organisasi/penempatan', $data);
        } else {
            $data = [
                'id_pegawai' => $this->input->post('id_pegawai'),
                'id_jabatan' => $this->input->post('id_jabatan'),
                'tmt' => $this->input->post('tmt'),
                'event' => date('Y')
            ];
            $data1["jabatan_id"] = $this->penempatan_model->getJabatanId();
            //if (!$data["riwayat"]) show_404();
            if (!$data1["jabatan_id"]) {
                $this->db->update('tbl_data_pejabat', array(
                    'id_pegawai' => NULL,
                    'tmt' => NULL,
                    'event' => NULL
                ), array('id_pegawai' => $data['id_pegawai']));
                $this->db->insert('tbl_data_pejabat', $data);
            } else {
                $this->db->update('tbl_data_pejabat', array(
                    'id_pegawai' => NULL,
                    'tmt' => NULL,
                    'event' => NULL
                ), array('id_pegawai' => $data['id_pegawai']));
                $this->db->update('tbl_data_pejabat', $data, array('id_jabatan' => $data['id_jabatan']));
            }

            $alert = $this->db->query("SELECT * FROM `tbl_data_pejabat` a LEFT JOIN `tbl_data_pegawai` b 
                                       ON (`b`.`id_pegawai` = `a`.`id_pegawai`) LEFT JOIN `tbl_master_jabatan` c 
                                       ON (`c`.`id_jabatan` = `a`.`id_jabatan`) WHERE  `a`.id_jabatan = '" . $data['id_jabatan'] . "' 
                                       AND `a`.id_pegawai = '" . $data['id_pegawai'] . "'");
            $alert2 = $alert->row();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Penempatan Pegawai Berhasil. <strong>' . $alert2->nama_pegawai . '</strong> (' . $alert2->nip . ') menjadi <strong>' . $alert2->jabatan . '</strong></div>');
            redirect('organisasi/penempatan');
        }
    }
    /*public function pegawai_daftar()
    {
        $data['judul_lengkap'] = $this->config->item('nama_aplikasi_full');
        $data['judul_pendek'] = $this->config->item('nama_aplikasi_pendek');
        $data['instansi'] = $this->config->item('nama_instansi');
        $data['credit'] = $this->config->item('credit_aplikasi');
        $data['alamat'] = $this->config->item('alamat_instansi');
        $data['singkatan'] = $this->config->item('singkatan');
        $data['ristek'] = $this->config->item('ristek');
        $data['title'] = "Penempatan Pejabat";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["pegawai"] = $this->penempatan_model->getPegawaiDaftar();
        $this->load->view('organisasi/pegawai-daftar', $data);
    }
    public function jabatan_daftar()
    {
        $data['judul_lengkap'] = $this->config->item('nama_aplikasi_full');
        $data['judul_pendek'] = $this->config->item('nama_aplikasi_pendek');
        $data['instansi'] = $this->config->item('nama_instansi');
        $data['credit'] = $this->config->item('credit_aplikasi');
        $data['alamat'] = $this->config->item('alamat_instansi');
        $data['singkatan'] = $this->config->item('singkatan');
        $data['ristek'] = $this->config->item('ristek');
        $data['title'] = "Penempatan Pejabat";
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data["jabatan"] = $this->penempatan_model->getJabatan();
        $this->load->view('organisasi/jabatan-daftar', $data);
    }
    */
}
