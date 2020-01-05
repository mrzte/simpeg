<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $title; ?></title>
    <?php $this->load->view("admin/_partials/head.php"); ?>
    <link rel="stylesheet" href="<?= base_url('css/jquery.jOrgChart.css'); ?>" />
    <link rel="stylesheet" href="<?= base_url('css/org-chart-custom.css'); ?>" />
    <script src="<?php echo base_url('assets/jquery/jquery.min.js') ?>"></script>
    <script>
        jQuery(document).ready(function() {
            $("#org").jOrgChart({
                chartElement: '#chart',
                dragAndDrop: true
            });
        });
    </script>
</head>

<body id="page-top">
    <?php

    function GenerateDataArray($arr, $parent = 0)
    {
        $pages = array();
        foreach ($arr as $page) {
            if ($page->id_parent == $parent) {
                $page->sub = isset($page->sub) ? $page->sub : GenerateDataArray($arr, $page->id);
                $pages[] = $page;
            }
        }
        return $pages;
    }
    $dataarray = GenerateDataArray($details, 1);

    function SelectData($arr, $id)
    {
        $iurut = 0;
        foreach ($arr as $key => $value) {
            //print_r($value);
            if (($value->id) <> $id)
                \array_splice($arr, $iurut, 1);
            else
                $iurut++;
        }
        return $arr;
    }
    $dataarray = SelectData($dataarray, $id);
    function GenerateDataHTML($details, $top = 'true')
    {
        $html = '';
        foreach ($details as $page) {
            if (is_array($page->sub) && !empty($page->sub)) {
                $html .= "<li>\n";
                $html .= "<div>
                            <img class=\"center-cropped\" src=" . base_url('upload/pegawai/') . (!empty($page->foto) ? ($page->foto) : ('default.jpg')) . " />
                          </div>
                          <div class=\"jabatan\">
                            <p>
                                <a href=\"#\">" . ucwords(strtolower($page->jabatan)) . "</a>
                            </p>
                          </div>
                          <div class=\"pegawai\">
                            <p>
                                <a href=" . site_url('pegawai/riwayat/details/') . $page->idp . ">" . $page->nama_pegawai . "</a>
                            </p>
                          </div>";
                $html .= "<ul>" . GenerateDataHTML($page->sub, false) . "</ul>\n";
                $html .= "</li>\n";
            } else {
                $html .= "<li>
                            <div>
                                <img class=\"center-cropped\" src=" . base_url('upload/pegawai/') . (!empty($page->foto) ? ($page->foto) : ('default.jpg')) . " />
                            </div>
                            <div class=\"jabatan\">
                                <p>
                                    <a href=\"#\">" . ucwords(strtolower($page->jabatan)) . "</a>
                                </p>
                            </div>
                            <div class=\"pegawai\">
                                <p>
                                    <a href=" . site_url('pegawai/riwayat/details/') . $page->idp . ">" . $page->nama_pegawai . "</a>
                                </p>
                            </div>
                          </li>";
            }
        }
        return $html;
    }
    ?>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php $this->load->view("admin/_partials/sidebar.php"); ?>

        <?php $this->load->view("admin/_partials/topbar.php"); ?>

        <!-- Begin Page Content -->
        <div class="container-fluid">

            <?php $this->load->view("admin/_partials/breadcrumb.php"); ?>

            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Struktur Organisasi</h1>
            </div>
            <div class="row">
                <div class="col-lg">
                    <div class="card shadow">
                        <div class="card-header py-3 d-sm-flex justify-content-between">
                            <a class="mb-0 font-weight-bold text-dark"><?= $title; ?> Eselon 2</a>
                            <a href="<?= site_url('organisasi/struktur') ?>" class="btn btn-sm btn-primary shadow-sm">
                                <i class="fas fa-arrow-left fa-sm"></i>
                                Eselon 1
                            </a>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <ul id="org">
                                    <?php echo GenerateDataHTML($dataarray); ?>
                                </ul>
                                <div id="chart" class="orgChart"></div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <small>
                                Struktur Organisasi sampai <?= date('Y'); ?>
                            </small>
                        </div>
                    </div>
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
    <?php $this->load->view("admin/_partials/struktur_js.php") ?>

</body>

</html>