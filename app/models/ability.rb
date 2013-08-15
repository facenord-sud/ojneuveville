# -*- encoding : utf-8 -*-
class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :create, User
      can :index, Event
      can :programm, Event
    else
      if user.roles_are_empty?
        can :index, Event
        can :programm, Event
      end
      if user.has_roles? 'super-admin'
        can :manage, :all
      end
      if user.has_roles? 'ojien'
         ojien user
      end
      if user.has_roles? 'admin'
        can :dashboard
        can :access, :rails_admin
        can :manage, User
        ojien user
      end
    end
  end

  def ojien user
    can :manage, User, id: user.id
    can :show, User
    can :programm, Event
    can :read, Event
    can :signup, Event
    can :signout, Event
    can :signin, Event
  end
end
