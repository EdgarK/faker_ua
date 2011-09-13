require File.dirname(__FILE__) + '/test_helper.rb'

class TestFakerName < Test::Unit::TestCase

  def setup
    @tester = Faker::Name
  end
  
  def test_name
    assert @tester.name.match(/(\w+\.? ?){2,3}/)
  end
  
  def test_prefix
    assert @tester.prefix.match(/[A-Z][a-z]+\.?/)
  end
  
  def test_suffix
    assert @tester.suffix.match(/[A-Z][a-z]*\.?/)
  end

  def test_ua_first_name
    puts @tester.ua_first_name
    assert @tester.ua_first_name.match(/[А-Я][А-Я]*/)
  end

  def test_ua_last_name
    puts @tester.ua_first_name
    assert @tester.ua_last_name.match(/[А-Я][А-Я]*/)
  end

  def test_ua_genetive_last_name
    puts @tester.ua_genitive_last_name
    assert @tester.ua_genitive_last_name.match(/[А-Я][А-Я]*/)
  end

  def test_ua_genitive_last_name
    puts @tester.ua_genitive_name
    assert @tester.ua_genitive_name.match(/[А-Я][А-Я]*/)
  end

  def test_ua_surname
    puts @tester.ua_surname("Азалія")
    #assert @tester.ua_genitive_name.match(/[А-Я][А-Я]*/)
  end

end
