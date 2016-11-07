require('minitest/autorun')
require('minitest/rg')
require_relative('person')

class TestPerson < Minitest::Test
  def setup
    @person = Person.new('Brian', 32)
    @passenger1 = Person.new('Tom',25)
    @passenger2 = Person.new('Dick',30)
  end

def test_person_age
assert_equal(32, @person.age)  
end



end

