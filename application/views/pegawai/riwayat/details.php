<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $title; ?></title>
    <?php $this->load->view("admin/_partials/head.php"); ?>
    <style type="text/css">
        #printable {
            display: none;
        }

        @media print {
            #non-printable {
                display: none;
            }

            #printable {
                display: block;
            }
        }
    </style>
    <script type="text/javascript">
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
        }
    </script>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php $this->load->view("admin/_partials/sidebar.php"); ?>

        <?php $this->load->view("admin/_partials/topbar.php"); ?>

        <!-- Begin Page Content -->
        <div class="container-fluid">

            <?php $this->load->view("admin/_partials/breadcrumb.php"); ?>

            <div class="row">
                <div class="col-lg-8">
                    <?= $this->session->flashdata('message'); ?>
                </div>
            </div>

            <div class="row" id="printableArea">
                <div class="col-lg">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <a class="m-0 font-weight-bold text-dark"><?= $title; ?></a>
                            <button id="non-printable" onclick="printDiv('printableArea')" class="btn btn-warning btn-sm ml-2"><i class="fa fa-print"></i> Print</button>
                            <a href="<?= site_url('pegawai/riwayat/pdf/' . $riwayat->id_pegawai) ?>" id="non-printable" class="btn btn-danger btn-sm"><i class="fa fa-file"></i> Export PDF</a>
                        </div>
                        <div class="card-body">
                            <h5 class="mb-3">I. KETERANGAN PERORANGAN</h5>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td>1.</td>
                                            <td>Nama Lengkap</td>
                                            <td><?= $riwayat->nama_pegawai ?></td>
                                            <td rowspan="4" class="text-center" width="220">
                                                <img src="<?= base_url('upload/pegawai/') . $riwayat->foto ?>" class="img-thumbnail">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2.</td>
                                            <td>Nomor Induk Pegawai</td>
                                            <td><?= $riwayat->nip ?></td>
                                        </tr>
                                        <tr>
                                            <td>3.</td>
                                            <td>Pangkat, Golongan/Ruang</td>
                                            <td><?= $riwayat->id_golongan ?></td>
                                        </tr>
                                        <tr>
                                            <td>4.</td>
                                            <td>Tempat, Tanggal Lahir</td>
                                            <td><?= $riwayat->tempat_lahir . ", " . $riwayat->tanggal_lahir ?></td>
                                        </tr>
                                        <tr>
                                            <td>5.</td>
                                            <td>Jenis Kelamin</td>
                                            <td colspan="2"><?= $riwayat->jenis_kelamin ?></td>
                                        </tr>
                                        <tr>
                                            <td>6.</td>
                                            <td>Agama</td>
                                            <td colspan="2"><?= $riwayat->agama ?></td>
                                        </tr>
                                        <tr>
                                            <td>7.</td>
                                            <td>Status Perkawinan</td>
                                            <td colspan="2"><?= $riwayat->status_kawin ?></td>
                                        </tr>
                                        <tr>
                                            <td>8.</td>
                                            <td>Alamat Rumah</td>
                                            <td colspan="2"><?= $riwayat->alamat ?></td>
                                        </tr>
                                        <tr>
                                            <td>9.</td>
                                            <td>Nomor Telepon</td>
                                            <td colspan="2"><?= $riwayat->telepon ?></td>
                                        </tr>
                                        <tr>
                                            <td>10.</td>
                                            <td>Alamat Email</td>
                                            <td colspan="2"><?= $riwayat->email ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <h5 class="mt-3 mb-3">II. PENDIDIKAN</h5>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <td>No.</td>
                                            <td>Tingkat</td>
                                            <td>Nama Pendidikan</td>
                                            <td>Jurusan</td>
                                            <td>STTB/Ijazah Tahun</td>
                                            <td>Tempat</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($pendidikan as $p) :
                                            $no++; ?>
                                            <tr>
                                                <td width="1">
                                                    <?= $no ?>.
                                                </td>
                                                <td>
                                                    <?= $p['tingkat_pendidikan'] ?>
                                                </td>
                                                <td>
                                                    <?= $p['sekolah'] ?>
                                                </td>
                                                <td>
                                                    <?= $p['jurusan'] ?>
                                                </td>
                                                <td>
                                                    <?= $p['tanggal_lulus'] ?>
                                                </td>
                                                <td>
                                                    <?= $p['tempat_sekolah'] ?>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                            <h5 class="mt-3">III. RIWAYAT PEKERJAAN</h5>
                            <h6 class="mb-3">1. Riwayat Kepangkatan</h6>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <td>No.</td>
                                            <td>Pangkat</td>
                                            <td>Golongan</td>
                                            <td>TMT</td>
                                            <td>Nomor & Tanggal SK Pangkat</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($r_pekerjaan as $p) :
                                            $no++; ?>
                                            <tr>
                                                <td width="1">
                                                    <?= $no ?>.
                                                </td>
                                                <td>
                                                    <?= $p['golongan'] ?>
                                                </td>
                                                <td>
                                                    <?= $p['uraian'] ?>
                                                </td>
                                                <td>
                                                    <?= $p['tanggal_mulai'] ?>
                                                </td>
                                                <td>
                                                    <?= $p['nomor_sk'] ?>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                            <h6 class="mt-3 mb-3">2. Riwayat Jabatan</h6>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <td>No.</td>
                                            <td>Nama Jabatan</td>
                                            <td>Mulai & Sampai Dengan</td>
                                            <td>Nomor & Tanggal SK Jabatan</td>
                                            <td>Capaian Prestasi</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($r_jabatan as $row) :
                                            $no++; ?>
                                            <tr>
                                                <td width="1">
                                                    <?= $no ?>.
                                                </td>
                                                <td>
                                                    <?= $row['jabatan'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['tanggal_mulai'] . " - " . $row['tanggal_selesai'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['nomor_sk'] ?>
                                                </td>
                                                <td>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                            <h5 class="mt-3 mb-3">IV. TANDA JASA/PENGHARGAAN/PRESTASI YANG MENONJOL</h5>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <td>No.</td>
                                            <td>Nama Bintang/Satyalencana/ Penghargaan/Prestasi</td>
                                            <td>Tahun Perolehan</td>
                                            <td>Keterangan</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($penghargaan as $row) :
                                            $no++; ?>
                                            <tr>
                                                <td width="1">
                                                    <?= $no ?>.
                                                </td>
                                                <td>
                                                    <?= $row['nama_penghargaan'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['tanggal_sk'] ?>
                                                </td>
                                                <td>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                            <h5 class="mt-3 mb-3">V. PENGALAMAN DALAM KONFERENSI/SIMPOSIUM/FORUM DALAM DAN LUAR NEGERI</h5>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <td>No.</td>
                                            <td>Nama Konferensi/Forum, Tempat & Tanggal</td>
                                            <td>Peran</td>
                                            <td>Negara</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($seminar as $row) :
                                            $no++; ?>
                                            <tr>
                                                <td width="1">
                                                    <?= $no ?>.
                                                </td>
                                                <td>
                                                    <?= $row['judul'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['peran'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['negara'] ?>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                            <h5 class="mt-3">VI. KETERANGAN KELUARGA</h5>
                            <h6 class="mb-3">1. Istri/Suami</h6>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <td>No.</td>
                                            <td>Nama</td>
                                            <td>Tempat, Tanggal Lahir</td>
                                            <td>Tanggal Menikah</td>
                                            <td>Pekerjaan</td>
                                            <td>Keterangan</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($keluarga as $row) :
                                            $no++; ?>
                                            <tr>
                                                <td width="1">
                                                    <?= $no ?>.
                                                </td>
                                                <td>
                                                    <?= $row['nama_anggota_keluarga'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['tempat_lahir'] . ", " . $row['tanggal_lahir'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['tanggal_nikah'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['pekerjaan'] ?>
                                                </td>
                                                <td>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                            <h6 class="mt-3 mb-3">2. Anak</h6>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <td>No.</td>
                                            <td>Nama</td>
                                            <td>Tempat, Tanggal Lahir</td>
                                            <td>Jenis Kelamin</td>
                                            <td>Pekerjaan</td>
                                            <td>Keterangan</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        foreach ($anak as $row) :
                                            $no++; ?>
                                            <tr>
                                                <td width="1">
                                                    <?= $no ?>.
                                                </td>
                                                <td>
                                                    <?= $row['nama_anggota_keluarga'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['tempat_lahir'] . ", " . $row['tanggal_lahir'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['jenis_kelamin'] ?>
                                                </td>
                                                <td>
                                                    <?= $row['pekerjaan'] ?>
                                                </td>
                                                <td>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- /.container-fluid -->

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