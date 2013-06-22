# encoding: utf-8

namespace :db do
  desc "Créée les permissions de bases et les rôles au bon fonctionnement du site"
  task perms:  :environment do
  	make_permissions
  	make_roles
  end
end

def make_permissions
	@show_perms = Permission.create!(
		:action "read",
		:description "Permet de voir les permissions dans le tablea de bord",
		:name "voir les permissions",
		:subject_class "Permission"
		)
	@manage_roles = Permission.create!(
		:action "manage",
		:description "Gestion des rôles dans le tablea de bord",
		:name "gérer les rôles",
		:subject_class "Role"
		)
	@manage_users = Permission.create!(
		:action "manage",
		:description "Gestion des utilisateurs dans le tablea de bord",
		:name "gérer les utilisateurs",
		:subject_class "User"
		)
	@access_dashboard = Permission.create!(
		:action "dashboard",
		:description "L'accès au tableau de bord",
		:name "accéder au tableau de bord",
		)
	@access_backend = Permission.create!(
		:action "access",
		:description "Permet d'accéder au back-end",
		:name "accès au back-end",
		:subject_class "rails_admin",
		:un_constantize true
		)
	@show_user = Permission.create!(
		:action "read",
		:description "Permet de voir les utilisateurs",
		:name "voir les utilisateurs",
		:subject_class "User"
		)
	@all = Permission.create!(
		:action "manage",
		:description "Toutes les actions sont possibles",
		:name "toutes les actions",
		:all true
		)
end

def make_roles
	super_admin = Role.new(
		:name "Super administrateur", 
		:description "Le super administrateur fait tout ce qu'il veut")
	super_admin.permissions = @all
	super_admin.save
	admin = Role.new(
		:name "Administrateur", 
		:description "L'administrateur s'occupe de la gestion du site"
		)
	admin.permissions.push(@show_perms)
	admin.permissions.push(@manage_roles)
	admin.permissions.push(@manage_users)
	admin.permissions.push(@access_backend)
	admin.permissions.push(@access_backend)
	admin.save
	ojien = Role.new(
		:name "Ojien(e)", 
		:description "Un(e) Ojien(e) déchainé(e)!!!"
		)
	ojien.permissions =  @show_user
	ojien.save
end
