require 'test_helper'

class NumberTest < ActiveSupport::TestCase
  test 'value attr exists' do
    num = Number.new(value: 4)
    assert num.valid?
  end

  test 'value attr doesnt exists' do
    num = Number.new
    assert num.valid? == false
  end

  test 'value attr is negative' do
    num = Number.new(value: -7)
    assert num.valid? == false
  end
end
