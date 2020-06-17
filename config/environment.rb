# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['postmaster@sandbox1246206e8d924932899ba353168ea9e7.mailgun.org'],
  :password => ENV['87b0dea4f3d3d6d3d36514cb3fb678ed-1b6eb03d-5ff68913'],
  :domain => 'sandbox1246206e8d924932899ba353168ea9e7.mailgun.org',
  :address => 'smtp.mailgun.org',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
