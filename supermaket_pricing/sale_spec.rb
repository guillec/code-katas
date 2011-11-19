describe Sale do
  it 'should have a based on attribute' do
    sale = Sale.new
    sale.based_on.must_exist
  end

  it 'should have amount of items if based on is quantity' do
    sale = Sale.new
    sale.based_on.must_equal 'quantity'
    sale.item_amount.must_exist
  end

  it 'should have a weight amount if based on is weight' do
    sale = Sale.new
    sale.weight_amount.must_exist
  end
  
  it 'should have a save percent' do
    sale = Sale.new
    sale.saving_percent.must_exist
  end
end
