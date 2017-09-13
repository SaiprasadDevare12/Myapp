require 'test_helper'

class LoginTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
     @username = Login.new(username: "Sai", password: "sai123")
  end
  
  test "Enter the Data" do
     assert :@username.valid?
  end
  
  test "Name should be present" do
     @username.username = " "
	 assert_not @username.valid?
  end
end
