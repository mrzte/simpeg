<?php defined('BASEPATH') or exit('No direct script access allowed');

class Pegawai_model extends CI_Model
{
    private $_table = "tbl_data_pegawai";

    public $id_pegawai;
    public $nip;
    public $nip_lama;
    public $no_kartu_pegawai;
    public $nama_pegawai;
    public $tempat_lahir;
    public $tanggal_lahir;
    public $jenis_kelamin;
    public $agama;
    public $usia;
    public $status_pegawai;
    public $no_sk_cpns;
    public $tanggal_sk_cpns;
    public $tmt_cpns;
    public $id_golongan_cpns;
    public $tmt_pns;
    public $id_golongan_pns;
    public $alamat;
    public $no_npwp;
    public $kartu_askes_pegawai;
    public $status_pegawai_pangkat;
    public $id_golongan;
    public $nomor_sk_pangkat;
    public $tanggal_sk_pangkat;
    public $tanggal_mulai_pangkat;
    public $tanggal_selesai_pangkat;
    public $id_status_jabatan;
    public $id_jabatan;
    public $id_unit_kerja;
    public $id_satuan_kerja;
    public $lokasi_kerja;
    public $nomor_sk_jabatan;
    public $tanggal_sk_jabatan;
    public $tanggal_mulai_jabatan;
    public $tanggal_selesai_jabatan;
    public $id_eselon;
    public $tmt_eselon;
    public $foto =  "default.jpg";
    public $telepon;
    public $email;
    public $status_kawin;
    public $gelar_depan;
    public $gelar_belakang;
    public $no_sk_pns;
    public $tanggal_sk_pns;
    public $pendidikan_terakhir;
    public $pendidikan_bidang;
    public $pendidikan_lulus;

    public function rules()
    {
        return [
            [
                'field' => 'nip',
                'label' => 'NIP',
                'rules' => 'numeric|required',

                'errors' => array(
                    'numeric' => 'NIP harus berisikan nomor!',
                    'required' => 'NIP harus diisi!'
                ),
            ],

            [
                'field' => 'nip_lama',
                'label' => 'NIP lama',
                'rules' => 'numeric|required',

                'errors' => array(
                    'numeric' => 'NIP harus berisikan nomor!',
                    'required' => 'NIP lama harus diisi!'
                ),
            ],

            [
                'field' => 'no_kartu_pegawai',
                'label' => 'Nomor Kartu Pegawai',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Nomor kartu pegawai harus diisi!'
                ),
            ],

            [
                'field' => 'nama_pegawai',
                'label' => 'Nama Pegawai',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Nama pegawai harus diisi!'
                ),
            ],

            [
                'field' => 'tempat_lahir',
                'label' => 'Tempat lahir',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Tempat lahir harus diisi!'
                ),
            ],

            [
                'field' => 'tanggal_lahir',
                'label' => 'Tanggal lahir',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Tanggal lahir harus diisi!'
                ),
            ],

            [
                'field' => 'jenis_kelamin',
                'label' => 'Jenis kelamin',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Jenis kelamin harus diisi!'
                ),
            ],

            [
                'field' => 'agama',
                'label' => 'Agama',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Agama harus diisi!'
                ),
            ],

            [
                'field' => 'usia',
                'label' => 'Usia',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Usia harus diisi!'
                ),
            ],

            [
                'field' => 'status_pegawai',
                'label' => 'Status pegawai',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Status pegawai harus diisi!'
                ),
            ],

            [
                'field' => 'alamat',
                'label' => 'Alamat Pegawai',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Alamat pegawai harus diisi!'
                ),
            ],

            [
                'field' => 'no_npwp',
                'label' => 'Nomor NPWP',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Nomor NPWP pegawai harus diisi!'
                ),
            ],

            [
                'field' => 'kartu_askes_pegawai',
                'label' => 'Kartu Askes Pegawai',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Kartu askes pegawai harus diisi!'
                ),
            ],

            [
                'field' => 'id_golongan',
                'label' => 'Golongan',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Golongan harus diisi!'
                ),
            ],

            [
                'field' => 'nomor_sk_pangkat',
                'label' => 'Nomor SK Pangkat',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Nomor SK pangkat harus diisi!'
                ),
            ],

            [
                'field' => 'tanggal_sk_pangkat',
                'label' => 'Tanggal SK Pangkat',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Tanggal SK pangkat harus diisi!'
                ),
            ],

            [
                'field' => 'tanggal_mulai_pangkat',
                'label' => 'Tanggal Mulai Pangkat',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Tanggal mulai pangkat harus diisi!'
                ),
            ],

            [
                'field' => 'tanggal_selesai_pangkat',
                'label' => 'Tanggal Selesai Pangkat',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Tanggal selesai pangkat harus diisi!'
                ),
            ],

            [
                'field' => 'id_status_jabatan',
                'label' => 'Status Jabatan',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Status jabatan harus diisi!'
                ),
            ],

            [
                'field' => 'id_jabatan',
                'label' => 'Jabatan Pegawai',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Jabatan pegawai harus diisi!'
                ),
            ],

            [
                'field' => 'id_unit_kerja',
                'label' => 'Unit Kerja',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Unit kerja harus diisi!'
                ),
            ],

            [
                'field' => 'id_satuan_kerja',
                'label' => 'Satuan Kerja',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Satuan kerja harus diisi!'
                ),
            ],

            [
                'field' => 'lokasi_kerja',
                'label' => 'Lokasi kerja',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Lokasi kerja harus diisi!'
                ),
            ],

            [
                'field' => 'nomor_sk_jabatan',
                'label' => 'Nomor SK Jabatan',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Nomor SK jabatan harus diisi!'
                ),
            ],

            [
                'field' => 'tanggal_sk_jabatan',
                'label' => 'Tanggal SK Jabatan',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Tanggal SK jabatan harus diisi!'
                ),
            ],

            [
                'field' => 'tanggal_mulai_jabatan',
                'label' => 'Tanggal Mulai Jabatan',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Tanggal mulai jabatan harus diisi!'
                ),
            ],

            [
                'field' => 'tanggal_selesai_jabatan',
                'label' => 'Tanggal Selesai Jabatan',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Tanggal selesai jabatan harus diisi!'
                ),
            ],

            [
                'field' => 'id_eselon',
                'label' => 'Eselon',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Eselon pegawai harus diisi!'
                ),
            ],

            [
                'field' => 'tmt_eselon',
                'label' => 'TMT Eselon',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'TMT eselon pegawai harus diisi!'
                ),
            ],

            [
                'field' => 'telepon',
                'label' => 'Telepon Pegawai',
                'rules' => 'numeric',

                'errors' => array(
                    'numeric' => 'Nomor telepon tidak valid!'
                ),
            ],

            [
                'field' => 'email',
                'label' => 'Nomor Kartu Pegawai',
                'rules' => 'trim|valid_email',

                'errors' => array(
                    'valid_email' => 'Alamat email harus berisikan email valid!'
                ),
            ],

            [
                'field' => 'status_kawin',
                'label' => 'Status Kawin',
                'rules' => 'required',

                'errors' => array(
                    'required' => 'Status kawin pegawai harus diisi!'
                ),
            ]
        ];
    }

    public function getAll()
    {
        $this->db->select('*');
        $this->db->from('tbl_data_pegawai');
        $this->db->join('tbl_master_jabatan', 'tbl_master_jabatan.id_jabatan=tbl_data_pegawai.id_jabatan');
        $this->db->order_by('id_pegawai', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    public function getGolongan()
    {
        $this->db->select('*');
        $this->db->from('tbl_master_golongan');
        $this->db->order_by('id_golongan', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    public function getStatusPegawai()
    {
        $this->db->select('*');
        $this->db->from('tbl_master_status_pegawai');
        $query = $this->db->get();
        return $query->result();
    }

    public function getStatusJabatan()
    {
        $this->db->select('*');
        $this->db->from('tbl_master_status_jabatan');
        $query = $this->db->get();
        return $query->result();
    }

    public function getJabatan()
    {
        $this->db->select('*');
        $this->db->from('tbl_master_jabatan');
        $query = $this->db->get();
        return $query->result();
    }

    public function getUnitKerja()
    {
        $this->db->select('*');
        $this->db->from('tbl_master_unit_kerja');
        $query = $this->db->get();
        return $query->result();
    }

    public function getSatuanKerja()
    {
        $this->db->select('*');
        $this->db->from('tbl_master_satuan_kerja');
        $query = $this->db->get();
        return $query->result();
    }

    public function getEselon()
    {
        $this->db->select('*');
        $this->db->from('tbl_master_eselon');
        $query = $this->db->get();
        return $query->result();
    }

    public function getLokasiKerja()
    {
        $this->db->select('*');
        $this->db->from('tbl_master_lokasi_kerja');
        $query = $this->db->get();
        return $query->result();
    }

    public function getById($id)
    {
        $this->db->select('*');
        $this->db->from('tbl_data_pegawai a');
        $this->db->join('tbl_master_status_pegawai b', 'b.id_status_pegawai=a.status_pegawai');
        $this->db->join('tbl_master_status_jabatan c', 'c.id_status_jabatan=a.id_status_jabatan');
        $this->db->join('tbl_master_golongan d', 'd.id_golongan=a.id_golongan');
        $this->db->join('tbl_master_jabatan e', 'e.id_jabatan=a.id_jabatan');
        $this->db->join('tbl_master_unit_kerja f', 'f.id_unit_kerja=a.id_unit_kerja');
        $this->db->join('tbl_master_satuan_kerja g', 'g.id_satuan_kerja=a.id_satuan_kerja');
        $this->db->join('tbl_master_eselon h', 'h.id_eselon=a.id_eselon');
        $this->db->where('id_pegawai', $id);
        $query = $this->db->get();
        return $query->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->nip = $post["nip"];
        $this->nip_lama = $post["nip_lama"];
        $this->no_kartu_pegawai = $post["no_kartu_pegawai"];
        $this->nama_pegawai = $post["nama_pegawai"];
        $this->tempat_lahir = $post["tempat_lahir"];
        $this->tanggal_lahir = $post["tanggal_lahir"];
        $this->jenis_kelamin = $post["jenis_kelamin"];
        $this->agama = $post["agama"];
        $this->usia = $post["usia"];
        $this->status_pegawai = $post["status_pegawai"];
        $this->no_sk_cpns = $post["no_sk_cpns"];
        $this->tanggal_sk_cpns = $post["tanggal_sk_cpns"];
        $this->tmt_cpns = $post["tmt_cpns"];
        //$this->id_golongan_cpns = $post["id_golongan_cpns"];
        $this->tmt_pns = $post["tmt_pns"];
        //$this->id_golongan_pns = $post["id_golongan_pns"];
        $this->alamat = $post["alamat"];
        $this->no_npwp = $post["no_npwp"];
        $this->kartu_askes_pegawai = $post["kartu_askes_pegawai"];
        //$this->status_pegawai_pangkat = $post["status_pegawai_pangkat"];
        $this->id_golongan = $post["id_golongan"];
        $this->nomor_sk_pangkat = $post["nomor_sk_pangkat"];
        $this->tanggal_sk_pangkat = $post["tanggal_sk_pangkat"];
        $this->tanggal_mulai_pangkat = $post["tanggal_mulai_pangkat"];
        $this->tanggal_selesai_pangkat = $post["tanggal_selesai_pangkat"];
        $this->id_status_jabatan = $post["id_status_jabatan"];
        $this->id_jabatan = $post["id_jabatan"];
        $this->id_unit_kerja = $post["id_unit_kerja"];
        $this->id_satuan_kerja = $post["id_satuan_kerja"];
        $this->lokasi_kerja = $post["lokasi_kerja"];
        $this->nomor_sk_jabatan = $post["nomor_sk_jabatan"];
        $this->tanggal_sk_jabatan = $post["tanggal_sk_jabatan"];
        $this->tanggal_mulai_jabatan = $post["tanggal_mulai_jabatan"];
        $this->tanggal_selesai_jabatan = $post["tanggal_selesai_jabatan"];
        $this->id_eselon = $post["id_eselon"];
        $this->tmt_eselon = $post["tmt_eselon"];
        $this->foto = $this->_uploadImage();
        $this->telepon = $post["telepon"];
        $this->email = $post["email"];
        $this->status_kawin = $post["status_kawin"];
        $this->pendidikan_terakhir = $post["pendidikan_terakhir"];
        $this->pendidikan_bidang = $post["pendidikan_bidang"];
        $this->pendidikan_lulus = $post["pendidikan_lulus"];
        $this->gelar_depan = $post["gelar_depan"];
        $this->gelar_belakang = $post["gelar_belakang"];
        $this->no_sk_pns = $post["no_sk_pns"];
        $this->tanggal_sk_pns = $post["tanggal_sk_pns"];
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_pegawai = $post["id"];
        $this->nip = $post["nip"];
        $this->nip_lama = $post["nip_lama"];
        $this->no_kartu_pegawai = $post["no_kartu_pegawai"];
        $this->nama_pegawai = $post["nama_pegawai"];
        $this->tempat_lahir = $post["tempat_lahir"];
        $this->tanggal_lahir = $post["tanggal_lahir"];
        $this->jenis_kelamin = $post["jenis_kelamin"];
        $this->agama = $post["agama"];
        $this->usia = $post["usia"];
        $this->status_pegawai = $post["status_pegawai"];
        $this->no_sk_cpns = $post["no_sk_cpns"];
        $this->tanggal_sk_cpns = $post["tanggal_sk_cpns"];
        $this->tmt_cpns = $post["tmt_cpns"];
        //$this->id_golongan_cpns = $post["id_golongan_cpns"];
        $this->tmt_pns = $post["tmt_pns"];
        //$this->id_golongan_pns = $post["id_golongan_pns"];
        $this->alamat = $post["alamat"];
        $this->no_npwp = $post["no_npwp"];
        $this->kartu_askes_pegawai = $post["kartu_askes_pegawai"];
        //$this->status_pegawai_pangkat = $post["status_pegawai_pangkat"];
        $this->id_golongan = $post["id_golongan"];
        $this->nomor_sk_pangkat = $post["nomor_sk_pangkat"];
        $this->tanggal_sk_pangkat = $post["tanggal_sk_pangkat"];
        $this->tanggal_mulai_pangkat = $post["tanggal_mulai_pangkat"];
        $this->tanggal_selesai_pangkat = $post["tanggal_selesai_pangkat"];
        $this->id_status_jabatan = $post["id_status_jabatan"];
        $this->id_jabatan = $post["id_jabatan"];
        $this->id_unit_kerja = $post["id_unit_kerja"];
        $this->id_satuan_kerja = $post["id_satuan_kerja"];
        $this->lokasi_kerja = $post["lokasi_kerja"];
        $this->nomor_sk_jabatan = $post["nomor_sk_jabatan"];
        $this->tanggal_sk_jabatan = $post["tanggal_sk_jabatan"];
        $this->tanggal_mulai_jabatan = $post["tanggal_mulai_jabatan"];
        $this->tanggal_selesai_jabatan = $post["tanggal_selesai_jabatan"];
        $this->id_eselon = $post["id_eselon"];
        $this->tmt_eselon = $post["tmt_eselon"];

        if (!empty($_FILES["foto"]["name"])) {
            $this->foto = $this->_uploadImage();
        } else {
            $this->foto = $post["old_image"];
        }

        $this->telepon = $post["telepon"];
        $this->email = $post["email"];
        $this->status_kawin = $post["status_kawin"];
        $this->pendidikan_terakhir = $post["pendidikan_terakhir"];
        $this->pendidikan_bidang = $post["pendidikan_bidang"];
        $this->pendidikan_lulus = $post["pendidikan_lulus"];
        $this->gelar_depan = $post["gelar_depan"];
        $this->gelar_belakang = $post["gelar_belakang"];
        $this->no_sk_pns = $post["no_sk_pns"];
        $this->tanggal_sk_pns = $post["tanggal_sk_pns"];
        $this->db->update($this->_table, $this, array('id_pegawai' => $post['id']));
    }

    public function delete($id)
    {
        $this->_deleteImage($id);
        return $this->db->delete($this->_table, array('id_pegawai' => $id));
    }

    private function _uploadImage()
    {
        $config['upload_path']          = './upload/pegawai/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['file_name']            = $this->nip;
        $config['overwrite']            = true;
        $config['max_size']             = 2048; // 2MB
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('foto')) {
            return $this->upload->data("file_name");
        }

        return "default.jpg";
    }

    /*private function _deleteImage($id)
    {
        $pegawai = $this->getById($id);
        if ($pegawai->image != "default.jpg") {
            $filename = explode(".", $pegawai->image)[0];
            return array_map('unlink', glob(FCPATH . "upload/pegawai/$filename.*"));
        }
    }*/
}
