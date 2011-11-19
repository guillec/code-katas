describe Product do
  
  it 'should have a price' do
    it = Product.new
    it.price.must_exist
  end
  
  it 'can have be on sale' do
    it = Product.new
    it.on_sale?.must_exit
  end

  it 'will have a formula if the item is on sale' do
    it = Product.new(:on_sale => true)
    it.on_sale?.muxt_equal true
    it.sale_formula.must_exist
  end




end
