require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@category = Category.new(name: "sports")
  end
  test 'name should be present' do
  	@category.name = " "
  	assert_not @category.valid?
  end
end
