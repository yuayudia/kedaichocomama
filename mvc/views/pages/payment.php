
<div class="container" style="padding-top: 100px">
	<div style="width: 100%;">
	
		<p class="font-weight-bold ml-2" style="font-size: 150%">Bayar</p>
		<form action="../payment/info" method="post">
			
			<div class="row m-0">
				<div class="col-12 col-md-9 p-0">
					<p class="font-weight-bold mb-0 ml-2">INFO CUSTOMER</p>
					<div class="row m-0 pr-4">
						<input id="infocart" type="text" name="infocart" style="display: none;">
						<input id="total" name="total" style="display: none;">				
						<div class="col-12 col-sm-6 p-2">			
							<label>Name Lengkap</label>
							<input class="form-control" type="" name="name" required>
						</div>
						<div class="col-12 col-sm-6 p-2">			
							<label>E-mail / No. hp</label>
							<input class="form-control" type="" name="phone" required>
						</div>
						<div class="col-12 col-sm-6 p-2">			
							<label>Bawa Pulang / Makan disini ?</label>
							<select class="form-control" name="address">
							<option value="1">-- Silahkan Dipilih --</option>
								<option >Makan disini</option>
								<option >Bawa Pulang</option>
							</select>
						</div>
						<div class="col-12 col-sm-6 p-2">			
							<label>Nomer Meja / Note </label>
							<input class="form-control" type="" name="note" required>
							<label>*(nomor meja hanya untuk pesanan Makan Disini)</label>
						</div>
					</div>
					<p class="font-weight-bold mb-0 ml-2 mt-4">METODE PEMBAYARAN</p>
					<div class="row m-0 pr-4">				
						<div class="col-12 col-sm-6 p-2">								
							<select class="form-control" name="method">
						
								<option value="1">-- Pilih Metode Pembayaran --</option>
								<option value="2">OVO/DANA</option>
								<option value="3">Cash</option>
							</select>
						</div>
											
       					
						<div class="col-12 p-2">	
						<a href="/chocomama/home">		
							<button onclick="clearCart()" class="btn bg text-white" style="width: 100%">Bayar</button></a>
						
						</div>		
						
							
							
					</div>
				</div>
				<div class="col-12 col-md-3 p-0">
					<p class="font-weight-bold">Pesanan Saya</p>
					<div id="checkoutReviewPrinf">			
					</div>
					<div style="width: 100%;height: 1px;background: #ccc"></div>
					<?php while($row = mysqli_fetch_array($data["GetFee"])){ ?>
						<p  class="float-right mb-0" style="clear: right;"><?php echo $row["name"]; ?>: <?php echo $row["price"]; ?><?php if($row["name"] == 'delivery'){echo '$';}else{echo '%';} ?>
						
					</p>
					<p id="<?php echo $row['name']; ?>" style="display: none;"><?php echo $row["price"]; ?></p>
				<?php } ?>
				<p id="totalPrinf2" class="font-weight-bold float-right mt-1 mb-0" style="font-size: 130%;clear: right; ">Rp.</p>
			</div>
		</div>
	</form>
</div>
</div>
<script type="text/javascript">
	function clearCart() {
		cart = [];
		localStorage.setItem("cart", JSON.stringify(cart));
	}
	checkoutReviewPrinf();
	function checkoutReviewPrinf(){
		document.getElementById("checkoutReviewPrinf").innerHTML ='';
		var cart =JSON.parse(localStorage.getItem('cart'));
		var totalPrinf = 0;
		var Pajak = document.getElementById("Pajak").textContent;
		
		for(let i = 0; i < cart.length; i++) {
			var imageLink = cart[i].image;
			var imageLinkcut = imageLink.split(",",1);
			var checkoutReviewPrinf = `<div class="mb-2" style="width: 100%;height: 80px;display: flex;">
			<div style="width: 80px;height: 80px;">
			<img src="../public/images/product/`+imageLinkcut+`" width="100%" height="100%" style="object-fit: contain">
			</div>
			<div class="pl-1" style="width: calc(100% - 80px);height: 80px;">
			<p class="font-weight-bold mb-0">`+cart[i].name+`</p>
			
			<p class="mb-0 float-left" style="font-size: 80%;margin-top: -2px"><a>Jumlah : </a>`+cart[i].quanlity+`</p>		

			<div class="float-right font-weight-bold mb-0 mt-4" style="font-size: 125%">Rp. `+cart[i].price*cart[i].quanlity+`</div>
			</div>
			</div>`
			totalPrinf +=cart[i].price*cart[i].quanlity; 

			document.getElementById("checkoutReviewPrinf").innerHTML +=checkoutReviewPrinf;
		}
		$('#totalPrinf2').text(totalPrinf+(totalPrinf*Pajak/100));
		$('#total').val(totalPrinf+(totalPrinf*Pajak/100));
	}


	infoCartToDb();
	function infoCartToDb(){
		var cart =JSON.parse(localStorage.getItem('cart'));
		var totalPrinf = 0;
		for(let i = 0; i < cart.length; i++) {
			var imageLink = cart[i].image;
			var imageLinkcut = imageLink.split(",",1);
			var checkoutReviewPrinf = `<div class="mb-2" style="width: 100%;height: 80px;display: flex;">
			<div style="width: 80px;height: 80px;">
			<img src="../public/images/product/`+imageLinkcut+`" width="100%" height="100%" style="object-fit: contain">
			</div>
			<div class="pl-1" style="width: calc(100% - 80px);height: 80px;">
			
			<p class="font-weight-bold mb-0">`+cart[i].name+`</p>
			<p class="mb-0 float-left" style="font-size: 80%;margin-top: -2px"><a>Jumlah : </a>`+cart[i].quanlity+`</p>	

			<div class="float-right font-weight-bold mb-0 mt-4" style="font-size: 125%">Rp.`+cart[i].price*cart[i].quanlity+`</div>
			</div>
			</div>`
			document.getElementById("infocart").value +=checkoutReviewPrinf;
		}	
	}
</script>