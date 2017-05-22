# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
#ActionMailer::Base.register_template_extension('haml')
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address        => 'smtp.gmail.com',
:domain         => 'gmail.com',
:port           => 587,
:user_name      => 'vova1997012@gmail.com',
:password       => 'zeusxlogan1715',
:authentication => :plain,
:enable_starttls_auto => true
}
