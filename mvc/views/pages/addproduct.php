
<div id="body--box__pc" style="height: 100vh;width: 100%;margin: auto;padding-top: 90px">
	<div class="float-left" style="width: 100%;height: 100vh;">
		<div class="container-fluid p-0" style="height: calc(100vh - 100px);display: flex;">
			<?php include("./mvc/views/partials/admin-menu.php"); ?>  
			<div class="p-2" style="width: calc(100% - 220px);height: 100%;">
				<div class="m-0 pl-2 pt-2" style="width: 100%">
					<p class="font-weight-bold mb-1" style="font-size: 150%">Add Product</p>
				</div>
				<form action="../AddProduct/AddProductPost" method="post" enctype="multipart/form-data">
					<div class="row m-0 p-2">
						<div class="col-3 p-2">
							<label class="font-weight-bold">Title</label>
							<input type="text" name="title" class="form-control" required>
						</div>
						

						
						
						<div class="col-3 p-2">
							<label class="font-weight-bold">Harga</label>
							<input type="number" name="price" class="form-control" required>
						</div>
						<div class="col-3 p-2">
							<label class="font-weight-bold">Tambah Gambar</label>
							<input type="file" name="upload[]" multiple>
						</div>
						<div class="col-3 p-2">
							<label class="font-weight-bold">Background</label>
							<select class="form-control" name="background" >
								<option value="1.jpg">Background 1</option>
								<option value="2.jpg">Background 2</option>
								<option value="3.jpg">Background 3</option>
							</select>
						</div>
						<div class="col-9 p-2">
							<label class="font-weight-bold">Deskripsi Menu</label>
							<textarea class="form-control" name="content" required></textarea>
						</div>
						<div class="col-12">
							<button type="submit" class="btn bg float-right text-white">Add Product</button>
						</div>
					</div>
				</form>
			</div>
		</div>	



	</div>
</div>


