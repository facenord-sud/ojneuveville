require "spec_helper"

describe UserMailer do
  describe "Send confirmation email" do
  	it "Should be send with correct email adresse"

    # Send the email, then test that it got queued
    #email = UserMailer.registration_confirmation(User.new).deliver
    #assert !ActionMailer::Base.deliveries.empty?
 
    # Test the body of the sent email contains what we expect it to
    #assert_equal [user.email], email.to
    #assert_equal "Welcome to My Awesome Site", email.subject
    #assert_match(/<h1>Welcome to example.com, #{user.name}<\/h1>/, email.encoded)
    #assert_match(/Welcome to example.com, #{user.name}/, email.encoded)
  end
end
