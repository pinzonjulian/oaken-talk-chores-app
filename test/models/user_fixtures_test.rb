require "test_helper"

class UserFixturesTest < ActiveSupport::TestCase
  fixtures :all

  test "email" do
    assert_equal users(:bluey).email, "bluey@fixtures.com"
    users(:bluey).update! email: "notbluey@fixtures.com"
    assert_equal users(:bluey).email, "notbluey@fixtures.com"
  end

  test "transactional fixtures/seeds work!" do
    assert_equal users(:bluey).email, "bluey@fixtures.com"
  end
end
