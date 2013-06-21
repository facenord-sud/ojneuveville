# -*- encoding : utf-8 -*-
class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :create, User
      return
    elsif user.roles.empty?
      if User.count == 1
        can :manage, :all
      end
      can :update, User
      can :read, User
    else
      user.roles.each do |role|
        role.permissions.each do |permission|
          if permission.subject_class.nil?
            can permission.action.to_sym
            return
          end
          if !permission.un_constantize
            sec_param = permission.subject_class.constantize
          else
            sec_param = permission.subject_class.to_sym
          end
          if permission.subject_id.nil?
            can permission.action.to_sym, sec_param
          elsif permission.all
            can permission.action.to_sym, :all
          elsif !permission.more.nil?
            can permission.action.to_sym, sec_param
          else
            can permission.action.to_sym, sec_param, :id => permission.subject_id
          end
        end
      end
    end
  end
end
