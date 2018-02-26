require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "registration_confimation" do
    mail = ContactMailer.registration_confimation
    assert_equal "Registration confimation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
