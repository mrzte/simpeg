<!DOCTYPE html>
<html lang="en">

<head>
	<title><?= $title; ?></title>
	<?php $this->load->view("admin/_partials/head.php") ?>
</head>

<body id="page-top">

	<?php $this->load->view("admin/_partials/navbar.php") ?>
	<div id="wrapper">

		<?php $this->load->view("admin/_partials/sidebar.php") ?>

		<div id="content-wrapper">

			<div class="container-fluid">

				<?php $this->load->view("admin/_partials/breadcrumb.php") ?>

				<!-- DataTables -->
				<div class="card mb-3">
					<div class="card-header">
						<a href="<?php echo site_url('admin/jabatan/add') ?>"><i class="fas fa-plus"></i> Tambah Jabatan</a>
					</div>
					<div class="card-body">

						<div class="table-responsive">
							<table class="table table-hover table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th>No</th>
										<th>Jabatan</th>
										<th>Deskripsi</th>
										<th>Opsi</th>
									</tr>
								</thead>
								<tbody>
									<?php
									$no = 0;
									foreach ($jabatan as $jabatan) :
										$no++; ?>
										<tr>
											<td>
												<?= $no ?>.
											</td>
											<td>
												<?php echo $jabatan->jabatan ?>
											</td>
											<td>
												<?php echo $jabatan->deskripsi ?>
											</td>
											<td width="80" class="text-center">
												<a href="<?php echo site_url('admin/jabatan/edit/' . $jabatan->id_jabatan) ?>" class="btn btn-small"><i class="fas fa-edit"></i> Edit</a>
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