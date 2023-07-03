# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

#ActionMailer::Base.delivery_method = :smtp 
#ActionMailer::Base.perform_deliveries = true
#ActionMailer::Base.smtp_settings = { 
    #address: 
    #port: 
    #user_name: ENV
#}