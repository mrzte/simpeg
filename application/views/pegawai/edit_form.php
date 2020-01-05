<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $title; ?></title>
    <?php $this->load->view("admin/_partials/head.php"); ?>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php $this->load->view("admin/_partials/sidebar.php"); ?>

        <?php $this->load->view("admin/_partials/topbar.php"); ?>

        <!-- Begin Page Content -->
        <div class="container-fluid">

            <?php $this->load->view("admin/_partials/breadcrumb.php"); ?>

            <?= $this->session->flashdata('message'); ?>
            <div class="card shadow">
                <div class="card-header py-3">
                    <a href="<?php echo site_url('pegawai') ?>"><i class="fas fa-arrow-left"></i>
                        Kembali</a>
                </div>
                <div class="card-body">
                    <form action="<?php base_url('pegawai/edit') ?>" method="post" enctype="multipart/form-data">

                        <input type="hidden" name="id" value="<?php echo $pegawai->id_pegawai ?>" />

                        <div class="form-row">
                            <div class="col">
                                <label for="nip">NIP*</label>
                                <input type="text" class="form-control <?php echo form_error('nip') ? 'is-invalid' : '' ?>" value="<?= $pegawai->nip ?>" id="nip" name="nip" placeholder="Masukkan NIP anda">
                                <?= form_error('nip', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="nip_lama">NIP Lama*</label>
                                <input type="text" class="form-control <?php echo form_error('nip_lama') ? 'is-invalid' : '' ?>" value="<?= $pegawai->nip_lama ?>" id="nip_lama" name="nip_lama" placeholder="Masukkan NIP lama anda">
                                <?= form_error('nip_lama', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="gelar_depan">Gelar Depan</label>
                                <input type="text" class="form-control <?php echo form_error('gelar_depan') ? 'is-invalid' : '' ?>" value="<?= $pegawai->gelar_depan ?>" id="gelar_depan" name="gelar_depan" placeholder="Masukkan gelar depan anda">
                                <?= form_error('gelar_depan', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="gelar_belakang">Gelar Belakang</label>
                                <input type="text" class="form-control <?php echo form_error('gelar_belakang') ? 'is-invalid' : '' ?>" value="<?= $pegawai->gelar_belakang ?>" id="gelar_belakang" name="gelar_belakang" placeholder="Masukkan gelar belakang anda">
                                <?= form_error('gelar_belakang', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="nampeg">Nama Pegawai*</label>
                                <input type="text" class="form-control <?php echo form_error('nama_pegawai') ? 'is-invalid' : '' ?>" value="<?= $pegawai->nama_pegawai ?>" id="nampeg" name="nama_pegawai" placeholder="Masukkan nama anda">
                                <?= form_error('nama_pegawai', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="nokatpegawai">Nomor Kartu Pegawai*</label>
                                <input type="text" class="form-control <?php echo form_error('no_kartu_pegawai') ? 'is-invalid' : '' ?>" value="<?= $pegawai->no_kartu_pegawai ?>" id="nokatpegawai" name="no_kartu_pegawai" placeholder="Masukkan nomor kartu pegawai anda">
                                <?= form_error('no_kartu_pegawai', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="tempatlahir">Tempat Lahir*</label>
                                <input type="text" class="form-control <?php echo form_error('tempat_lahir') ? 'is-invalid' : '' ?>" value="<?= $pegawai->tempat_lahir ?>" id="tempatlahir" name="tempat_lahir" placeholder="Masukkan tempat lahir anda">
                                <?= form_error('tempat_lahir', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tanggallahir">Tanggal Lahir*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tanggal_lahir') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tanggal_lahir ?>" id="tanggallahir" name="tanggal_lahir" placeholder="Masukkan tanggal lahir anda">
                                </div>
                                <?= form_error('tanggal_lahir', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="jeniskel">Jenis Kelamin*</label>
                                <select class="form-control <?php echo form_error('jenis_kelamin') ? 'is-invalid' : '' ?>" name="jenis_kelamin" id="jeniskel">
                                    <option value="<?= $pegawai->jenis_kelamin ?>" class="alert alert-primary"><?= $pegawai->jenis_kelamin ?></option>
                                    <option value="Laki-laki" <?php if (set_value('jenis_kelamin') == 'Laki-laki') {
                                                                    echo 'selected';
                                                                }
                                                                ?>>Laki-laki</option>
                                    <option value="Perempuan" <?php if (set_value('jenis_kelamin') == 'Perempuan') {
                                                                    echo 'selected';
                                                                }
                                                                ?>>Perempuan</option>
                                </select>
                                <?= form_error('jenis_kelamin', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="agama">Agama*</label>
                                <select class="form-control <?php echo form_error('agama') ? 'is-invalid' : '' ?>" name="agama" id="agama">
                                    <option value="<?= $pegawai->agama ?>" class="alert alert-primary"><?= $pegawai->agama ?></option>
                                    <option value="Islam" <?php if (set_value('agama') == 'Islam') {
                                                                echo 'selected';
                                                            }
                                                            ?>>Islam</option>
                                    <option value="Kristen" <?php if (set_value('agama') == 'Kristen') {
                                                                echo 'selected';
                                                            }
                                                            ?>>Kristen</option>
                                    <option value="Katolik" <?php if (set_value('agama') == 'Katolik') {
                                                                echo 'selected';
                                                            }
                                                            ?>>Katolik</option>
                                    <option value="Hindu" <?php if (set_value('agama') == 'Hindu') {
                                                                echo 'selected';
                                                            }
                                                            ?>>Hindu</option>
                                    <option value="Budha" <?php if (set_value('agama') == 'Budha') {
                                                                echo 'selected';
                                                            }
                                                            ?>>Budha</option>
                                    <option value="Konghuchu" <?php if (set_value('agama') == 'Konghuchu') {
                                                                    echo 'selected';
                                                                }
                                                                ?>>Konghuchu</option>
                                    <option value="Aliran Kepercayaan" <?php if (set_value('agama') == 'Aliran Kepercayaan') {
                                                                            echo 'selected';
                                                                        }
                                                                        ?>>Aliran Kepercayaan</option>
                                    <option value="-" <?php if (set_value('agama') == '-') {
                                                            echo 'selected';
                                                        }
                                                        ?>>-</option>
                                </select>
                                <?= form_error('agama', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="usia">Usia*</label>
                                <input type="number" class="form-control <?php echo form_error('usia') ? 'is-invalid' : '' ?>" value="<?= $pegawai->usia ?>" id="usia" name="usia" placeholder="Masukkan usia anda">
                                <?= form_error('usia', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="statuspeg">Status Pegawai*</label>
                                <select class="form-control <?php echo form_error('status_pegawai') ? 'is-invalid' : '' ?>" name="status_pegawai" id="statuspeg">
                                    <option value="<?= $pegawai->status_pegawai ?>" class="alert alert-primary"><?= $pegawai->nama_status ?></option>
                                    <?php
                                    foreach ($s_pegawai as $row) { ?>
                                        <option value='<?= $row->id_status_pegawai ?>' <?php if (set_value('status_pegawai') == $row->id_status_pegawai) {
                                                                                                echo 'selected';
                                                                                            } ?>><?= $row->nama_status ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('status_pegawai', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="alamat">Alamat*</label>
                                <textarea class="form-control <?php echo form_error('alamat') ? 'is-invalid' : '' ?>" id="alamat" name="alamat" placeholder="Masukkan alamat anda" rows="3"><?= $pegawai->alamat ?></textarea>
                                <?= form_error('alamat', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="no_sk_cpns">No. SK CPNS</label>
                                <input type="text" class="form-control <?php echo form_error('no_sk_cpns') ? 'is-invalid' : '' ?>" value="<?= $pegawai->no_sk_cpns ?>" id="no_sk_cpns" name="no_sk_cpns" placeholder="Masukkan No. SK CPNS anda">
                                <?= form_error('no_sk_cpns', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tanggal_sk_cpns">Tanggal SK CPNS</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tanggal_sk_cpns') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tanggal_sk_cpns ?>" id="tanggal_sk_cpns" name="tanggal_sk_cpns" placeholder="Masukkan tanggal SK CPNS anda">
                                </div>
                                <?= form_error('tanggal_sk_cpns', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tmt_cpns">TMT CPNS</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tmt_cpns') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tmt_cpns ?>" id="tmt_cpns" name="tmt_cpns" placeholder="Masukkan TMT CPNS anda">
                                </div>
                                <?= form_error('tmt_cpns', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="no_sk_pns">No. SK PNS</label>
                                <input type="text" class="form-control <?php echo form_error('no_sk_pns') ? 'is-invalid' : '' ?>" value="<?= $pegawai->no_sk_pns ?>" id="no_sk_pns" name="no_sk_pns" placeholder="Masukkan No. SK PNS anda">
                                <?= form_error('no_sk_pns', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tanggal_sk_pns">Tanggal SK PNS</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tanggal_sk_pns') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tanggal_sk_pns ?>" id="tanggal_sk_pns" name="tanggal_sk_pns" placeholder="Masukkan tanggal SK PNS anda">
                                </div>
                                <?= form_error('tanggal_sk_pns', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tmt_pns">TMT PNS</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tmt_pns') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tmt_pns ?>" id="tmt_pns" name="tmt_pns" placeholder="Masukkan TMT PNS anda">
                                </div>
                                <?= form_error('tmt_pns', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="npwp">Nomor NPWP*</label>
                                <input type="text" class="form-control <?php echo form_error('no_npwp') ? 'is-invalid' : '' ?>" value="<?= $pegawai->no_npwp ?>" id="npwp" name="no_npwp" placeholder="Masukkan nomor NPWP anda">
                                <?= form_error('no_npwp', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="kartuaskes">Kartu Askes Pegawai*</label>
                                <input type="text" class="form-control <?php echo form_error('kartu_askes_pegawai') ? 'is-invalid' : '' ?>" value="<?= $pegawai->kartu_askes_pegawai ?>" id="kartuaskes" name="kartu_askes_pegawai" placeholder="Masukkan kartu askes pegawai anda">
                                <?= form_error('kartu_askes_pegawai', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="id_status_jabatan">Status Jabatan*</label>
                                <select class="form-control <?php echo form_error('id_status_jabatan') ? 'is-invalid' : '' ?>" name="id_status_jabatan" id="id_status_jabatan">
                                    <option value="<?= $pegawai->id_status_jabatan ?>" class="alert alert-primary"><?= $pegawai->status_jabatan ?></option>
                                    <?php
                                    foreach ($sp_pegawai as $row) { ?>
                                        <option value='<?= $row->id_status_jabatan ?>' <?php if (set_value('id_status_jabatan') == $row->id_status_jabatan) {
                                                                                                echo 'selected';
                                                                                            } ?>><?= $row->status_jabatan ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('id_status_jabatan', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="id_golongan">Golongan*</label>
                                <select class="form-control <?php echo form_error('id_golongan') ? 'is-invalid' : '' ?>" name="id_golongan" id="id_golongan">
                                    <option value="<?= $pegawai->id_golongan ?>" class="alert alert-primary"><?= $pegawai->golongan . " - " . $pegawai->uraian ?></option>
                                    <?php
                                    foreach ($golongan as $row) { ?>
                                        <option value='<?= $row->id_golongan ?>' <?php if (set_value('id_golongan') == $row->id_golongan) {
                                                                                            echo 'selected';
                                                                                        } ?>><?= $row->golongan . " - " . $row->uraian ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('id_golongan', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="no_sk_pangkat">Nomor SK Pangkat*</label>
                                <input type="text" class="form-control <?php echo form_error('nomor_sk_pangkat') ? 'is-invalid' : '' ?>" value="<?= $pegawai->nomor_sk_pangkat ?>" id="no_sk_pangkat" name="nomor_sk_pangkat" placeholder="Masukkan nomor SK pangkat anda">
                                <?= form_error('nomor_sk_pangkat', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tglskpangkat">Tanggal SK Pangkat*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tanggal_sk_pangkat') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tanggal_sk_pangkat ?>" id="tglskpangkat" name="tanggal_sk_pangkat" placeholder="Masukkan tanggal SK pangkat anda">
                                </div>
                                <?= form_error('tanggal_sk_pangkat', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="tglmulaipangkat">Tanggal Mulai Pangkat*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tanggal_mulai_pangkat') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tanggal_mulai_pangkat ?>" id="tglmulaipangkat" name="tanggal_mulai_pangkat" placeholder="Masukkan tanggal mulai pangkat anda">
                                </div>
                                <?= form_error('tanggal_mulai_pangkat', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tglselesaipangkat">Tanggal Selesai Pangkat*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tanggal_selesai_pangkat') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tanggal_selesai_pangkat ?>" id="tglselesaipangkat" name="tanggal_selesai_pangkat" placeholder="Masukkan tanggal selesai pangkat anda">
                                </div>
                                <?= form_error('tanggal_selesai_pangkat', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="id_jabatan">Jabatan*</label>
                                <select class="form-control <?php echo form_error('id_jabatan') ? 'is-invalid' : '' ?>" name="id_jabatan" id="id_jabatan">
                                    <option value="<?= $pegawai->id_jabatan ?>" class="alert alert-primary"><?= $pegawai->jabatan ?></option>
                                    <?php
                                    foreach ($jabatan as $row) { ?>
                                        <option value='<?= $row->id_jabatan ?>' <?php if (set_value('id_jabatan') == $row->id_jabatan) {
                                                                                        echo 'selected';
                                                                                    } ?>><?= $row->jabatan ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('id_jabatan', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="id_unit_kerja">Unit Kerja*</label>
                                <select class="form-control <?php echo form_error('id_unit_kerja') ? 'is-invalid' : '' ?>" name="id_unit_kerja" id="id_unit_kerja">
                                    <option value="<?= $pegawai->id_unit_kerja ?>" class="alert alert-primary"><?= $pegawai->nama_unit_kerja ?></option>
                                    <?php
                                    foreach ($u_kerja as $row) { ?>
                                        <option value='<?= $row->id_unit_kerja ?>' <?php if (set_value('id_unit_kerja') == $row->id_unit_kerja) {
                                                                                            echo 'selected';
                                                                                        } ?>><?= $row->nama_unit_kerja ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('id_unit_kerja', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="id_satuan_kerja">Satuan Kerja*</label>
                                <select class="form-control <?php echo form_error('id_satuan_kerja') ? 'is-invalid' : '' ?>" name="id_satuan_kerja" id="id_satuan_kerja">
                                    <option value="<?= $pegawai->id_satuan_kerja ?>" class="alert alert-primary"><?= $pegawai->nama_satuan_kerja ?></option>
                                    <?php
                                    foreach ($s_kerja as $row) { ?>
                                        <option value='<?= $row->id_satuan_kerja ?>' <?php if (set_value('id_satuan_kerja') == $row->id_satuan_kerja) {
                                                                                                echo 'selected';
                                                                                            } ?>><?= $row->nama_satuan_kerja ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('id_satuan_kerja', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="lokerja">Lokasi Kerja*</label>
                                <select class="form-control <?php echo form_error('lokasi_kerja') ? 'is-invalid' : '' ?>" name="lokasi_kerja" id="lokasi_kerja">
                                    <option value="<?= $pegawai->lokasi_kerja ?>" class="alert alert-primary"><?= $pegawai->lokasi_kerja ?></option>
                                    <?php
                                    foreach ($lokasi_kerja as $row) { ?>
                                        <option value='<?= $row->lokasi_kerja ?>' <?php if (set_value('lokasi_kerja') == $row->lokasi_kerja) {
                                                                                            echo 'selected';
                                                                                        } ?>><?= $row->lokasi_kerja ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('lokasi_kerja', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="noskjabatan">Nomor SK Jabatan*</label>
                                <input type="text" class="form-control <?php echo form_error('nomor_sk_jabatan') ? 'is-invalid' : '' ?>" value="<?= $pegawai->nomor_sk_jabatan ?>" id="noskjabatan" name="nomor_sk_jabatan" placeholder="Masukkan nomor SK jabatan anda">
                                <?= form_error('nomor_sk_jabatan', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tglskjabatan">Tanggal SK Jabatan*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tanggal_sk_jabatan') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tanggal_sk_jabatan ?>" id="tglskjabatan" name="tanggal_sk_jabatan" placeholder="Masukkan tanggal SK jabatan anda">
                                </div>
                                <?= form_error('tanggal_sk_jabatan', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="tglmulaijabatan">Tanggal Mulai Jabatan*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tanggal_mulai_jabatan') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tanggal_mulai_jabatan ?>" id="tglmulaijabatan" name="tanggal_mulai_jabatan" placeholder="Masukkan tanggal mulai jabatan anda">
                                </div>
                                <?= form_error('tanggal_mulai_jabatan', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tglselesaijabatan">Tanggal Selesai Jabatan*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tanggal_selesai_jabatan') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tanggal_selesai_jabatan ?>" id="tglselesaijabatan" name="tanggal_selesai_jabatan" placeholder="Masukkan tanggal selesai jabatan anda">
                                </div>
                                <?= form_error('tanggal_selesai_jabatan', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="id_eselon">Nama Eselon*</label>
                                <select class="form-control <?php echo form_error('id_eselon') ? 'is-invalid' : '' ?>" name="id_eselon" id="id_eselon">
                                    <option value="<?= $pegawai->id_eselon ?>" class="alert alert-primary"><?= $pegawai->nama_eselon ?></option>
                                    <?php
                                    foreach ($eselon as $row) { ?>
                                        <option value='<?= $row->id_eselon ?>' <?php if (set_value('id_eselon') == $row->id_eselon) {
                                                                                        echo 'selected';
                                                                                    } ?>><?= $row->nama_eselon ?></option>
                                    <?php }
                                    ?>
                                </select>
                                <?= form_error('id_eselon', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="tmteselon">TMT Eselon*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text far fa-calendar-alt"></span>
                                    </div>
                                    <input type="text" class="form-control <?php echo form_error('tmt_eselon') ? 'is-invalid' : '' ?> datepicker" value="<?= $pegawai->tmt_eselon ?>" id="tmteselon" name="tmt_eselon" placeholder="Masukkan TMT eselon anda">
                                </div>
                                <?= form_error('tmt_eselon', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="foto">Foto</label>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="foto" name="foto">
                                    <label class="custom-file-label" for="foto">Pilih foto</label>
                                </div>
                                <input type="hidden" name="old_image" value="<?php echo $pegawai->foto ?>" />
                            </div>
                            <div class="col">
                                <label for="telepon">Nomor Telepon</label>
                                <input type="number" class="form-control <?php echo form_error('telepon') ? 'is-invalid' : '' ?>" value="<?= $pegawai->telepon ?>" id="telepon" name="telepon" placeholder="Masukkan nomor telepon anda">
                                <?= form_error('telepon', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="email">Email</label>
                                <input type="text" class="form-control <?php echo form_error('email') ? 'is-invalid' : '' ?>" value="<?= $pegawai->email ?>" id="email" name="email" placeholder="Masukkan email anda">
                                <?= form_error('email', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="status_kawin">Status Kawin*</label>
                                <select class="form-control <?php echo form_error('status_kawin') ? 'is-invalid' : '' ?>" name="status_kawin" id="status_kawin">
                                    <option value="<?= $pegawai->status_kawin ?>" class="alert alert-primary"><?= $pegawai->status_kawin ?></option>
                                    <option value="Bujangan" <?php if (set_value('status_kawin') == "Bujangan") {
                                                                    echo 'selected';
                                                                } ?>>Bujangan</option>
                                    <option value="Kawin" <?php if (set_value('status_kawin') == "Kawin") {
                                                                echo 'selected';
                                                            } ?>>Kawin</option>
                                    <option value="Tidak Kawin" <?php if (set_value('status_kawin') == "Tidak Kawin") {
                                                                    echo 'selected';
                                                                } ?>>Tidak Kawin</option>
                                </select>
                                <?= form_error('status_kawin', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="col">
                                <label for="pendidikan_terakhir">Pendidikan Terakhir</label>
                                <input type="text" class="form-control <?php echo form_error('pendidikan_terakhir') ? 'is-invalid' : '' ?>" value="<?= $pegawai->pendidikan_terakhir ?>" id="pendidikan_terakhir" name="pendidikan_terakhir" placeholder="Masukkan pendidikan terakhir anda">
                                <?= form_error('pendidikan_terakhir', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="pendidikan_bidang">Pendidikan Bidang</label>
                                <input type="text" class="form-control <?php echo form_error('pendidikan_bidang') ? 'is-invalid' : '' ?>" value="<?= $pegawai->pendidikan_bidang ?>" id="pendidikan_bidang" name="pendidikan_bidang" placeholder="Masukkan pendidikan bidang anda">
                                <?= form_error('pendidikan_bidang', '<small class="text-danger">', '</small>'); ?>
                            </div>
                            <div class="col">
                                <label for="pendidikan_lulus">Pendidikan Lulus</label>
                                <input type="text" class="form-control <?php echo form_error('pendidikan_lulus') ? 'is-invalid' : '' ?>" value="<?= $pegawai->pendidikan_lulus ?>" id="pendidikan_lulus" name="pendidikan_lulus" placeholder="Masukkan pendidikan lulus anda">
                                <?= form_error('pendidikan_lulus', '<small class="text-danger">', '</small>'); ?>
                            </div>
                        </div>

                        <div class="form-row mt-5">
                            <div class="col">
                                <button type="reset" class="btn btn-secondary">Batal</button>
                                <input class="btn btn-success" type="submit" name="btn" value="Simpan" />
                            </div>
                        </div>
                    </form>
                </div>

                <div class="card-footer small text-muted">
                    * harus diisi
                </div>
            </div>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <?php $this->load->view("admin/_partials/footer.php"); ?>

    </div>
    <!-- /.content Wrapper -->

    </div>
    <!-- /#wrapper -->

    <?php $this->load->view("admin/_partials/modal.php"); ?>
    <?php $this->load->view("admin/_partials/scrolltop.php"); ?>
    <?php $this->load->view("admin/_partials/js.php") ?>

</body>

</html>