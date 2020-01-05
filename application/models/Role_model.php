<?php defined('BASEPATH') or exit('No direct script access allowed');

class Role_model extends CI_Model
{
    private $_table = "user_role";
    private $_table2 = "user_access_menu";

    public $id;
    public $role;

    public function rules()
    {
        return [
            [
                'field' => 'role',
                'label' => 'Role',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom nama hak akses harus diisi!',
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
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id = $post["id"];
        $this->role = $post["role"];
        $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

    public function delete($id)
    {
        $this->db->delete($this->_table, array('id' => $id));
        return $this->db->delete($this->_table2, array('role_id' => $id));
    }
}
