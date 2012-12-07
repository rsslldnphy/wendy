require 'spec_helper'

class TestWender
  include Wendy

  def square(x)
    x * x
  end

  def double(x)
    x + x
  end

  def add(x, y)
    x + y
  end

  def wend_test
    wend(5).through(:square).and(:double).and_return
  end

  def wend_test_with_arg
    wend(5).through(:square).and(:double).and(:add, 15).and_return
  end

end

describe Wendy do

  let(:wender) { TestWender.new }

  it 'allows method chaining' do
    wender.wend_test.should eq 50
  end

  it 'passes additional arguments to methods in the chain' do
    wender.wend_test_with_arg.should eq 65
  end

end
