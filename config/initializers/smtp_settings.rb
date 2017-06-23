ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => "587",
    :domain => "gmail.com",
    :user_name => "jvtalan1@up.edu.ph",
    :password => "jvtalan1123456",
    :authentication => "plain",
    :enable_starttls_auto => true
}