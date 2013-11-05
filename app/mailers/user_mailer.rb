# encoding: utf-8

class UserMailer < ActionMailer::Base
  
  def registration_confirmation(user)
  	@user = user
    mail(
    :to => user.email,
    :subject => "Bienvenue sur le site de l'Oj de La Neuveville",
    :from => "Oj de La Neuveville <facenord.sud@gmail.com>"
    )
    
  end

  def registration_admin(user)
  	@user = user
    admin = User.all.reject {|a_user| a_user.email unless a_user.has_roles? 'super-admin'}
    mail(
    :to =>  admin.map(&:email),
    :subject => "Un nouveau membre s'est inscrit à l'Oj de la Neuveville",
    :from => "Oj de La Neuveville <facenord.sud@gmail.com>"
    )
  end
end
