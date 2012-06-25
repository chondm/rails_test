 
window.promotion = {
  setup: function(options){
  	this.businessPromotionSection = $('.businesses-promotions-section');
    this.selectBusinessSection = this.businessPromotionSection.find('.businesses-select');
    this.selectProductBundlesSection = this.businessPromotionSection.find('.product-bundles-select');
    //stubs to add manual class
    this.businessPromotionSection.find(".fields").first().addClass("left");
    //init change event of business dropdow list
    this.selectBusiness(options["path"]);
    this.selectProductBundles(options["path"]);
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
	      	  var currentId = target.parent().attr("data-object-id");
	      	  var currentObject = promotion.businessPromotionSection.find("div[data-object='business-promotion-" + currentId + "']");
            currentObject.find(".retail-price-value").html(res["retail_price"]);
			  currentObject.find(".discounted-price-value").html(res["discounted_price"]);
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
						var currentId = target.parent().attr("data-object-id");
			      var currentObject = promotion.businessPromotionSection.find("div[data-object='business-promotion-" + currentId + "']");
						var selectProductBundle = currentObject.find(".product-bundles-select").find("select");
						selectProductBundle.html(options);
						currentObject.find(".retail-price-value").html(res["retail_price"]);
			    	currentObject.find(".discounted-price-value").html(res["discounted_price"]);
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
