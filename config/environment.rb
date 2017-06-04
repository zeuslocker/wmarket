# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
#ActionMailer::Base.register_template_extension('haml')
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
address: 'smtp.yandex.ru',
domain: 'yandex.ru',
port: 587,
authentication: 'plain',
user_name: 'lapan40@yandex.ru',
password: 'zeusxlogan1715',
enable_starttls_auto: true
}
