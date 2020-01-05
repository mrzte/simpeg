<?php defined('BASEPATH') or exit('No direct script access allowed');

class Riwayat_model extends CI_Model
{
    private $_table = "tbl_data_pegawai";

    public $id;

    public function rules()
    {
        return [
            [
                'field' => 'jabatan',
                'label' => 'Jabatan',
                'rules' => 'required'
            ]
        ];
    }

    public function getById($id)
    {
        $this->db->select('*');
        $this->db->from('tbl_data_pegawai');
        $this->db->where('id_pegawai', $id);
        $query = $this->db->get();
        return $query->row();
    }
    public function getPendidikan($id)
    {
        $this->db->select('*');
        $this->db->from('tbl_data_pendidikan');
        $this->db->where('id_pegawai', $id);
        $query = $this->db->get();
        return $query->result_array();
    }
    public function getRiwayatPekerjaan($id)
    {
        $this->db->select('*');
        $this->db->join('tbl_master_golongan', 'tbl_data_riwayat_pangkat.id_golongan = tbl_master_golongan.id_golongan');
        $this->db->from('tbl_data_riwayat_pangkat');
        $this->db->where('id_pegawai', $id);
        $query = $this->db->get();
        return $query->result_array();
    }
    public function getRiwayatJabatan($id)
    {
        $this->db->select('*');
        $this->db->join('tbl_master_jabatan', 'tbl_data_riwayat_jabatan.id_jabatan = tbl_master_jabatan.id_jabatan');
        $this->db->from('tbl_data_riwayat_jabatan');
        $this->db->where('id_pegawai', $id);
        $query = $this->db->get();
        return $query->result_array();
    }
    public function getPenghargaan($id)
    {
        $this->db->select('*');
        $this->db->join('tbl_master_penghargaan', 'tbl_data_penghargaan.id_master_penghargaan = tbl_master_penghargaan.id_penghargaan');
        $this->db->from('tbl_data_penghargaan');
        $this->db->where('id_pegawai', $id);
        $query = $this->db->get();
        return $query->result_array();
    }
    public function getSeminar($id)
    {
        $this->db->select('*');
        $this->db->from('tbl_data_seminar');
        $this->db->where('id_pegawai', $id);
        $query = $this->db->get();
        return $query->result_array();
    }
    public function getKeluarga($id)
    {
        $this->db->select('*');
        $this->db->from('tbl_data_keluarga');
        $this->db->where('hubungan', 'Istri/Suami');
        $this->db->where('id_pegawai', $id);
        $query = $this->db->get();
        return $query->result_array();
    }
    public function getKeluargaAnak($id)
    {
        $this->db->select('*');
        $this->db->from('tbl_data_keluarga');
        $this->db->where('hubungan', 'Anak');
        $this->db->where('id_pegawai', $id);
        $query = $this->db->get();
        return $query->result_array();
    }

    /*public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_pejabat" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->jabatan = $post["jabatan"];
        $this->deskripsi = $post["deskripsi"];
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_jabatan = $post["id"];
        $this->jabatan = $post["jabatan"];
        $this->deskripsi = $post["deskripsi"];
        $this->db->update($this->_table, $this, array('id_jabatan' => $post['id']));
    }
    */
    /* 
    public function delete($id)
    {
        return $this->db->delete($this->_table, array('id_jabatan' => $id));
    } 
    */
}
