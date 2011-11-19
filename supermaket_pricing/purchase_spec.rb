describe Purchase do

  it "Should has products" do
    purchase = Purchase.new
    purchase.items.must_exist
  end

  it "Should be able to recognize if any of the items is on sale" do
    purchase = Purchase.new
    purchase.sale_items.must_exist
  end

  it "Should figure out if a sale requirement has been reached" do
    product = Product.new(:on_sale => true)
    product.sale_formula.requirements_reached?.must_equal true
  end

  it "Should perform sale formula if requirements have been reached" do
    
  end

end
