require 'spec_helper'

class TestWender
  include Wendy

  def square(x)
    x * x
  end

  def double(x)
    x + x
  end

  def wend_test
    wend(5).through(:square).and(:double).and_return
  end

end

describe Wendy do

  it 'allows method chaining' do
    TestWender.new.wend_test.should eq 50
  end

end
