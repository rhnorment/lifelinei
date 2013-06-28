ActionMailer::Base.smtp_settings = {
    :address => 'smtpout.secureserver.net',
    :port => 80,
    :domain => 'lifelinei.com',
    :user_name => 'support@lifelinei.com',
    :password => 'soccer',
    :authentication => 'plain',
    :enable_starttls_auto => true
}
ActionMailer::Base.default_url_options[:host] = 'lifelinei.com'
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?