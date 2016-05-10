ActionMailer::Base.smtp_settings = {
  address:              "smtp.gmail.com",
  port:                 "587",
  enable_starttls_auto: true,
  authentication:       :plain,
  user_name:            ENV["mistermonstermailer"],
  password:             ENV["m0nstermailer"]
}
