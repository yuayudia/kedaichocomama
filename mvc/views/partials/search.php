<div class="text-center btl bbl bg-white" style="width: 50px;height: 40px;">
    <i class="fa fa-search cl" aria-hidden="true" style="line-height: 40px"></i>
</div>
<div style="width: calc(100% - 150px);height: 40px;background: red">
    <input id="inputSearch" placeholder="Tulis menu yang kamu cari" style="width: 100%;height: 100%;border:0;outline: none;">
</div>
<div class="p-1 btr bbr bg-white" style="width: 100px;height: 40px;">
    <div class="btn bg" style="width: 100%;height: 100%">
        <p class="font-weight-bold text-white" style="margin-top: -4px">Cari</p>
    </div>
</div>

<div id="searchResult" class="bg-white p-2" style="width: 100%;position: absolute;margin-top: 40px;border-radius: 8px;display: none;">

</div>

<script type="text/javascript">
    $('#inputSearch').on('keyup',function(){
        $inputSearch = $(this).val();
        if($inputSearch == ''){
          $('#searchResult').html('');
          $("#searchResult").hide();
      }else{
        $.ajax({
            method: "get",
            url: './ApiController/Search/'+$inputSearch+'',
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json'
          },
          success: function (data) {
            var searchResultAjax = ''; 
            data = JSON.parse(data);
            // console.log(data);

            if(data.length==0){
                $("#searchResult").hide();
            } else{
               $("#searchResult").show();
           }
           for(let i = 0; i < data.length; i++) {
            var prinfImage;
            var imageLink = data[i].image;
            var imageLinkcut = imageLink.split(",",1);

           
            searchResultAjax+=`<a href="./detail/page/`+data[i].id+`" style="text-decoration:none;color:black"><div class="mt-2" style="width: 100%;height: 70px;display: flex;">
            <div style="width: 70px;height: 70px;">
            <img src="./public/images/product/`+imageLinkcut+`" width="100%" height="100%" style="object-fit: contain">
            </div>
            <div class="pl-2" style="width: calc(100% - 70px);height: 70px;">
            <p class="font-weight-bold mb-0" style="overflow: hidden;max-height: 25px">`+data[i].title+` </p>
             <div style="clear: both;"></div>
            </div>
            </div></a>`; 
        } 
        $('#searchResult').html(searchResultAjax);
    }
});
    }   
})
</script>