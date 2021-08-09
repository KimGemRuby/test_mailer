# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_setting = {
    :user_name => ENV['SENDGRID_LOGIN'],
    :password => ENV['SENDGRID_PWD'],
    :domain => 'monsite.fr',
    :adresse => 'smtp.sendgrid..net',
    :port => 587,
}