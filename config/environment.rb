# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
  :port           => 587,
  :address        => smtp.sendgrid.net,
  :user_name      => apikey,
  :password       => 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,
  :domain         => 'ldc-shop-new.heroku.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp
