<?php defined('BASEPATH') or exit('No direct script access allowed');

class Penempatan_model extends CI_Model
{
    private $_table = "tbl_master_jabatan";
    private $_table2 = "tbl_data_pegawai";

    public $id_jabatan;
    public $id_parent;
    public $status;
    public $jabatan;
    public $deskripsi;
    public $kelas;
    public $bezetthing;
    public $kebutuhan;
    public $singkatan;

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

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getJabatan()
    {
        $query = $this->db->query("SELECT tbl_master_jabatan.*, IF(tbl_master_jabatan.status = 1, 'Struktural','Fungsional') AS status_jabatan, b.jabatan AS jabatan_parent FROM tbl_master_jabatan LEFT JOIN tbl_master_jabatan b ON tbl_master_jabatan.id_parent = b.id_jabatan");
        return $query->result();
    }

    public function getJabatanId()
    {
        $post = $this->input->post();
        $this->db->select('*');
        $this->db->from('tbl_data_pejabat');
        $this->db->where('id_jabatan', $post["id_jabatan"]);
        $query = $this->db->get();
        return $query->result();
    }

    public function getPegawaiDaftar()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_pegawai');
        $this->db->where('status_pegawai', 5);
        $query = $this->db->get();
        return $query->result();
    }

    public function getStrukturDetails()
    {
        $this->db->select('tbl_master_jabatan.id_jabatan AS id, tbl_data_pejabat.id_pegawai AS idp, tbl_master_jabatan.singkatan AS jabatan, tbl_master_jabatan.id_parent, tbl_data_pegawai.nama_pegawai, tbl_data_pegawai.foto');
        $this->db->from('tbl_master_jabatan');
        $this->db->join('tbl_data_pejabat', 'tbl_data_pejabat.id_jabatan=tbl_master_jabatan.id_jabatan', 'left');
        $this->db->join('tbl_data_pegawai', 'tbl_data_pegawai.id_pegawai=tbl_data_pejabat.id_pegawai', 'left');
        $this->db->where('status', 1);
        $query = $this->db->get();
        return $query->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_jabatan" => $id])->row();
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

    /* 
    public function delete($id)
    {
        return $this->db->delete($this->_table, array('id_jabatan' => $id));
    } 
    */
}
