require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "pay_info_email" do
    mail = OrderMailer.pay_info_email
    assert_equal "Pay info email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
