<?php defined('BASEPATH') or exit('No direct script access allowed');

class Statusj_model extends CI_Model
{
    private $_table = "tbl_master_status_jabatan";

    public $id_status_jabatan;
    public $status_jabatan;

    public function rules()
    {
        return [
            [
                'field' => 'status_jabatan',
                'label' => 'Status Jabatan',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom status jabatan harus diisi!',
                ),
            ]
        ];
    }
    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_status_jabatan" => $id])->row();
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_status_jabatan = $post["id_status_jabatan"];
        $this->status_jabatan = $post["status_jabatan"];
        $this->db->update($this->_table, $this, array('id_status_jabatan' => $post['id_status_jabatan']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array('id_status_jabatan' => $id));
    }
}
