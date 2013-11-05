ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "oj-laneuveville.herokuapp.com",
  :user_name            => "facenord.sud@gmail.com",  
  :password             => "montagne.12",  
  :authentication       => "plain",  
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "oj-laneuveville.herokuapp.com"