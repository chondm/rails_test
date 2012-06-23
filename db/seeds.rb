
pb11 = ProductBundle.create({:name => "Product Bundle 11", :retail_price => 11, :discounted_price => 11})
pb12 = ProductBundle.create({:name => "Product Bundle 12", :retail_price => 12, :discounted_price => 12})
pb13 = ProductBundle.create({:name => "Product Bundle 13", :retail_price => 13, :discounted_price => 13})
pb14 = ProductBundle.create({:name => "Product Bundle 14", :retail_price => 14, :discounted_price => 14})
pb15 = ProductBundle.create({:name => "Product Bundle 15", :retail_price => 15, :discounted_price => 15})

pb21 = ProductBundle.create({:name => "Product Bundle 21", :retail_price => 21, :discounted_price => 21})
pb22 = ProductBundle.create({:name => "Product Bundle 22", :retail_price => 22, :discounted_price => 22})
pb23 = ProductBundle.create({:name => "Product Bundle 23", :retail_price => 23, :discounted_price => 23})
pb24 = ProductBundle.create({:name => "Product Bundle 24", :retail_price => 24, :discounted_price => 24})
pb25 = ProductBundle.create({:name => "Product Bundle 25", :retail_price => 25, :discounted_price => 25})

pb31 = ProductBundle.create({:name => "Product Bundle 31", :retail_price => 31, :discounted_price => 31})
pb32 = ProductBundle.create({:name => "Product Bundle 32", :retail_price => 32, :discounted_price => 32})
pb33 = ProductBundle.create({:name => "Product Bundle 33", :retail_price => 33, :discounted_price => 33})
pb34 = ProductBundle.create({:name => "Product Bundle 34", :retail_price => 34, :discounted_price => 34})
pb35 = ProductBundle.create({:name => "Product Bundle 35", :retail_price => 35, :discounted_price => 35})

pb41 = ProductBundle.create({:name => "Product Bundle 41", :retail_price => 41, :discounted_price => 41})
pb42 = ProductBundle.create({:name => "Product Bundle 42", :retail_price => 42, :discounted_price => 42})
pb43 = ProductBundle.create({:name => "Product Bundle 43", :retail_price => 43, :discounted_price => 43})
pb44 = ProductBundle.create({:name => "Product Bundle 44", :retail_price => 44, :discounted_price => 44})
pb45 = ProductBundle.create({:name => "Product Bundle 45", :retail_price => 45, :discounted_price => 45})

pb51 = ProductBundle.create({:name => "Product Bundle 51", :retail_price => 51, :discounted_price => 51})
pb52 = ProductBundle.create({:name => "Product Bundle 52", :retail_price => 52, :discounted_price => 52})
pb53 = ProductBundle.create({:name => "Product Bundle 53", :retail_price => 54, :discounted_price => 54})
pb54 = ProductBundle.create({:name => "Product Bundle 54", :retail_price => 54, :discounted_price => 54})
pb55 = ProductBundle.create({:name => "Product Bundle 55", :retail_price => 55, :discounted_price => 55})

bs1 = Business.create({:name => "Business 1", :product_bundles => [pb11, pb12, pb13, pb14, pb15]})
bs2 = Business.create({:name => "Business 2", :product_bundles => [pb21, pb22, pb23, pb24, pb25]})
bs3 = Business.create({:name => "Business 3", :product_bundles => [pb31, pb32, pb33, pb34, pb35]})
bs4 = Business.create({:name => "Business 4", :product_bundles => [pb41, pb42, pb43, pb44, pb45]})
bs5 = Business.create({:name => "Business 5", :product_bundles => [pb51, pb52, pb53, pb54, pb55]})


bp1 = BusinessesPromotion.create({:business => bs1, :product_bundle => pb11})
bp2 = BusinessesPromotion.create({:business => bs2, :product_bundle => pb21})
Promotion.create({:name => "Promotion 1",
	              :start_date => Time.now,
	              :end_date => Time.now + 10.days,
	              :title => "Title 1",
	              :sub_title => "Sub Title 1",
	              :subject => "Subject 1",
	              :description => "Description 1",
	              :businesses_promotions => [bp1, bp2]})