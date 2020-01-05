<?php defined('BASEPATH') or exit('No direct script access allowed');

class Pangkat_model extends CI_Model
{
    private $_table = "tbl_master_golongan";

    public $id_golongan;
    public $golongan;
    public $uraian;
    public $level;

    public function rules()
    {
        return [
            [
                'field' => 'golongan',
                'label' => 'Golongan/Pangkat',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom golongan/pangkat harus diisi!',
                ),
            ],
            [
                'field' => 'uraian',
                'label' => 'Uraian',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom uraian harus diisi!',
                ),
            ],
            [
                'field' => 'level',
                'label' => 'Level Golongan',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom level golongan harus diisi!',
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
        return $this->db->get_where($this->_table, ["id_golongan" => $id])->row();
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_golongan = $post["id_golongan"];
        $this->golongan = $post["golongan"];
        $this->uraian = $post["uraian"];
        $this->level = $post["level"];
        $this->db->update($this->_table, $this, array('id_golongan' => $post['id_golongan']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array('id_golongan' => $id));
    }
}
