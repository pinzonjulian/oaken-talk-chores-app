require "test_helper"

class UserOakenTest < ActiveSupport::TestCase
  include Oaken::TestSetup

  test "email" do
    assert_equal users.bluey.email, "bluey@example.com"
    users.bluey.update! email: "notbluey@example.com"
    assert_equal users.bluey.email, "notbluey@example.com"
  end

  test "transactional fixtures/seeds work!" do
    assert_equal users.bluey.email, "bluey@example.com"
  end
end
