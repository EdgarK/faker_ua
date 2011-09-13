# coding: utf-8
require File.dirname(__FILE__) + '/test_helper.rb'

class TestFakerUaAddress < Test::Unit::TestCase

  def test_ua_area
    puts Faker::Address.ua_area
    assert Faker::Address.ua_area.match(/[А-Я][ А-Яа-я]+/)
  end

  def test_ua_street_name
    puts Faker::Address.ua_street_name
    assert Faker::Address.ua_street_name.match(/[а-я.]+ [А-Я][а-я]+/)
  end

  def test_ua_city_name
    puts Faker::Address.ua_city
    assert Faker::Address.ua_city.match(/[А-Я][-а-я]+./)
  end

  def test_ua_street_assress
    puts Faker::Address.ua_street_address
    assert Faker::Address.ua_street_address.match(/буд\. \d+ [а-я.]+ [А-Я][а-я]+/)
  end

end