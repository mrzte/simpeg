<?php defined('BASEPATH') or exit('No direct script access allowed');

class Eselon_model extends CI_Model
{
    private $_table = "tbl_master_eselon";

    public $id_eselon;
    public $nama_eselon;
    public $level;

    public function rules()
    {
        return [
            [
                'field' => 'nama_eselon',
                'label' => 'Nama Eselon',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom nama eselon harus diisi!',
                ),
            ],
            [
                'field' => 'level',
                'label' => 'Level',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom level eselon harus diisi!',
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
        return $this->db->get_where($this->_table, ["id_eselon" => $id])->row();
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_eselon = $post["id_eselon"];
        $this->nama_eselon = $post["nama_eselon"];
        $this->level = $post["level"];
        $this->db->update($this->_table, $this, array('id_eselon' => $post['id_eselon']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array('id_eselon' => $id));
    }
}
