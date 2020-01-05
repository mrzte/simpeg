<!DOCTYPE html>
<html>

<head>
    <title><?= $title; ?></title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>

    <div class="text-center mb-4">
        <h1 class="h3"><?= $title; ?></h1>
    </div>

    <table class="table table-striped table-bordered" cellspacing="0">
        <thead>
            <tr>
                <th class="text-center" colspan="3">I. KETERANGAN PERORANGAN</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1.</td>
                <td>Nama Lengkap</td>
                <td><?= $riwayat->nama_pegawai ?></td>
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
                <td><?= $riwayat->jenis_kelamin ?></td>
            </tr>
            <tr>
                <td>6.</td>
                <td>Agama</td>
                <td><?= $riwayat->agama ?></td>
            </tr>
            <tr>
                <td>7.</td>
                <td>Status Perkawinan</td>
                <td><?= $riwayat->status_kawin ?></td>
            </tr>
            <tr>
                <td>8.</td>
                <td>Alamat Rumah</td>
                <td><?= $riwayat->alamat ?></td>
            </tr>
            <tr>
                <td>9.</td>
                <td>Nomor Telepon</td>
                <td><?= $riwayat->telepon ?></td>
            </tr>
            <tr>
                <td>10.</td>
                <td>Alamat Email</td>
                <td><?= $riwayat->email ?></td>
            </tr>
        </tbody>
    </table>
    <table class="table table-striped table-bordered mt-4" cellspacing="0">
        <thead>
            <tr>
                <th class="text-center" colspan="6">II. PENDIDIKAN</th>
            </tr>
        </thead>
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
    <table class="table table-striped table-bordered" cellspacing="0">
        <thead>
            <tr>
                <th class="text-center" colspan="5">III. RIWAYAT PEKERJAAN</th>
            </tr>
            <tr>
                <th colspan="5" class="h6">1. Riwayat Kepangkatan</th>
            </tr>
        </thead>
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
    <table class="table table-striped table-bordered" cellspacing="0">
        <thead>
            <tr>
                <th colspan="5" class="h6">2. Riwayat Jabatan</th>
            </tr>
        </thead>
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
    <table class="table table-striped table-bordered" cellspacing="0">
        <thead>
            <tr>
                <th class="text-center" colspan="4">IV. TANDA JASA/PENGHARGAAN/PRESTASI YANG MENONJOL</th>
            </tr>
        </thead>
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
    <table class="table table-striped table-bordered" cellspacing="0">
        <thead>
            <tr>
                <th class="text-center" colspan="4">V. PENGALAMAN DALAM KONFERENSI/SIMPOSIUM/FORUM DALAM DAN LUAR NEGERI</th>
            </tr>
        </thead>
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
    <table class="table table-striped table-bordered" cellspacing="0">
        <thead>
            <tr>
                <th class="text-center" colspan="6">VI. KETERANGAN KELUARGA</th>
            </tr>
            <tr>
                <th colspan="6" class="h6">1. Istri/Suami</th>
            </tr>
        </thead>
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
    <table class="table table-striped table-bordered" cellspacing="0">
        <thead>
            <tr>
                <th colspan="6" class="h6">2. Anak</th>
            </tr>
        </thead>
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

</body>

</html>