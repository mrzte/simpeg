<?php defined('BASEPATH') or exit('No direct script access allowed');

class Pejabat_model extends CI_Model
{
    private $_table = "tbl_data_pejabat";

    public $id;
    public $id_jabatan;
    public $id_pegawai;
    public $tmt;
    public $event;

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

    public function getStruktural()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_pejabat a');
        $this->db->join('tbl_data_pegawai b', 'b.id_pegawai=a.id_pegawai', 'left');
        $this->db->join('tbl_master_jabatan c', 'c.id_jabatan=a.id_jabatan', 'left');
        $this->db->where('status', 1);
        $query = $this->db->get();
        return $query->result();
    }
    public function getFungsional()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_pejabat a');
        $this->db->join('tbl_data_pegawai b', 'b.id_pegawai=a.id_pegawai', 'left');
        $this->db->join('tbl_master_jabatan c', 'c.id_jabatan=a.id_jabatan', 'left');
        $this->db->where('status', 2);
        $query = $this->db->get();
        return $query->result();
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
