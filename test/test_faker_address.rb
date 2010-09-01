require File.dirname(__FILE__) + '/test_helper.rb'

class TestFaker < Test::Unit::TestCase

  def setup
    @tester = Faker::Address
  end
  
  def test_strict_postcode
    200.times do
      assert @tester.uk_postcode(:strict => true) =~ /(GIR 0AA|[A-PR-UWYZ]([0-9]{1,2}|([A-HK-Y][0-9]|[A-HK-Y][0-9]([0-9]|[ABEHMNPRV-Y]))|[0-9][A-HJKPS-UW]) [0-9][ABD-HJLNP-UW-Z]{2})/
    end
  end
end
