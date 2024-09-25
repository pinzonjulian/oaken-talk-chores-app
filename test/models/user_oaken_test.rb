require "test_helper"

class UserOakenTest < ActiveSupport::TestCase
  include Oaken::TestSetup

  test "email" do
    assert_equal users.bluey.email, "bluey@oaken.com"
    users.bluey.update! email: "notbluey@oaken.com"
    assert_equal users.bluey.email, "notbluey@oaken.com"
  end

  test "transactional fixtures/seeds work!" do
    assert_equal users.bluey.email, "bluey@oaken.com"
  end
end
