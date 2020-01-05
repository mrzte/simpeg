<!DOCTYPE html>
<html lang="en">

<head>
	<title><?= $title; ?></title>
	<?php $this->load->view("admin/_partials/head.php") ?>
</head>

<body id="page-top">

	<?php $this->load->view("admin/_partials/topbar.php") ?>
	<div id="wrapper">

		<?php $this->load->view("admin/_partials/sidebar.php") ?>

		<div id="content-wrapper">

			<div class="container-fluid">

				<?php $this->load->view("admin/_partials/breadcrumb.php") ?>

				<!-- DataTables -->
				<div class="card mb-3">
					<div class="card-header">
						<a href="<?php echo site_url('admin/pegawai/add') ?>"><i class="fas fa-plus"></i> Tambah Pegawai</a>
						<a class="text-muted">#</a>
						<a class="text-muted">Semua data</a>
						<a class="text-muted">//</a>
						<a href="<?php echo site_url('admin/pegawai/staff') ?>">Belum punya jabatan</a>
					</div>
					<div class="card-body">

						<div class="table-responsive">
							<table class="table table-hover table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>No</th>
										<th>NIP</th>
										<th>Nama</th>
										<th>Jabatan</th>
										<th>Foto</th>
										<th>Opsi</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no = 0;
									foreach ($pegawai as $pegawai) :
										$no++; ?>
										<tr>
											<td>
												<?= $no ?>.
											</td>
											<td>
												<?php echo $pegawai->nip ?>
											</td>
											<td>
												<?php echo $pegawai->nama ?>
											</td>
											<td>
												<?php echo $pegawai->jabatan ?>
											</td>
											<td class="text-center">
												<img src="<?php echo base_url('upload/pegawai/' . $pegawai->image) ?>" width="128" />
											</td>
											<td class="text-center" width="170">
												<a href="<?php echo site_url('admin/pegawai/edit/' . $pegawai->id_pegawai) ?>" class="btn btn-small"><i class="fas fa-edit"></i> Edit</a>
												<a onclick="deleteConfirm('<?php echo site_url('admin/pegawai/delete/' . $pegawai->id_pegawai) ?>')" href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus</a>
											</td>
										</tr>
									<?php endforeach; ?>

								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
			<!-- /.container-fluid -->

			<!-- Sticky Footer -->
			<?php $this->load->view("admin/_partials/footer.php") ?>

		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->


	<?php $this->load->view("admin/_partials/scrolltop.php") ?>
	<?php $this->load->view("admin/_partials/modal.php") ?>

	<?php $this->load->view("admin/_partials/js.php") ?>

	<script>
		function deleteConfirm(url) {
			$('#btn-delete').attr('href', url);
			$('#deleteModal').modal();
		}
	</script>

</body>

</html>