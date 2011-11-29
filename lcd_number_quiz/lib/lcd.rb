class LCD
  attr_reader :numbers, :display_size
  def initialize(numbers, display_size=2)
    @numbers = numbers
    @display_size=display_size
  end

  def start
    print numbers
  end
end
