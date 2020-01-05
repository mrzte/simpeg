<?php defined('BASEPATH') or exit('No direct script access allowed');

class Submenu_model extends CI_Model
{
    private $_table = "user_sub_menu";

    public $id;
    public $menu_id;
    public $title;
    public $url;
    public $icon;
    public $is_active;

    public function rules()
    {
        return [
            [
                'field' => 'title',
                'label' => 'Title',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom judul submenu harus diisi!',
                ),
            ],
            [
                'field' => 'menu_id',
                'label' => 'Menu',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Pilih salah satu menu!',
                ),
            ],
            [
                'field' => 'url',
                'label' => 'URL',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom url harus diisi!',
                ),
            ],
            [
                'field' => 'icon',
                'label' => 'Icon',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kolom ikon harus diisi!',
                ),
            ]
        ];
    }
    public function getAll()
    {
        $this->db->select('user_sub_menu.*, user_menu.id AS menu_id, user_menu.menu');
        $this->db->join('user_menu', 'user_sub_menu.menu_id = user_menu.id');
        $this->db->from('user_sub_menu');
        $query = $this->db->get();
        return $query->result();
    }

    public function getById($id)
    {
        $this->db->select('user_sub_menu.*, user_menu.id AS menu_id, user_menu.menu');
        $this->db->join('user_menu', 'user_sub_menu.menu_id = user_menu.id');
        $this->db->from('user_sub_menu');
        $this->db->where('user_sub_menu.id', $id);
        $query = $this->db->get();
        return $query->row();
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id = $post["id"];
        $this->menu_id = $post["menu_id"];
        $this->title = $post["title"];
        $this->url = $post["url"];
        $this->icon = $post["icon"];
        $this->is_active = $post["is_active"];
        $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array('id' => $id));
    }
}
