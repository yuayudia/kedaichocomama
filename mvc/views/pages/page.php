<?php 
$row = mysqli_fetch_array($data["Detail"]);


?>

<div class="container" style="padding-top: 105px">
	<div style="width: 100%;">
		<div class="row m-0">
			<?php include("./mvc/views/partials/page-image-slide.php"); ?>
			<div class="col-12 col-md-6 col-lg-8 p-3">
				<p class="font-weight-bold mb-0" style="font-size: 130%"><?php echo $row['title']; ?></p>
				
				<p><?php echo $row['content']; ?></p>
								
				<p class="mt-4 font-weight-bold mb-0 float-right" style="font-size: 200%">Rp.<?php echo $row['price']; ?></p>
				<div style="clear: both;"></div>

				<div onclick="addToCart(<?php echo $row['id']; ?>,`<?php echo $row['name']; ?>`,`<?php echo $row['image']; ?>`,<?php echo $row['price']; ?>)" class="btn bg mt-3 text-white float-right ml-2"><i class="fa fa-shopping-basket text-white " aria-hidden="true"></i></div>
				<a href="../../payment/checkout">
					<div class="btn bg mt-3 text-white float-right">Beli <i class="fa fa-hand-paper-o ml-1" aria-hidden="true"></i></div>
				</a>
				<div style="clear: both;"></div>
			</div>
		</div>
	</div>
</div>
<style type="text/css">
	.post--box:hover{
		transform: scale(1.02);
		transition: 0.3s;
	}
</style>
<div class="container pl-2 pr-2 pt-3 pb-5">
	<p class="font-weight-bold ml-1 mb-1" style="font-size: 180%">Recomendasi buat kamu nihh!!!</p>
	<div class="row m-0">		
		<?php include("./mvc/views/partials/page-relate-post.php"); ?> 
	</div>
</div>

<script type="text/javascript">
	function addToCart(id,name,image,price){
		var cart =JSON.parse(localStorage.getItem('cart'));
		console.log(id,name,image,price);
		var checkCart=0;
		var quanlity = 1;
		if(cart.length > 0){
			for(let i = 0; i < cart.length; i++) {
				if (id == cart[i].id) {
					cart[i].quanlity++;
					localStorage.setItem("cart", JSON.stringify(cart));
					cartPrinf();
					checkCart=1;
					break;
				}else {
					checkCart=0;
				}
			}
		}else {
			checkCart=0;
		}
		if(checkCart == 0){
			var addToCart = {id,name,image,price,quanlity};
			cart.push(addToCart);
			localStorage.setItem("cart", JSON.stringify(cart));
			cartPrinf();
		}
	}
</script>