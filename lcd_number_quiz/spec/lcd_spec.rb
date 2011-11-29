require_relative '../lib/lcd'

module Kernel
  def capture_stdout(&block)
    original_stdout = $stdout
    $stdout = fake = StringIO.new
    begin
      yield
    ensure
      $stdout = original_stdout
    end
    fake.string
  end
end

describe LCD do
  it "Should accept number arguments" do
    lcd = LCD.new(12345)
    lcd.numbers.should == 12345
  end

  it "Should default a size argument to 2" do
    lcd = LCD.new(12345)
    lcd.display_size.should == 2
  end

  it "Should accept a display size" do
    lcd = LCD.new(12345,9)
    lcd.display_size.should == 9
  end

  it "Should print the numbers that were added during initialization" do
    output = capture_stdout do
      lcd = LCD.new(12345)
      lcd.start
    end 
    output.should == "12345"
  end
end

