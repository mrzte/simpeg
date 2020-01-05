<?php defined('BASEPATH') or exit('No direct script access allowed');

class Menu_model extends CI_Model
{
    private $_table = "user_menu";
    private $_table2 = "user_access_menu";

    public $id;
    public $menu;
    public $icon;
    public $title_id;

    public function rules()
    {
        return [
            [
                'field' => 'menu',
                'label' => 'Menu',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom nama menu harus diisi!',
                ),
            ],
            [
                'field' => 'icon',
                'label' => 'Icon',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom ikon harus diisi!',
                ),
            ],
            [
                'field' => 'title_id',
                'label' => 'Title',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom title harus diisi!',
                ),
            ]
        ];
    }

    public function getAll()
    {
        $this->db->select('*');
        $this->db->join('user_title', 'user_title.id_title=user_menu.title_id');
        $this->db->from('user_menu');
        $query = $this->db->get();
        return $query->result();
    }

    public function getJudul()
    {
        $this->db->select('*');
        $this->db->from('user_title');
        $query = $this->db->get();
        return $query->result();
    }

    public function getById($id)
    {
        $this->db->select('*');
        $this->db->join('user_title', 'user_title.id_title=user_menu.title_id');
        $this->db->from('user_menu');
        $this->db->where('id', $id);
        $query = $this->db->get();
        return $query->row();
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id = $post["id"];
        $this->menu = $post["menu"];
        $this->icon = $post["icon"];
        $this->title_id = $post["title_id"];
        $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

    public function delete($id)
    {
        $this->db->delete($this->_table, array('id' => $id));
        return $this->db->delete($this->_table2, array('menu_id' => $id));
    }
}
