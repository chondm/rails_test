 
window.promotion = {
  setup: function(options){
    this.selectBusinessSection = $('.businesses-promotions-section .businesses-select');
    this.selectProductBundlesSection = $('.businesses-promotions-section .product-bundles-select');
    //stubs to add manual class
    $(".businesses-promotions-section .fields").first().addClass("left");
    //init change event of business dropdow list
    this.selectBusiness(options["pathOfBusiness"]);
    this.selectProductBundles(options["pathOfProductBundle"]);
    $('.typeahead').typeahead()
  },
  selectProductBundles: function(path){
    this.selectProductBundlesSection.find("select").change(function(e){
      var productBundleId = $(this).val();
      var target = $(e.target);
      console.log(target)
      $.ajax({
	      type: 'GET',
	      url: path + "/" + productBundleId,
	      dataType: "json",
	      success: function(res, status) {
	      	if(status == "success"){
            target.parent().parent().next().find(".retail-price-value").html(res["retail_price"]);
						target.parent().parent().next().next().find(".discounted-price-value").html(res["discounted_price"]);
	      	}else{
            alert("Some thing went wrong. Please try again.");
	      	}
	      },
	      error: function(){
	      	alert("Some thing went wrong. Please try again.")
	      }
	    });
    })
  },
  selectBusiness: function(path){
  	
    this.selectBusinessSection.find("select").change(function(e){
      var businessId = $(this).val();
      var target = $(e.target);
      console.log(target)
      $.ajax({
	      type: 'GET',
	      url: path,
	      dataType: "json",
	      data: {"business_id" : businessId},
	      success: function(res, status) {
	      	if(status == "success"){
            var options = "";
						for (var i = 0; i < res["product_bundles"].length; i ++){
							var item = res["product_bundles"][i];
						  options+= "<option value=" + item[1]+">"+item[0]+"</option>";
						}
						var select_ = target.parent().parent().next().find("select");
						select_.html(options);
						target.parent().parent().next().next().find(".retail-price-value").html(res["retail_price"]);
						target.parent().parent().next().next().next().find(".discounted-price-value").html(res["discounted_price"]);
	      	}else{
            alert("Some thing went wrong. Please try again.");
	      	}
	      },
	      error: function(){
	      	alert("Some thing went wrong. Please try again.")
	      }
	    });
    })
  }

    
}
