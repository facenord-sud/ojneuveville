ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "damp-lowlands-7685.herokuapp.com",  
  :user_name            => "facenord.sud@gmail.com",  
  :password             => "montagne.12",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}

ActionMailer::Base.default_url_options[:host] = "0.0.0.0:3000"